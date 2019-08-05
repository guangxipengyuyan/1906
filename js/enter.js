$(function () {
    //扫码登录和账号登录切换
    $('#user_login .cont_ewm').on('click', function () {
        $('#user_login').css('display', 'none');
        $('#ewb_login').css('display', 'block');
    });
    $('#ewb_login .ewb_icon').on('click', function () {
        $('#user_login').css('display', 'block');
        $('#ewb_login').css('display', 'none');
    });



    var isok = false;
    $('#user_name').on('blur', function () {
        var user = $.trim($('#user_name').val());
        if (user) {
            //非空
            if (Zz.tel(user)) {
                $('#user_ts').css('display', 'none');
            } else {
                $('#user_ts').css('display', 'block').children().eq(1).css('color', 'red').html('您输入的账户名不存在或密码不匹配，请从新输入！');
            }
            // console.log(3)
        } else {
            // console.log(123, $(this))
            $('#user_ts').css('display', 'block').children().eq(1).css('color', 'red');
            // $('.input_promp').css('display', 'none');
        }
    });
    $('#user_password').on('blur', function () {
        var psw = $.trim($('#user_password').val());
        if (psw) {
            //非空判断
            if (Zz.name(psw)) {
                $('#psw_ts').css('display', 'none');
            } else {
                $('#psw_ts').css('display', 'block').children().eq(1).css('color', 'red').html('密码长度应在6 - 20位之间！');
            }
        } else {
            $('#psw_ts').css('display', 'block').children().eq(1).css('color', 'red');
        }
    });
    $('#login_btn').on('click', function () {
        var user = $.trim($('#user_name').val());
        var psw = $.trim($('#user_password').val());
        if (user && psw) {
            console.log(123);
            //非空判断
            $.ajax({
                type: "post",
                url: "../api/login.php",
                async: true,
                data: {
                    username: user,
                    password: psw
                },
                success: function (str) {
                    // console.log(str);
                    if (str == 'yes') {
                        $('#user_ts').css('display', 'none');
                        $('#psw_ts').css('display', 'none');
                        var storage = window.localStorage;
                        storage.user = user;
                        storage.psw = psw;
                        alert('登录成功');
                        location.href = `../shouye.html?`;
                        isok = true;
                    } else {
                        // console.log(123);
                        // $('#user_ts').css('display', 'block').children().eq(1).css('color', 'red').html('您输入的账户名不存在或密码不匹配，请从新输入！');
                        $('#psw_ts').css('display', 'block').children().eq(1).css('color', 'red').html('您输入的账户名不存在或密码不匹配，请从新输入！');
                        isok = false;
                    }
                }
            });
        } else {
            alert('请补充完整信息');
        }
    });


});