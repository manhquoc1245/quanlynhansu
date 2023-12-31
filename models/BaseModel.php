<?php
require_once ('models/ModelInterface.php');

abstract class BaseModel implements ModelInterface {
    protected $table;

    public function __construct()
    {
        $this->db = DB::getInstance();
    }

    public function get($fields, $condition = [])
    {
        $orderBy = '';
        $pagging = '';
        $name = isset($condition['name']) ? $condition['name'] : '';
        $email = isset($condition['email']) ? $condition['email'] : '';
        $numPerPage = NUM_PER_PAGE;
        if(isset($condition['page'])){
            $offset = ((int)$condition['page'] - 1) * $numPerPage;
        }
        if(isset($offset)){
            $pagging = "LIMIT {$offset}, {$numPerPage}";
        }
        if(isset($condition['order']) && isset($condition['sort'])){
            $orderBy = "ORDER BY {$condition['order']} {$condition['sort']}";
        }
        $where = "WHERE email LIKE :email AND del_flag =:del_flag
         OR name LIKE :name AND del_flag =:del_flag {$orderBy} {$pagging}";
        $fields = implode(', ', $fields);
        $sth = $this->db->prepare("SELECT $fields
        FROM $this->table {$where}");
        $sth->bindValue(':email', "%$email%");
        $sth->bindValue(':name', "%$name%");
        $sth->bindValue(':del_flag', DEL_FALSE);
        if($sth->execute()){
            return $sth->fetchAll(PDO::FETCH_ASSOC);
        }
        return false;
    }

    public function getById($fields, $id)
    {
        $where = "WHERE id = :id AND del_flag = :del_cond";
        $fields = implode(', ', $fields);
        $sth = $this->db->prepare(
            "SELECT $fields
            FROM $this->table
            {$where}"
        );
        $sth->bindValue('id', $id);
        $sth->bindValue('del_cond', DEL_FALSE);
        if($sth->execute()){
            return $sth->fetch(PDO::FETCH_ASSOC);
        }
        return false;
    }

    public function update($data, $id)
    {
        $ins = array(
            'upd_id' => isset($_SESSION['admin']['admin_id']) ? $_SESSION['admin']['admin_id'] : 9999,
            'upd_datetime' => date(DATE_FORMAT)
        );
        if(!in_array('upd_id', $data) && !in_array('upd_datetime', $data)){
            $data = array_merge($data, $ins);
        }
        $key = array_keys($data);
        $setValue = "";
        foreach ($key as $field){
            $setValue = $setValue."$field = :$field, ";
        }
        $setValue = substr($setValue, 0, -2);
        $sth = $this->db->prepare("UPDATE $this->table SET {$setValue} WHERE id = :id");
        $sth->bindValue(':id', $id);
        foreach ($data as $field => $value){
            $sth->bindValue(":$field", $value);
        }
        if($sth->execute()){
            return true;
        }
        return false;
    }

    public function delete($id){
        $set_cond = "SET del_flag =:del_flag";
        $where = "WHERE id = :id";
        $sth = $this->db->prepare("UPDATE $this->table $set_cond $where");
        $sth->bindValue(':id', $id);
        $sth->bindValue(':del_flag', DEL_TRUE);
        if($sth->execute()){
            return true;
        }
        return false;
    }

    public function create($data){
        $ins = [
            'ins_id' => isset($_SESSION['admin']['admin_id']) ? $_SESSION['admin']['admin_id'] : 9999,
            'ins_datetime' => date(DATE_FORMAT)
        ];
        if(!in_array('ins_id', $data) && !in_array('ins_datetime', $data)){
            $data = array_merge($data, $ins);
        }
        $key = array_keys($data);
        $fields = implode(', ', $key);
        $values = implode(', :', $key);
        $sth = $this->db->prepare("INSERT INTO $this->table ({$fields})
                    VALUES (:{$values})");
        foreach ($data as $field => $value){
            $sth->bindValue(":$field", $value);
        }

        if($sth->execute()){
            return true;
        }
        return false;
    }

    public function checkLogin($email, $password){
        $where = "WHERE email = :email AND password = :password AND del_flag =:del_flag";
        $sth = $this->db->prepare("SELECT id, email, role_type
        FROM $this->table
        {$where}");
        $sth->bindValue('email', $email);
        $sth->bindValue(':password', $password);
        $sth->bindValue(':del_flag', DEL_FALSE);
        $sth->execute();
        $check = $sth->rowCount();
        return ($check > 0) ? $sth->fetch(PDO::FETCH_OBJ) : false;
    }

    public function checkMailExisted($email){
        $where = "WHERE email = :email AND del_flag =:del_flag";
        $sth = $this->db->prepare(
            "SELECT email
            FROM $this->table {$where}
            ");
        $sth->bindParam('email', $email);
        $sth->bindValue('del_flag', DEL_FALSE);
        $sth->execute();
        $check = $sth->rowCount();
        return ($check > 0) ? true : false;
    }
}