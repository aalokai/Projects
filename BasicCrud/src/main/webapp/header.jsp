<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <% 
    if(request.getAttribute("title") == null) {
        out.print("<title>Homepage</title>");
    }
    else {
        out.print("<title>" + request.getAttribute("title") + "</title>");
    }
	%>

    
    
    <meta property="og:title" content="Aalok Tiwari - Web Developer and AI Enthusiast">
    <meta property="og:description"
        content="Crafting websites, intelligent solutions, and applications. Aalok Tiwari enjoys working with AI, machine learning, and building strong, flexible web apps using Java principles. Outside work, he enjoys weight-lifting, cricket, table tennis, volleyball, video games, drawing, and painting.">
    <meta name="keywords"
        content="Web developer, AI enthusiast, intelligent solutions, Java programming, machine learning, deep learning, technology, innovation, personal growth, Aalok Tiwari, applications, web apps, creativity, Artificial Intelligence">

    <meta property="og:type" content="website">
    <meta property="og:url" content="https://aalokai.github.io/portfolio/">
    <meta property="og:image" content="https://aalokai.github.io/portfolio/img/aaloktiwari.png">

    <link rel="icon" href="img/favicon/favicon-16x16.png" />
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/general.css" type="text/css">
    <link rel="stylesheet" href="css/queries.css" type="text/css">
    <script defer src="js/script.js"></script>
    <script defer src="https://unpkg.com/smoothscroll-polyfill@0.4.4/dist/smoothscroll.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Code+Pro:ital,wght@0,200..900;1,200..900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body class="source-code pro">
    <header class="header">
        <a href="#">
            <img class="logo" alt="aalokai logo" src="img/aalokai-rm.png" />
        </a>
        <nav class="main-nav" id="navbar">
            <ul class="main-nav-list">
                <li><a class="main-nav-link" href="<%=request.getContextPath()%>/home?page=home">Home</a></li>
                <li><a class="main-nav-link" href="<%=request.getContextPath()%>/site?page=listusers">List Users</a></li>
                <li><a class="main-nav-link" href="<%=request.getContextPath()%>/site?page=adduser">Add User</a></li>
           
                
            </ul>
        </nav>
        <button class="btn-mobile-nav">
            <ion-icon class="icon-mobile-nav" name="menu-outline"></ion-icon>
            <ion-icon class="icon-mobile-nav" name="close-outline"></ion-icon>
        </button>
    </header>
