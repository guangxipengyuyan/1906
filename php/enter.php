<?php
    include 'sql.php';

    $user = isset($_POST['username']) ? $_POST['username'] : '';
    $psw = isset($_POST['password']) ? $_POST['password'] : '';
    $sql = "SELECT user,psw FROM user_inf;";
    // $sql = "SELECT * FROM user_inf WHERE (user,psw)=('$user','$psw');";
    $res = $conn->query($sql);
    // print_r($res);/
    // var_dump($res);
    //判断用户名和密码是否正确
    if ($res->num_rows) {
        //存在可以登录
        echo 'yes';
    } else {
        echo 'no';
    }
    $res->close();
    $conn->close();
?>