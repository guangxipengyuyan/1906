$(function () {



    var isok = false;
    $('#user_phone').on('blur', function () {
        var user = $.trim($('#user_phone').val());
        if (user) {
            //非空
            if (Zz.tel(user)) {
                $.ajax({
                    type: "post",
                    url: "../php/cheackbox.php",
                    async: true,
                    data: 'username=' + user,
                    success: function (str) {
                        console.log(str);
                        if (str == 'yes') {
                            $('.input_promp').css('display', 'block');
                            $('#bind_pan').css('display', 'none');
                            isok = true;
                        } else {
                            $('#bind_pan').css('display', 'block').children().eq(1).css('color', 'red').html('该手机号已存在,您可以直接使用该号码进行' + '<a style="color: #006ee7;" href="../html/enter.html"> 立即登录</a>');
                            $('.input_promp').css('display', 'none');
                            isok = false;
                        }

                    }
                });
            } else {
                $('#user_phone').parent().next().css('display', 'block').children().eq(1).css('color', 'red').html('手机号码长度不正确');
                $('.input_promp').css('display', 'none');
            }
            // console.log(3)
        } else {
            // console.log(123, $(this))
            $('#user_phone').parent().next().css('display', 'block').children().css('color', 'red');
            $('.input_promp').css('display', 'none');
        }
    });
    $('#password').on('blur', function () {
        var psw = $.trim($('#password').val());
        if (psw) {
            //非空判断
            if (Zz.name(psw)) {
                $('#bind_psw').css('display', 'none');
            } else {
                $('#bind_psw').css('display', 'block').children().eq(1).css('color', 'red').html('密码必须以字母开头，6位以上任意数');
            }
        } else {
            $('#bind_psw').css('display', 'block').children().eq(1).css('color', 'red')
        }
    });
    $("#getCode").on('click', function () {
        cold();
    });
    function cold() {
        var str = 'qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890'
        var ran = ''
        for (var i = 1; i <= 4; i++) {
            var num = parseInt(Math.random() * str.length)
            ran += str[num]
        }
        $("#getCode").html(ran);
        // console.log(ran)

    };

    $('#user_verification').on('blur', function () {
        var yzm = $.trim($('#user_verification').val());
        if (yzm) {
            //非空判断
            if (yzm.toLowerCase() == $("#getCode").html().toLowerCase()) {
                $('#bind_yzm').css('display', 'none');
                isok = true;
            } else {
                $('#bind_yzm').css('display', 'block').children().eq(1).css('color', 'red').html('验证码输入错误');
                cold();
                isok = false;
            }
        } else {
            $('#bind_yzm').css('display', 'block').children().eq(1).css('color', 'red');
            isok = false;
        }
    });
    $('#tologin').on('click', function () {
        var user = $.trim($('#user_phone').val());
        var psw = $.trim($('#password').val());
        var yzm = $.trim($('#user_verification').val());
        if (isok) {
            if (yzm) {
                $.ajax({
                    type: "post",
                    url: "../php/reg.php",
                    async: true,
                    data: {
                        username: user,
                        password: psw
                    },
                    success: function (str) {
                        console.log(str);
                        var storage = window.localStorage;
                        storage.user = user;
                        storage.psw = psw;
                        alert('注册成功，跳转到登录页');
                        location.href = `../html/enter.html?`;
                    }
                });
            } else {
                alert('请输入验证码');
            }


        } else {
            alert('验证码输入错误');
        }
    });



    //     if (x.val()) {
    // //feik
    //         if (asd.val() == $("#getCode").html()) {
    //             true
    //         } else if () {

    //         }
    //     }else{

    //     }







    // function getEle(selector) {
    //     return document.querySelector(selector);
    // }
    // //二、获取到需要用到的DOM元素
    // var box = getEle("#box"),//容器
    //     bgColor = getEle(".bgColor"),//背景色
    //     txt = getEle(".txt"),//文本
    //     slider = getEle(".slider"),//滑块
    //     icon = getEle(".slider>i"),
    //     successMoveDistance = box.offsetWidth - slider.offsetWidth,//解锁需要滑动的距离
    //     downX,//用于存放鼠标按下时的位置
    //     isSuccess = false;//是否解锁成功的标志，默认不成功

    // //三、给滑块添加鼠标按下事件
    // slider.onmousedown = mousedownHandler;

    // //3.1鼠标按下事件的方法实现
    // function mousedownHandler(e) {
    //     bgColor.style.transition = "";
    //     slider.style.transition = "";
    //     var e = e || window.event || e.which;
    //     downX = e.clientX;
    //     //在鼠标按下时，分别给鼠标添加移动和松开事件
    //     document.onmousemove = mousemoveHandler;
    //     document.onmouseup = mouseupHandler;
    // };

    // //四、定义一个获取鼠标当前需要移动多少距离的方法
    // function getOffsetX(offset, min, max) {
    //     if (offset < min) {
    //         offset = min;
    //     } else if (offset > max) {
    //         offset = max;
    //     }
    //     return offset;
    // }

    // //3.1.1鼠标移动事件的方法实现
    // function mousemoveHandler(e) {
    //     var e = e || window.event || e.which;
    //     var moveX = e.clientX;
    //     var offsetX = getOffsetX(moveX - downX, 0, successMoveDistance);
    //     bgColor.style.width = offsetX + "px";
    //     slider.style.left = offsetX + "px";

    //     if (offsetX == successMoveDistance) {
    //         success();
    //     }
    //     //如果不设置滑块滑动时会出现问题（目前还不知道为什么）
    //     e.preventDefault();
    // };

    // //3.1.2鼠标松开事件的方法实现
    // function mouseupHandler(e) {
    //     if (!isSuccess) {
    //         bgColor.style.width = 0 + "px";
    //         slider.style.left = 0 + "px";
    //         bgColor.style.transition = "width 0.8s linear";
    //         slider.style.transition = "left 0.8s linear";
    //     }
    //     document.onmousemove = null;
    //     document.onmouseup = null;
    // };

    // //五、定义一个滑块解锁成功的方法
    // function success() {
    //     isSuccess = true;
    //     txt.innerHTML = "解锁成功";
    //     bgColor.style.backgroundColor = "lightgreen";
    //     slider.className = "slider active";
    //     icon.className = "iconfont icon-xuanzhong";
    //     //滑动成功时，移除鼠标按下事件和鼠标移动事件
    //     slider.onmousedown = null;
    //     document.onmousemove = null;
    // };


    var isok = true;
    $('#text_show').on('click', function () {
        if (isok) {
            $('#isShowPwd').css('background-position', '-168px 0');
            $('#password').attr('type', 'text');
            isok = !isok;
        } else {
            $('#isShowPwd').css('background-position', '-131px 0');
            $('#password').attr('type', 'password');
            isok = !isok;
        }
    });





});




/* 
* @Author: Marte
* @Date: 2019-03-19 22:24:29
* @Last Modified by: Marte
* @Last Modified time: 2019-03-20 14:05:57
*/

// $(function () {
//     var isok = true
//     //验证 
//     cold();
//     changeCold.onclick = cold;

//     // res.onclick=cold;
//     $("#num").on("blur", function () {
//         if ($("#num").val().toLowerCase() == $("#sedCold").html().toLowerCase()) {
//             isok = true;
//             $(".none").css("display", "block")
//             $(".none").html("验证码正确");
//         } else if ($("#num").val() == "") {
//             isok = false;
//             $(".none").css("display", "block")
//             $(".none").html("请输入验证码");
//         }
//         else if ($("#num").val() != $("#sedCold").html().toLowerCase()) {
//             cold();
//             isok = false;
//             $(".none").css("display", "block")
//             $(".none").html("验证码有误");

//         }
//     })


//     //手机号码
//     //* 正则.test(字符串) 如果字符串符合这个规则，则返回真
//     //str = tex.value.trim();
//     // if(reg.test(str)) {//正则实现表单验
//     // if(str) {

//     $("#tel").on("blur", function () {

//         var reg = /^1[3456789]\d{9}$/;
//         var content = $("#tel").val();

//         // $.trim(content) 
//         // var tell=$.trim(content) //jq去除前后空格的写法
//         if (content) {
//             if (reg.test($("#tel").val())) {
//                 //查询数据库是否有这一个电话号码
//                 // console.log(123)
//                 var content = $("#tel").val();
//                 $.ajax({
//                     type: "post",
//                     url: "../api/signIn.php",
//                     async: true,
//                     data: 'tel=' + $("#tel").val(),
//                     success: function (str) {
//                         console.log(str)
//                         if (str == 'yes') {
//                             $(".none2").html("该用户可以注册");
//                             isok = true; //开关，用于控制是否能注册
//                         } else {
//                             $(".none2").html("该手机已存在");
//                             // inf.style.color = 'red';
//                             isok = false; //开关，用于控制是否能注册
//                         };
//                     }

//                 });
//             } else {
//                 $(".none2").html("手机号码输入不正确")
//             };
//         } else {
//             $(".none2").html("手机不能为空")
//         };

//     });

//     //设置密码 
//     $("#pad1").on("blur", function () {
//         var reg = /^[0-9a-zA-Z_]{6,15}$/;
//         if ($("#pad1").val()) {

//             if (reg.test($("#pad1").val())) {
//                 $(".none4").html("ok");
//                 isok = true;
//             } else {
//                 isok = false;
//                 $(".none4").css("display", "block")
//                 $(".none4").html("密码不规范/过于短");
//             }
//         } else {
//             $(".none4").css("display", "block")
//             $(".none4").html("密码不能为空");
//             isok = false

//         };
//     });

//     //确认密码
//     $("#pad2").on("blur", function () {
//         if ($("#pad2").val() == $("#pad1").val()) {
//             $(".none").css("display", "block")
//             $(".none5").html("ok");
//             isok = true;
//         } else {
//             $(".none5").css("display", "block")
//             $(".none5").html("密码不相符");

//             function cold() {
//                 var str = 'qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890'
//                 var ran = ''
//                 for (var i = 1; i <= 4; i++) {
//                     var num = parseInt(Math.random() * str.length)
//                     ran += str[num]

//                 }
//                 $("#sedCold").html(ran);
//                 // console.log(ran)

//             };
