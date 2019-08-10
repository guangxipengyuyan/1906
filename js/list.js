$(function(){
    $.ajax({
        type: "post",
        url: "../phnp/pageNum.php",
        data: {
            'page':ipage,
            'num':iunm
        },
        success: function (response) {
            
        }
    });
});