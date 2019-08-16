<?php
/*
    点击加入购物车，先查询订单表，然后更新订单表
        get:
            uid:商品id
            num：商品数量
        返回：
            订单表的所有数量
 */

    //加入购物车，把数据写入订单表
    include 'sql.php';

    $num=isset($_POST['num']) ? $_POST['num'] : '';
    $uid=isset($_POST['uid']) ? $_POST['uid'] : '';

    //查询订单表是否有该uid商品
    $sql="SELECT num FROM kad_cart WHERE uid='$uid'";
    $res= $conn->query($sql);
    // print_r($res);
    // if($res->num_rows>0){
    //     echo '1';
    // }else{
    //     echo '0';
    // }
    $res2 = null;
    // print_r($res);
    if($res->num_rows>0){
        $data = $res->fetch_all(MYSQLI_ASSOC);
        $gnum = $data[0]['num'];
        // $aa = $data[0]['price']; //原单价
        $nowNum = $gnum+$num; //原本数量加上用户传过来的数量
        
        $sql2="UPDATE kad_cart SET num=$nowNum WHERE uid=$uid";
        $res2=$conn->query($sql2);
        // echo 'into';
    }else{
        $sql3="SELECT * FROM  kad WHERE uid=$uid"; //总表查询
        $res3=$conn->query($sql3);
        // print_r($res3); //>1
        if($res3->num_rows>0){
            $data3= $res3 -> fetch_all(MYSQLI_ASSOC);
            $gimg1 = $data3[0]['images'];
            $gname = $data3[0]['name'];
            $oprice = $data3[0]['oldPrice'];
            $aa = $data3[0]['price'];//原单价
            // print_r($aa,$num);
            // $end = $aa * $gnum;
            $yhprice = ($oprice-$aa);
            // $newprice = ($gprice*$num);
            // $oldprice = ($oprice*$num);
            // $newyhprice = ($oldprice-$newprice);

            $sql4="INSERT INTO kad_cart(uid,images,name,oldPrice,num,discounts,danjia) VALUES ('$uid','$gimg1','$gname','$oprice','$num','$yhprice','$aa')";
            $res2=$conn->query($sql4);
        }
    }
    if($res2){
        echo 1;
    }else{
        echo 0;
    }
    

?>