<?php
//创建数据连口
    header('content-type:text/html;charset=utf-8');
    $servername = "localhost";
    $username = "root";
    $password = "root";
    $dbname = "h51906";
    $conn = new MYSQLI($servername,$username,$password, $dbname);
    // if($conn->connect_error){
    //     die("连接失败:" . $conn->connect_error);
    // }
    // $conn->set_charset('utf8');
    // echo"连接成功";
    // $sql = "SELECT * FROM goodelist;";
    // $res = $conn->query($sql);
    // $content = $res -> fetch_all(MYSQLI_ASSOC);
    // var_dump($content);
    // echo json_encode($content,JSON_UNESCAPED_UNICODE);
    if($conn->connect_error){
        die('出错的原因是:'.$conn->connect_error);
    }
?>