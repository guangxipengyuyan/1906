<?php
    include 'sql.php';
    $user = isset($_POST['username'])? $_POST['username'] : '';
    $psw = isset($_POST['password'])? $_POST['password']: '';
    $sql = "SELECT user,psw FROM user_inf;";

    $res =$conn->query($sql);

    if($res){
        echo 'yes';
    }else{
        echo 'no';
    }

    $res->close();
    $conn->close();
?>