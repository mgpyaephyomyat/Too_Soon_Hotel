<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Insert title here</title>
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
    
     .header {
      text-align: center;
      padding: 50px;
    }

    .header h1 {
      font-size: 32px;
      margin-bottom: 20px;
    }

    .header p {
      font-size: 18px;
      color: #666;
      margin-bottom: 30px;
    }

    .image-container {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .image-container img {
      max-width: 100%;
      height: auto;
    }
      .button-container {
      text-align: center;
      margin-top: 30px;
    }
     
    body {
      margin: 0;
      padding: 0;
    }
   
    body {
       background: linear-gradient(to bottom, #d1eced, #bd6b2d);
      /* Replace #ff0000 and #0000ff with your desired start and end colors */
    }
  
    
    .container {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      text-align: center;
    }
    button {
      border: none;
      position: relative;
      width: 200px;
      height: 73px;
      padding: 0;
      z-index: 2;
      -webkit-mask: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' height='868' width='2500' viewBox='0 0 726 252.17'%3E%3Cpath d='M483.92 0S481.38 24.71 466 40.11c-11.74 11.74-24.09 12.66-40.26 15.07-9.42 1.41-29.7 3.77-34.81-.79-2.37-2.11-3-21-3.22-27.62-.21-6.92-1.36-16.52-2.82-18-.75 3.06-2.49 11.53-3.09 13.61S378.49 34.3 378 36a85.13 85.13 0 0 0-30.09 0c-.46-1.67-3.17-11.48-3.77-13.56s-2.34-10.55-3.09-13.61c-1.45 1.45-2.61 11.05-2.82 18-.21 6.67-.84 25.51-3.22 27.62-5.11 4.56-25.38 2.2-34.8.79-16.16-2.47-28.51-3.39-40.21-15.13C244.57 24.71 242 0 242 0H0s69.52 22.74 97.52 68.59c16.56 27.11 14.14 58.49 9.92 74.73C170 140 221.46 140 273 158.57c69.23 24.93 83.2 76.19 90 93.6 6.77-17.41 20.75-68.67 90-93.6 51.54-18.56 103-18.59 165.56-15.25-4.21-16.24-6.63-47.62 9.93-74.73C656.43 22.74 726 0 726 0z'/%3E%3C/svg%3E") no-repeat 50% 50%;
      mask: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' height='868' width='2500' viewBox='0 0 726 252.17'%3E%3Cpath d='M483.92 0S481.38 24.71 466 40.11c-11.74 11.74-24.09 12.66-40.26 15.07-9.42 1.41-29.7 3.77-34.81-.79-2.37-2.11-3-21-3.22-27.62-.21-6.92-1.36-16.52-2.82-18-.75 3.06-2.49 11.53-3.09 13.61S378.49 34.3 378 36a85.13 85.13 0 0 0-30.09 0c-.46-1.67-3.17-11.48-3.77-13.56s-2.34-10.55-3.09-13.61c-1.45 1.45-2.61 11.05-2.82 18-.21 6.67-.84 25.51-3.22 27.62-5.11 4.56-25.38 2.2-34.8.79-16.16-2.47-28.51-3.39-40.21-15.13C244.57 24.71 242 0 242 0H0s69.52 22.74 97.52 68.59c16.56 27.11 14.14 58.49 9.92 74.73C170 140 221.46 140 273 158.57c69.23 24.93 83.2 76.19 90 93.6 6.77-17.41 20.75-68.67 90-93.6 51.54-18.56 103-18.59 165.56-15.25-4.21-16.24-6.63-47.62 9.93-74.73C656.43 22.74 726 0 726 0z'/%3E%3C/svg%3E") no-repeat 50% 50%;
      -webkit-mask-size: 100%;
      cursor: pointer;
      background-color: transparent;
      transform: translateY(8px)
    }
    button:after {
      content: '';
      position: absolute;
      left: 0;
      right: 0;
      bottom: 0;
      box-shadow: 0px 0 0 0 white;
      transition: all 2s ease;
    }
    button:hover:after {
      box-shadow: 0px -13px 56px 12px #ffffffa6;
    }
    button span {
      position: absolute;
      width: 100%;
      font-size: 15px;
      font-weight: 100;
      left: 50%;
      top: 39%;
      letter-spacing: 3px;
      text-align: center;
      transform: translate(-50%,-50%);
      color: black;
      transition: all 2s ease;
    }
    button:hover span {
      color: white;
    }
    button:before {
      content: '';
      position: absolute;
      width: 0;
      height: 100%;
      background-color: black;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
      transition: all 1s ease;
    }
    button:hover:before {
      width: 100%;
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
      color: transparent;
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
</head>
<body>
 <nav class="navbar">
    <a class="navbar-brand" href="login.jsp">Login for Admin</a>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="http://localhost:8080/TooSoonHotel/view/index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Reg">--Register for Too Soon Hotel--</a>
      </li>
    
    </ul>
  </nav>
    
   <div class="header">
 <p><strong>Welcome to Too Soon Hotel!</strong></p>
 
 <p>The only U want to <strong>Too Soon</strong> is <strong>Here!</strong></p>
 
<p>Thank you for choosing <strong>Too Soon</strong> as your source of support.</p>

  <p>We're here for you to <strong>Too Soon</strong> every step of the way.</p>

   </div>

      <div class="button-container">
     <a href="Reg">
      <button class="button">
        <span>Too Soon</span>
      </button>
       
    </a>
  </div>

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
