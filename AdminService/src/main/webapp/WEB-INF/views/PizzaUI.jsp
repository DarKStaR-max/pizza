<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Pizza Landing Page</title>
    <!-- Box Icons -->
    <link rel="stylesheet"
  href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <!-- Link To CSS -->
  <link rel="stylesheet" href="styles.css">
<style>
	@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap");
  * {
    margin: 0;
    padding: 0;
    font-family: "Poppins", sans-serif;
    box-sizing: border-box;
    scroll-behavior: smooth;
    scroll-padding-top: 2rem;
    list-style: none;
    text-decoration: none;
  }
  *::selection {
    background: var(--main-color);
    color: #fff;
  }
  :root {
    --main-color: #ffb411;
    --text-color: #1e1c2a;
    --bg-color: #fff;

    --big-font: 4rem;
    --h2-font: 2.24rem;
    --p-font: 0.9rem;
  }
  section {
    padding: 50px 10%;
  }
  body.active {
    --bg-color: #1e1c2a;
    --text-color: #fff;
  }
  body {
    color: var(--text-color);
    background: var(--bg-color);
  }
  #darkmode {
    font-size: 25px;
    cursor: pointer;
  }
  header {
    position: fixed;
    width: 100%;
    top: 0;
    right: 0;
    z-index: 1000;
    display: flex;
    align-items: center;
    justify-content: space-between;
    background: var(--bg-color);
    padding: 18px 100px;
    box-shadow: 0 0.5rem 50rem rgba(0, 0, 0, 0.1);
  }
  .logo {
    font-size: 1.2rem;
    font-weight: 600;
    color: var(--main-color);
  }
  .navbar {
    display: flex;
  }
  .navbar a {
    font-size: 1rem;
    padding: 10px 20px;
    color: var(--text-color);
    font-weight: 500;
  }
  .navbar a:hover {
    color: var(--main-color);
  }
  #menu-icon {
    font-size: 2rem;
    cursor: pointer;
    display: none;
  }
  .home {
    width: 100%;
    min-height: 100vh;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    align-items: center;
    gap: 1.5rem;
  }
  .home-img img {
    width: 100%;
  }
  .home-text h1 {
    font-size: var(--big-font);
    color: var(--main-color);
  }
  .home-text h2 {
    font-size: var(--h2-font);
    margin: 1rem 0 1rem;
  }
  .btn {
    display: inline-block;
    background: var(--main-color);
    padding: 10px 20px;
    border-radius: 0.5rem;
    color: #fff;
  }
  .btn:hover {
    background: #ffa400;
  }
  .about {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 1.5rem;
    align-items: center;
  }
  .about-img img {
    max-width: 80%;
    border-radius: 0.5rem;
  }
  .about-text span {
    color: var(--main-color);
    font-weight: 500;
  }
  .about-text h2 {
    font-size: var(--h2-font);
  }
  .about-text p {
    margin: 0.8rem 0 1.8rem;
  }
  .heading {
    text-align: center;
  }
  .heading span {
    color: var(--main-color);
    font-weight: 500;
  }
  .heading h2 {
    font-size: var(--h2-font);
  }
  .menu-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, auto));
    gap: 1.5rem;
    align-items: center;
  }
  .box {
    position: relative;
    margin-top: 2rem;
    height: auto;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    border-radius: 0.5rem;
    box-shadow: 0 2px 4px rgb(4 64 54 / 10%);
    padding: 10px;
  }
  .box-img {
    width: 200px;
    height: 200px;
  }
  .box-img img {
    width: 100%;
    height: 100%;
    object-fit: contain;
    object-position: center;
  }
  .box h2 {
    font-size: 1.2rem;
  }
  .box h3 {
    font-size: 1rem;
    font-weight: 400;
    margin: 4px 0 10px;
  }
  .box span {
    font-size: var(--p-font);
    font-weight: 500;
  }
  .box .bx {
    position: absolute;
    right: 0;
    top: 0;
    font-size: 20px;
    background: var(--main-color);
    border-radius: 0 0.5rem 0 0.5rem;
    padding: 5px 8px;
  }
  .box .bx:hover {
    background: #ffa400;
  }
  .servives-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(240px, auto));
    gap: 1.5rem;
    margin-top: 2rem;
  }
  .s-box {
    text-align: center;
  }
  .s-box img {
    width: 60px;
  }
  .s-box h3 {
    margin: 4px 0 10px;
  }
  .connect {
    display: flex;
    align-items: center;
    justify-content: space-around;
  }
  .connect-text span {
    color: var(--main-color);
    font-weight: 500;
  }
  .connect-text h2 {
    font-size: var(--h2-font);
  }
  .contact {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, auto));
    gap: 1.5rem;
  }
  .contact-box h3 {
    margin-bottom: 1rem;
  }
  .social {
    display: flex;
    margin-top: 1.5rem;
  }
  .social i {
    font-size: 20px;
    margin-right: 1rem;
    color: var(--text-color);
  }
  .social i:hover {
    color: var(--main-color);
  }
  .contact-box li a {
    color: var(--text-color);
  }
  .contact-box li a:hover {
    color: var(--main-color);
  }
  .address {
    display: flex;
    flex-direction: column;
  }
  .address i {
    margin-bottom: 0.5rem;
    font-size: 1rem;
  }
  .address span {
    margin-left: 1rem;
  }
  .copyright {
    padding: 20px;
    text-align: center;
  }
  @media (max-width: 921px) {
    header {
      padding: 14px 41px;
    }
    :root {
      --big-font: 3rem;
      --h2-font: 1.7rem;
    }
  }
  @media (max-width: 768px) {
    section {
      padding: 50px 8%;
    }
    #menu-icon {
      display: initial;
      color: var(--text-color);
    }
    header .navbar {
      position: absolute;
      top: -400px;
      left: 0;
      right: 0;
      display: flex;
      flex-direction: column;
      text-align: center;
      background: var(--bg-color);
      box-shadow: 0 4px 4px rgb(0 0 0 / 10%);
      transition: 0.2s ease;
    }
    .navbar.active {
      top: 100%;
    }
    .navbar a {
      padding: 1.5rem;
      display: block;
      background: var(--bg-color);
    }
    #darkmode {
      position: absolute;
      top: 1.4rem;
      right: 2rem;
    }
  }
  @media (max-width: 715px) {
    header {
      padding: 10px 16px;
    }
    .home {
      grid-template-columns: 1fr;
    }
    .about {
      grid-template-columns: 1fr;
      text-align: center;
    }
    .about-img {
      order: 2;
    }
  }
  @media (max-width: 515px) {
    .connect {
      flex-direction: column;
    }
    .connect .btn {
      margin-top: 1rem;
    }
  }
  @media (max-width: 450px) {
    :root {
      --big-font: 2rem;
      --h2-font: 1.4rem;
    }
    .home-text {
      padding-top: 4rem;
    }
  }
</style>
</head>
<body>
    <!-- Navbar -->
    <header>
        <a href="#" class="logo">Welcome To Pizza Store</a>
        <div class="bx bx-menu" id="menu-icon"></div>

        <ul class="navbar">
            <li><a href="${pageContext.request.contextPath}/customers/home2">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/customers/about">About</a></li>
            <li><a href="${pageContext.request.contextPath}/customers/menu">Menu</a></li>
            <li><a href="${pageContext.request.contextPath}/customers/editMenu">Edit Menu</a></li>
            <li><a href="${pageContext.request.contextPath}/customers/Contact">Contact</a></li>
       		<input type="text" placeholder="Search..">
            <!-- Dark Mode -->
                <li><a href="${pageContext.request.contextPath}/customers/logout">Log Out</a></li>
        </ul>
    </header>
    <!-- Home  Section-->
    <section class="home" id="home">
        <div class="home-text">
            <h1>Pizza Store</h1>
            <h2>The Best pizza of <br> your choice</h2>
            
        </div>
        <div class="home-img">
            <img src="https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80.png" alt="">
        </div>
    </section>

    
    <!-- Copyright -->
    <div class="copyright">
        <p>© RakeshPizzaStore All Right Reserved.</p>
    </div>


    <!-- Scroll Reveal -->
    <script src="https://unpkg.com/scrollreveal"></script>
    
</body>
</html>