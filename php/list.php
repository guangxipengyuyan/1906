<?php

    include 'sql.php';
    //数据库查询表
    $sql = "SELECT * FROM goodlist";
    //执行sql语句
    $res = $conn->query($sql);
    
    $arr = $res->fetch_all(MYSQLI_ASSOC);

	echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    
    // print_r($arr);
    // var_dump($arr);

?>