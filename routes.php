
<?php
session_start();
ob_start();

date_default_timezone_set("Asia/Ho_Chi_Minh");
$controllers = [
    'admin' => ['search', 'login', 'logout', 'create', 'addAvatar',
        'search', 'edit', 'delete', 'createUser', 'searchUser',
        'editUser', 'deleteUser'],
    'pages' => ['home', 'error'],
    'user' => ['index', 'login', 'logout', 'profile']
];

if (!array_key_exists($controller, $controllers) || !in_array($action, $controllers[$controller])) {
    $controller = 'pages';
    $action = 'error';
}

if($controller == 'admin'){
    if(!isset($_SESSION['admin']['is_admin_login']) && $action != 'login'){
        redirect_to('/management/login');
    }
}
//
if($controller == 'user'){
    if(!isset($_SESSION['user']['is_user_login']) && $action != 'login'){
        redirect_to('/login');
    }
}

include_once('controllers/' . $controller . 'Controller.php');
$klass = str_replace('_', '', ucwords($controller, '_')) . 'Controller';
$controller = new $klass;
$controller->$action();




