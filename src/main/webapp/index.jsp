<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<html>
<body>
<h2>Hello World!</h2>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>


<input type="button" id="admin-login" value="管理员登录">
<span id="show-msg"></span>

<br>
<br>

springmvc上传文件
<form name="form1" action="/manage/product/upload.do" method="post" enctype="multipart/form-data">
    <input type="file" name="upload_file"/>
    <input type="submit" value="springmvc上传文件"/>
</form>


富文本图片上传文件
<form name="form2" action="/manage/product/richtext_img_upload.do" method="post" enctype="multipart/form-data">
    <input type="file" name="upload_file"/>
    <input type="submit" value="富文本图片上传文件"/>
</form>

</body>
<script>
    $("#admin-login").click(function () {
        $.ajax({
            type: "post",
            data: {
                username: "chencong",
                password: "123456"
            },
            url: "/manage/user/login.do",
            dataType: "json",
            success: function (res) {
                $("#show-msg").html("登录成功")
            },
            error: function (error) {
                $("#show-msg").html("登录成功")
            }
        });
    });
</script>
</html>
