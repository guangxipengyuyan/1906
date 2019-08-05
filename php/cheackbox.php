<?php
    include 'sql.php';
    $user = isset($_POST["username"])?$_POST["username"]:'13922952296';
    $sql = "SELECT * FROM user_inf WHERE user='$user'";
    $res = $conn->query($sql);
    if($res->num_rows){
        echo 'no';
    }else{
        echo 'yes';
    }
    $res->close();
    $conn->close();
?>