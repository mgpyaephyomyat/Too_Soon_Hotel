<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <style>
    
     body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }

    .navbar {
      background-color: transparent;
      padding: 10px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .navbar-brand {
      font-weight: bold;
      font-size: 20px;
      color: #333;
      text-decoration: none;
    }

    .navbar-nav {
      display: flex;
      list-style: none;
      margin: 0;
      padding: 0;
    }

    .nav-item {
      margin-left: 10px;
    }

    .nav-link {
      text-decoration: none;
      color: #333;
    }
     
       body {
      background: linear-gradient(to bottom, #d1eced, #bd6b2d);
      /* Replace #ff0000 and #0000ff with your desired start and end colors */
    }
  
        /* CSS for the sign-up effects */
        .fade-in {
            opacity: 0;
            animation: fade-in-animation 5s forwards;
        }

        @keyframes fade-in-animation {
            to {
                opacity: 1;
            }
        }

        /* New styles for the login box */
        .login-box {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 400px;
            padding: 40px;
            margin: 20px auto;
            transform: translate(-50%, -55%);
            background: rgba(0,0,0,.9);
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;
        }

        .login-box p:first-child {
            margin: 0 0 30px;
            padding: 0;
            color: #fff;
            text-align: center;
            font-size: 1.5rem;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .login-box .user-box {
            position: relative;
        }

        .login-box .user-box input {
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            margin-bottom: 30px;
            border: none;
            border-bottom: 1px solid #fff;
            outline: none;
            background: transparent;
        }

        .login-box .user-box label {
            position: absolute;
            top: 0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            pointer-events: none;
            transition: .5s;
        }

        .login-box .user-box input:focus ~ label,
        .login-box .user-box input:valid ~ label {
            top: -20px;
            left: 0;
            color: #fff;
            font-size: 12px;
        }

        .login-box form a {
            position: relative;
            display: inline-block;
            padding: 10px 20px;
            font-weight: bold;
            color: #fff;
            font-size: 16px;
            text-decoration: none;
            text-transform: uppercase;
            overflow: hidden;
            transition: .5s;
            margin-top: 40px;
            letter-spacing: 3px
        }

        .login-box a:hover {
            background: #fff;
            color: #272727;
            border-radius: 5px;
        }

        .login-box a span {
            position: absolute;
            display: block;
        }

        .login-box a span:nth-child(1) {
            top: 0;
            left: -100%;
            width: 100%;
            height: 2px;
            background: linear-gradient(90deg, transparent, #fff);
            animation: btn-anim1 1.5s linear infinite;
        }

        @keyframes btn-anim1 {
            0% {
                left: -100%;
            }

            50%,100% {
                left: 100%;
            }
        }

        .login-box a span:nth-child(2) {
            top: -100%;
            right: 0;
            width: 2px;
            height: 100%;
            background: linear-gradient(180deg, transparent, #fff);
            animation: btn-anim2 1.5s linear infinite;
            animation-delay: .375s
        }

        @keyframes btn-anim2 {
            0% {
                top: -100%;
            }

            50%,100% {
                top: 100%;
            }
        }

        .login-box a span:nth-child(3) {
            bottom: 0;
            right: -100%;
            width: 100%;
            height: 2px;
            background: linear-gradient(270deg, transparent, #fff);
            animation: btn-anim3 1.5s linear infinite;
            animation-delay: .75s
        }

        @keyframes btn-anim3 {
            0% {
                right: -100%;
            }

            50%,100% {
                right: 100%;
            }
        }

        .login-box a span:nth-child(4) {
            bottom: -100%;
            left: 0;
            width: 2px;
            height: 100%;
            background: linear-gradient(360deg, transparent, #fff);
            animation: btn-anim4 1.5s linear infinite;
            animation-delay: 1.125s
        }

        @keyframes btn-anim4 {
            0% {
                bottom: -100%;
            }

            50%,100% {
                bottom: 100%;
            }
        }

        .login-box p:last-child {
            color: #aaa;
            font-size: 14px;
        }

        .login-box a.a2 {
            color: #fff;
            text-decoration: none;
        }

        .login-box a.a2:hover {
            background: transparent;
            color: #aaa;
            border-radius: 5px;
        }
        
            footer {
      background-color: transparent;
      padding: 20px;
      display: flex;
      justify-content: space-between;
    }
    .footer-left {
      flex-grow: 1;
    }
    .footer-right {
      display: flex;
    }
    .footer-right a {
      margin-left: 10px;
      color: #000;
      text-decoration: none;
    }
    
    .social-links,.flex-center {
  display: flex;
  justify-content: center;
  align-items: center;
}

.social-btn {
  cursor: pointer;
  height: 50px;
  width: 50px;
  font-family: 'Titillium Web', sans-serif;
  color: #333;
  border-radius: 10px;
  box-shadow: 0px 10px 10px rgba(0,0,0,0.1);
  background: white;
  margin: 5px;
  transition: 0.3s;
  justify-content: center;
}

.social-btn svg {
  height: 24px;
  width: 24px;
}

.social-btn span {
  width: 0px;
  overflow: hidden;
  transition: 0.3s;
  text-align: center;
  margin-left: 5px;
}

.social-btn:hover {
  width: 150px;
  border-radius: 5px;
}

.social-btn:hover span {
  padding: 2px;
  width: 80px;
}

#twitter svg {
  fill: #1da1f2;
}

#linkedin svg {
  fill: #0e76a8;
}

#github {
  fill: #333;
}
    
        
    </style>
    <script>
        // JavaScript for the sign-up effects
        window.addEventListener('DOMContentLoaded', (event) => {
            const form = document.getElementById('registrationForm');
            form.classList.add('fade-in');
        });
    </script>
</head>
<body>
 <nav class="navbar">
    <a class="navbar-brand" href="#"></a>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/TooSoonHotel/index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/TooSoonHotel/Reg">--Want to Too Soon in Too Soon Hotel--</a>
      </li>
    </ul>
  </nav>
  
    <div class="login-box">
        <p>Too Soon Form</p>
        <form action="Reg" method="post" id="registrationForm">
            <div class="user-box">
                <input type="text" name="name" required>
                <label>Too Soon User Name:</label>
            </div>
            <div class="user-box">
                <input type="text" name="email" required>
                <label>Too Soon E-mail:</label>
            </div>
            <div class="user-box">
           
                <% List<String> courses = new ArrayList<String>();
                   if (request.getAttribute("cl") != null) {
                       courses = (List<String>) request.getAttribute("cl");
                   }
                %>
                <select name="">
                    <% for (String each : courses) { %>
                        <option><%= each %></option>
                    <% } %>
                </select>
                
            </div><br>
            <input type="submit" value="Save for Too Soon">
        </form>
    </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <footer>
    <div class="footer-left">
      If U want to Too Soon.
      <p>Join our Too Soon Hotel and feel deep treasure!</p>
    </div>
    <div class="footer-right">
    
      <div class="social-links">
      <p>Too Soon Links</p>
		<div id="twitter" class="social-btn flex-center">
			<svg viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"></path></svg><span>Twitter</span>
		</div>
	
		<div id="linkedin" class="social-btn flex-center">
			<svg viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M4.98 3.5c0 1.381-1.11 2.5-2.48 2.5s-2.48-1.119-2.48-2.5c0-1.38 1.11-2.5 2.48-2.5s2.48 1.12 2.48 2.5zm.02 4.5h-5v16h5v-16zm7.982 0h-4.968v16h4.969v-8.399c0-4.67 6.029-5.052 6.029 0v8.399h4.988v-10.131c0-7.88-8.922-7.593-11.018-3.714v-2.155z"></path></svg><span>LinkedIn</span>
		</div>

		<div id="github" class="social-btn flex-center">
			<svg viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"></path></svg><span></span>
	</div>
</div>
    </div>
  </footer>
</body>
</html>
