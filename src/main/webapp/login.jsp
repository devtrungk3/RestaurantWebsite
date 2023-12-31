<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login</title>
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" type="text/css" href="css/login.css?version=1">
</head>
<body>
	<div class="container" id="container">
            <div class="form-container sign-up-container">
                <form action="signup" method="post">
                    <h1>Create Account</h1>
                    <div class="social-container">
                        <a href="#" class="social"
                            ><i class="fab fa-facebook-f"></i
                        ></a>
                        <a href="#" class="social"
                            ><i class="fab fa-google-plus-g"></i
                        ></a>
                        <a href="#" class="social"
                            ><i class="fab fa-linkedin-in"></i
                        ></a>
                    </div>
                    <span>or use your email for registration</span>
                    <% if (request.getAttribute("errorSignUp") != null && request.getAttribute("errorSignUp").toString().length() > 0) { %>
                    <div class="error">${requestScope.errorSignUp}</div>
                    <% } else %><%="" %>
                    <div class="infield">
                        <input type="text" placeholder="Username" name="username" value="${requestScope.username}" required/>
                        <label></label>
                    </div>
                    <div class="infield">
                        <input type="email" placeholder="Email" name="email" value="${requestScope.email}" required/>
                        <label></label>
                    </div>
                    <div class="infield">
                        <input type="password" placeholder="Password" name="password" required/>
                        <label></label>
                    </div>
                    <div class="infield">
                        <input type="password" placeholder="Confirm password" name="confirm-password" required/>
                        <label></label>
                    </div>
                    <a href="index.jsp" class="forgot">Return to home</a>
                    <button>Sign Up</button>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="login" method="post">
                    <h1>Sign in</h1>
                    <div class="social-container">
                        <a href="#" class="social"
                            ><i class="fab fa-facebook-f"></i
                        ></a>
                        <a href="#" class="social"
                            ><i class="fab fa-google-plus-g"></i
                        ></a>
                        <a href="#" class="social"
                            ><i class="fab fa-linkedin-in"></i
                        ></a>
                    </div>
                    <span>or use your account</span>
                    <% if (request.getAttribute("errorLogin") != null && request.getAttribute("errorLogin").toString().length() > 0) { %>
                    <div class="error">${requestScope.errorLogin}</div>
                    <% } else %><%="" %>
                    <div class="infield">
                        <input
                            type="email"
                            placeholder="Email"
                            name="email"
                            required
                        />
                        <label></label>
                    </div>
                    <div class="infield">
                        <input
                            type="password"
                            placeholder="Password"
                            name="password"
                            required
                        />
                        <label></label>
                    </div>
                    <a href="index.jsp" class="forgot">Return to home</a>
                    <button type="submit">Sign In</button>
                </form>
            </div>
            <div class="overlay-container" id="overlayCon">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>
                            To keep connected with us please login with your
                            personal info
                        </p>
                        <button>Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>
                            Enter your personal details and start journey with
                            us
                        </p>
                        <button>Sign Up</button>
                    </div>
                </div>
                <button id="overlayBtn"></button>
            </div>
        </div>

        <!-- js code -->
        <script>
            const container = document.getElementById("container");
            const overlayCon = document.getElementById("overlayCon");
            const overlayBtn = document.getElementById("overlayBtn");
            
            var signupOpened = <%= request.getAttribute("signupOpened")%>;
            
            if (signupOpened) container.classList.toggle("right-panel-active");

            overlayBtn.addEventListener("click", () => {
                container.classList.toggle("right-panel-active");

                overlayBtn.classList.remove("btnScaled");
                window.requestAnimationFrame(() => {
                    overlayBtn.classList.add("btnScaled");
                });
            });
        </script>
</body>
</html>