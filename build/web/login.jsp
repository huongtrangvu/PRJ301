<%-- 
    Document   : login
    Created on : Feb 28, 2024, 10:40:40 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/logincss.css">
    </head>
    <body>
        <br>
<br>
    <div class="cont">
        <form action="login" method="post" class="form sign-in">
        
            <h2>Welcome</h2>
            <label>
                <p class="text-danger" style="color: red">${mess}</p>
            </label>
            <label>
                <span>Email</span>
                <input type="email" name="email"/>
            </label>
            <label>
                <span>Password</span>
                <input type="password" name="pass"/>
            </label>
            <p class="forgot-pass">Forgot password?</p>
            <button class="submit">Sign In</button>
         
      
        </form>
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                 
                    <h3>Don't have an account? Please Sign up!<h3>
                </div>
                <div class="img__text m--in">
                
                    <h3>If you already has an account, just sign in.<h3>
                </div>
                <div class="img__btn">
                    <span class="m--up">Sign Up</span>
                    <span class="m--in">Sign In</span>
                </div>
            </div>
            <form class="form sign-up" action="signup" method="post">
            
                <h2>Create your Account</h2>
                <label>
                    <span>Name</span>
                    <input type="text" />
                </label>
                <label>
                    <span>Email</span>
                    <input type="email" name="mail"/>
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="pass"/>
                </label>
                <label>
                    <span>Repeat Password</span>
                    <input type="password" name="repass"/>
                </label>
                <button class="submit">Sign Up</button>
                
           
            </form>
        </div>
    </div>

    <script>
        document.querySelector('.img__btn').addEventListener('click', function() {
            document.querySelector('.cont').classList.toggle('s--signup');
        });
    </script>
    </body>
</html>
