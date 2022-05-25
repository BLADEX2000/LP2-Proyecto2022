<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/menu3.css">
	<link rel="stylesheet" href="cssfg/estilos.css">
	<link rel="stylesheet" href="cssfg/font-awesome.css">
		<script src="js/jquery-3.1.0.min.js"></script>
	<script src="js/main.js"></script>
	
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
 body{
			background: white;
		}
		.gg{
	  	margin-top: 0px;
        
	  	width: 100%;
	  	background-repeat: no-repeat;
	  	background-position: center center;
			background-size: cover;
			height: 500px;
			

			animation: gg 10s infinite;
			animation-direction: alternate;
	  }

	 
	  .conte{
	  	width: 1200px;
	    height: 800px;
	  	margin: 0 auto;
	  	
	  	padding-top: 20px;
	  	margin-top: 20px;
	  }
	  .p1{
	  	text-align: center;
	  	color: red;
	  	font-size: 30px;
	  }
        p{
        	font-size: 20px;
        	text-align: left;
        }
        .caj1{
        	width: 370px;
        	height: 500px;
        	background: white;
        	display: inline-block;
        	margin: 20px;

        }
        .caj2{
        	width: 370px;
        	height: 500px;
        	background: white;
        	display: inline-block;
            
        }
        .caj3{
        	width: 370px;
        	height: 500px;
        	background: white;
        	display: inline-block;
              margin: 20px;
        }
        .hfo{
        	text-align: center;
        	color: white;
        	background: green;
        	padding: 15px;
        	margin: 0px;
        }
        .lik{
        	text-decoration: none;
        	color: blue;
        }
       .lk {
        	background: red;
        	text-align: center;
        	color: white;
        	padding: 5px;
        	margin-left: 160px;
        	text-decoration: none;
        	border-radius: 20px;

        }
        .conte2{
        	width: 1550px;
        	height: 320px;
        	margin: 0 auto;
        	background: pink;
        	padding-top: 30px;
        }
        .t1{
        	text-align: center;
        }
        .imgg{
        	margin: 20px;
        	border: solid white;
        	color: white;
        	border-radius: 50px;
        }
        .xl{
        	background: pink;
        	width: 100%;
        	height: 350px;
        }
        .conte3{
        	width: 1200px;
        	margin: 0 auto;
        	
        	height: 400px;

        }
        .img2{
        	height: 280px;
        	margin-left: 50px;
        }
      

 .a{
   float:left;
   background: #3151AB;
   height: 48px;
   width: 410px;
   padding: 10px;
   color: yellow;
   font-size: 30px
 }
 .usu{
  float: right;
  background: #FCBB61;
  margin-right: 100px;
  height: 75px;
  width: 510px;
  padding: 10px;
 }
 .b{
  background: red;
  float: left;
 }
 .lo1{
 margin-left: 40px;
 }
 .van{
    background: #31AB9A;
 }
 strong {
	font-size: 30px;
	color: white;
}
.cuerpo{
     height: 800px;
     width: 1600px;
     
     margin: 0 auto;
     margin-top: 40px;
}
.final{
   background: black;
   width: 100%;
   height: 200px;
}
.ti{
    color: red;
    font-size: 50px;
    text-align: center;
}
body {
	background: #FAF2E0 ;
}

 
 </style> 


</head>
<body>
         <div class="van">
     <img class="lo1" alt="" src="img/nuevo.png" width=350px" >
     <div class="usu">
       <img class="b" alt="" src="img/person.png" height="50px">
       <p class="a">Bienvenido : <strong>Ala cuenta cris</strong></p>
     </div>
     
 </div>

    <div id='cssmenu'>
<ul>
   <li class='active'><a href='principal.jsp'><span>Inicio</span></a></li>
   <li class='active'><a href='mantenimiento.jsp' ><span>Mantenimiento</span></a>
    
   </li>
   <li><a href='Consultas.jsp' style="background: red"><span>Consultas</span></a></li>
   <li class='active'><a href='PrinTran.jsp'><span>Transacion</span></a></li>
</ul>
</div>
    <div class="slideshow">
		<ul class="slider">
			<li>
				<img src="img/8.jpg" alt="">
				<section class="caption">
					
				</section>
			</li>
			<li>
				<img src="img/9.jpg" alt="">
				<section class="caption">
					
				</section>
			</li>
			<li>
				<img src="img/7.jpg" alt="">
				<section class="caption">
					
				</section>
			</li>
			
		</ul>

		<ol class="pagination">
			
		</ol>
	
		<div class="left">
			<span class="fa fa-chevron-left"></span>
		</div>

		<div class="right">
			<span class="fa fa-chevron-right"></span>
		</div>

	</div>
</body>
</html>