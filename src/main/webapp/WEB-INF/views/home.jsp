<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
	<link href='<c:url value="/resources/content/CSS/foundation.min.css" />' rel="stylesheet" type="text/css" media="screen" />
	<link href='<c:url value="/resources/content/CSS/app.css" />' rel="stylesheet" type="text/css" media="screen" />
	<script type='text/javascript' src="/js/foundation.min.js"></script>
	
	<title>Home</title>
	
</head>
<body>
<header>
      <div class="title-bar" data-responsive-toggle="example-animated-menu" data-hide-for="medium">
            <button class="menu-icon" type="button" data-toggle></button>
            <div class="title-bar-title">Menu</div>
        </div>

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
                   
                        background-size: 100%;

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
    <section class="" style="background: #040E44">
        <div class="grid-container">
            <div class="grid-x grid-margin-x small-up-2 medium-up-3">
            	<c:forEach var="cancion" items="${listaCanciones}">
			<div class="cell">
                <div class="card">
                
                  <div class="card-section">
                  <h4><c:out value="${cancion.nombre }"></c:out> </h4>
                    <p>This row of cards is embedded in an X-Y Block Grid.</p>
                  </div>
                </div>
              </div>
			</c:forEach>
			
            </div>
          </div>
    </section>
</body>
</html>
