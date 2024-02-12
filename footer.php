<div class="footer animated wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="500ms">
	<div class="container">
		<!--<h4>Denouncing pleasure</h4>
			<p class="footer-in">But I must explain to you how all this mistaken <br>idea of denouncing pleasure <br>and praising pain </p>
			<ul class="footer-top">
			<li><span><i class="glyphicon glyphicon-earphone"></i>+123456789</span></li>
			<li><a href="mailto:info@example.com"><i class="glyphicon glyphicon-envelope"></i> Lorem@example.com</a>
			</ul>-->
			<p class="footer-class"> Copyrights © <?php echo date("Y"); ?> |  All Rights Reserved | Developed By GPA STUDENTS</p>
	<footer class="footer-area section_gap">
        <div class="container" align="center">

  
    <span style="color:#fff" >&copy;<a href="https://www.gpamravati.ac.in/" target="_blank"> GPA</a>  | 
	<?php
				 if(!isset($_SESSION["type"]))
				 {
	?>
		<b><a href="adminlogin.php" style="font-weight:bold;">Admin Login</a></b>
	<?php
				 }
	?>
	</span>
        </div>
    </footer>
		</div>                                                        
</div>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="js/modernizr.custom.53451.js"></script> 
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<script src="js/wow.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
<script>
 new WOW().init();
</script>
</body>
</html>
