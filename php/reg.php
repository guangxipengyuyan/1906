<?php
    include 'sql.php';
    $user = isset($_POST['username'])? $_POST['username'] : '';
    $psw = isset($_POST['password'])? $_POST['password']: '';
    $sql = "INSERT INTO user_inf (user,psw) VALUES ('$user','$psw')";

    $res =$conn->query($sql);

    if($res){
        echo 'yes';
    }else{
        echo 'no';
    }

    $res->close();
    $conn->clone();
?>