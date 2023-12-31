<!DOCTYPE html>
<html>
<head>
    <title>Account manager</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="<?=BASE_URL?>">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="public/login.css">
    <script src="assets/js/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="assets/js/customs.js" type="text/javascript"></script>
    <script src="assets/js/app.js"></script>

</head>

<body>
<div id="site">
    <div id="container">
        <div id="header-wp">
            <div class="wp-inner clearfix">
                <a href="/management" title="" id="logo" class="fl-left">ACCOUNT MANAGEMENT</a>
                <ul id="main-menu" class="fl-left">
                    <?php if($this->isSuperAdmin()){
                        ?>
                        <li>
                            <a <?php if(isset($_SESSION['current_page']) && $_SESSION['current_page'] == 'search') echo "class='active'";?> href="management/search" title="">Admin Management</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="management/search" title="">Search</a>
                                </li>
                                <li>
                                    <a href="management/create" title="">Create</a>
                                </li>
                            </ul>
                        </li>
                    <?php
                    }?>
                    <li>
                        <a <?php if(isset($_SESSION['current_page']) && $_SESSION['current_page'] == 'search_user') echo "class='active'";?> href="management/search-user" title="">User Management</a>
                        <ul class="sub-menu">
                            <li>
                                <a href="management/search-user" title="">Search</a>
                            </li>
                            <li>
                                <a href="management/create-user" title="">Create</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="management/logout" title="">Log out</a>
                    </li>
                </ul>

            </div>
        </div>