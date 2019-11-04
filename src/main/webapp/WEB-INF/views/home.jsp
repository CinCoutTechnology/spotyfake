<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
	<link href='<c:url value="/resources/content/CSS/foundation.min.css" />' rel="stylesheet" type="text/css" media="screen" />
	<link href='<c:url value="/resources/content/CSS/app.css" />' rel="stylesheet" type="text/css" media="screen" />
	<script type='text/javascript' src="/js/foundation.min.js"></script>
	
	<title>Home</title>
	
</head>
<body style="background: url('https://i.pinimg.com/originals/21/1c/a2/211ca2e29e4736d9f6e1fad62f97bc48.jpg');">
  
<header>
     <div class="top-bar" id="example-animated-menu" data-animate="hinge-in-from-top spin-out">
            <div class="top-bar-left">
                <style>
                    ul li .menu-text,
                    .color-logo {
                        font-size: 28px;
                        color: #040E44;
                        padding-top: 7px;
                    }

                    ul li.topLi {
                        padding-top: 7px;
                    }

                    div ul li.padding-right {
                        padding-right: 30px;
                    }

                    body {
                  
                   	 	background-image: url('img/fondo.jpg');
                        background-size: 100%;
							  
                    }
                    .styletitle{
                      	color: white;
    					background: #230d0d;
                    }
                </style>
                <ul class="dropdown menu" data-dropdown-menu>
                    <li class="menu-text color-logo" style="color:#040E44;">spotyfake</li>
                </ul>
            </div>
            <div class="top-bar-right">
                <ul class="menu">
                    <li class="padding-right"><a type="button" class="button">Cerrar Sessión</a></li>
                </ul>
            </div>
        </div>
    </header>
    <br>
    
    <section class="">
        <div class="grid-container">
        	<h2 class="styletitle text-center">LISTA DE CANCIONES</h2>
            <div class="grid-x grid-margin-x small-up-2 medium-up-3">
            	<c:forEach var="cancion" items="${listaCanciones}">
			<div class="cell">
                <div class="card" style="background: #212526a8;">
                
                  <div class="card-section">
                  
                  	<h4 class="text-center" style="color: #ffffff;"><c:out value="${cancion.nombre }"></c:out></h4>
                    
                      <div class="grid-container">
                        <div class="grid-x grid-margin-x small-up-1 medium-up-2">
                            <div class="cell">
                                <p style="color: #ffffff;;" class="text-center"><c:out value="${cancion.album }"></c:out></p>
                            </div>
                            <div class="cell">
                                <p style="color: #ffffff;;"  class="text-center"><c:out value="${cancion.artista }"></c:out></h4>
                            </div>
                        </div>
                    </div>
                  </div>
                </div>
             </div>
			</c:forEach>
			
            </div>
          </div>
    </section>
</body>
</html>
