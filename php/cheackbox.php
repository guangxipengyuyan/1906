<?php
    include 'sql.php';
    $user = isset($_POST["username"])?$_POST["username"]:'15207702636';
    $sql = "SELECT user,psw FROM user_inf;";
    $res = $conn->query($sql);
    if($res->num_rows){
        echo 'yes';
    }else{
        echo 'no';
    }
    $res->close();
    $conn->close();
?>