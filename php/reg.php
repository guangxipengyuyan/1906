<?php
    include 'sql.php';
    $user = isset($_POST['username']) ? $_POST['username'] : '13922952296';
    // $psw = isset($_POST['password']) ? $_POST['password'] : '';

    $sql = "SELECT * FROM user_inf WHERE user='$user'";
    
    $res =$conn->query($sql);
    
    // print_r($res);
    //判断用户名和密码是否正确
    if($res->num_rows){
        //存在
        echo 'YES';
    }else{
        echo 'NO';
    }
    $res->close();
    $conn->close();
?>