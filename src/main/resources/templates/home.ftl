<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Taiping Construction</title>
    <style>
        body {
            background-color: #f1f1f1;
        }

        .container {
            vertical-align: middle;
            max-width: 45em;
            margin: 0 auto;
            padding: 3em;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 0.8em;
            box-shadow: 0 0.2em 0.4em rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #007bff;
            font-size: 1.8em;
            margin-bottom: 1em;
        }

        .logo {
            width: 6em;
            margin: 1.5em auto;
        }

        .form-group {
            margin-bottom: 1.5em;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5em;
            font-size: 1.2em;
        }

        .form-group input {
            width: 90%;
            padding: 0.6em;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 0.4em;
        }

        .btn-login {
            width: 100%;
            padding: 1em 2em;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 0.4em;
            cursor: pointer;
            font-size: 1.2em;
        }


    </style>
</head>
<body>
<div class="container">
    <h1>太平建筑</h1>
    <form action="/login" method="post">
        <div class="form-group">
            <label for="username">用户名</label>
            <input type="text" id="username" name="username">
        </div>
        <div class="form-group">
            <label for="password">密码</label>
            <input type="password" id="password" name="password">
        </div>
        <label name="loginMsg">
            <#if loginMsg?has_content>
                <p style="color: red;">${loginMsg}</p>
            <#else>
            </#if>
        </label>
        <button type="submit" class="btn-login">登录</button>
    </form>
</div>
</body>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var input = document.getElementById("username");
        input.focus();
    });

    window.addEventListener("orientationchange", function() {
        if (window.orientation === 90 || window.orientation === -90) {
            // 进行横屏样式调整
        } else {
            // 进行竖屏样式调整
        }
    });
</script>
</html>
