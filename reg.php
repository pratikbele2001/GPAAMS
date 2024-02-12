<?php
include("header.php");
if(isset($_POST['submit']))
{
	$qry = "insert into tbluser(gender,name, dob, emailid,phone,pyear, courseid,occupation,address,message,upass,status,location,membershiptype,mfee,paytype,bank,cardno,cvv,expmonth,expyear,reg_date,designation,organization) values ('".$_POST['Gender']."','".$_POST['Name']."','".$_POST['Date_Of_Birth']."','".$_POST['Email']."','".$_POST['phone']."','".$_POST['Passing_Out_year']."','".$_POST['course']."','".$_POST['Occupation']."','".$_POST['Address']."','".$_POST['Message']."','".$_POST['Pass']."','Inactive','".$_POST['location']."','".$_POST['membershiptype']."','".$_POST['membershipfee']."','".$_POST['paytype']."','".$_POST['bankname']."','".$_POST['cardno']."','".$_POST['cvv']."','".$_POST['cardexpmonth']."','".$_POST['year']."','" . date("Y-m-d") . "','".$_POST['designation']."','" . $_POST['organization'] . "')";
	if(mysqli_query($con, $qry))
	{ 
		$uid = mysqli_insert_id($con);
		//$filename = "noimage.png";
		$filename = rand().$_FILES["aphoto"]["name"];
		move_uploaded_file($_FILES["aphoto"]["tmp_name"],"upload/alumni/".$filename);		
		$rs1=mysqli_query($con,"insert into tblalumniphoto(userid,profilepic) values('".$uid."','".$filename."')");
		//####################
		/*
		$cstname = $_POST['Name'];
		$emailid = $_POST['Email'];
		include("phpmailer.php");
		$msg = "Hello $cstname, <br><br>
		Welcome to ALUMNI TRACKING SYSTEM,<br><br>
		Your account verified successfully..<br>
		<br>
		Login ID : " . $_POST['Email'] ." 
		<br>
		Password : " . $_POST['Pass'] . "
		<br>
		<hr>
		<b>Do not share your Login Credentials with anyone.</b>";
		sendmail($emailid, $cstname , "Successfully registered with ALUMNI TRACKING SYSTEM..", $msg);
		*/
		//####################
		echo "<script>alert('Registration Done successfully.. You will get an Email Notification After admin verification...');</script>";
		echo "<script>window.location='index.php';</script>"; 
	}
}
?>
<div class="container">
	<div class="page">
   <Center><h3>Alumni Registration</h3></center>
 
<div class="bs-example" data-example-id="simple-horizontal-form">
    <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Full Name</label>
					<input type="text" class="form-control" id="Name" name="Name" placeholder="Name"   onkeypress="return Validate(event);"  >
					<span id="lblError" style="color: red"></span>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Profile Photo</label>
					<input type="file" class="form-control" id="aphoto" name="aphoto" >
				</div>
			</div>
		</div>		
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Gender</label>
					<select name="Gender" id="Gender"  class="form-control" >
						<option value="">Select Gender</option>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Date of Birth</label>
					<input type="date" class="form-control" id="Date_Of_Birth" name="Date_Of_Birth" placeholder="Date of Birth" >
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group"	>
					<label for="inputEmail3" class="control-label">Email ID</label>
					<input type="email" class="form-control" id="Email" name="Email" placeholder="Email ID"  onchange="checkemail(this.value)">
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Contact No.</label>
					<input type="number" class="form-control" id="phone" name="phone" placeholder="Contact no." required>
				</div>
			</div>
		</div>
		
				<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Password</label>
					<input type="Password" class="form-control" id="Pass" name="Pass" placeholder="Password" >
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Confirm Password</label>
					<input type="Password" class="form-control" id="Cpass" name="Cpass" placeholder="Confirm Password"  >
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Select Course</label>
					<select name="course" id="course" class="form-control">
					<?php
					$qry = "Select * from tblcourse";
					$res = mysqli_query($con, $qry);
					echo "<option value='0'>-- Select --</option>";
					while($row = mysqli_fetch_array($res))
					{
						echo "<option value='$row[0]'>$row[1]</option>";
					}
					?>
					</select>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Passout Year</label>
					<input type="number" class="form-control" id="Passing_Out_year" name="Passing_Out_year" placeholder="Passout Year" required onchange="validateDate(this.value,Date_Of_Birth.value)">
				</div>
			</div>
		</div>
		
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Occupation</label>
					<input type="text" class="form-control" id="Occupation" name="Occupation" placeholder="Occupation" >
				</div>
			</div>
			<div class="col-md-6">
					<label for="inputEmail3" class="control-label">Designation</label>
					<input type="text" class="form-control" id="designation" name="designation" placeholder="Designation" >
			</div>
		</div>
		 
		
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Organization</label>
					<input type="text" class="form-control" id="organization" name="organization" placeholder="Organization" >
				</div>
			</div>
			<div class="col-md-6">
			</div>
		</div>
		 
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Address</label>
					<textarea class="form-control" id="Address" name="Address" placeholder="Address"></textarea> 
				</div>
			</div>
			
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Region</label>
					<select name="location" id="location" class="form-control">
					<?php
					$qry = "Select * from tblregion";
					$res = mysqli_query($con, $qry);
					echo "<option value='0'>-- Select Region --</option>";
					while($row = mysqli_fetch_array($res))
					{
						echo "<option value='$row[0]'>$row[1]</option>";
					}
					?>
					</select>
				</div>
			</div>
		</div>
		 			<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Membership Type</label>
					<select name="membershiptype"  class="form-control"  onchange="updatecost(this.value)">
						<option value="Standard" selected >Standard</option>
						<option value="Premium">Premium</option>
					</select>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Membership Fee</label>
					<input type="text" class="form-control" id="membershipfee" readonly name="membershipfee" placeholder="Membership Fee" required value="1000.00">
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Payment Type</label>
					<select name="membershiptype"  class="form-control" required >
						<option value=""  >Select Payment Type</option>
						<option value="Debitcard"  >Debit Card</option>
						<option value="Creditcard">Credit Card</option>
					</select>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Bank Name</label>
					<input type="text" class="form-control" id="bankname" name="bankname" placeholder="Bank Name" required>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Card No.</label>
					<input type="number" class="form-control" id="cardno" name="cardno" placeholder="Card No" required>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">CVV No.</label>
					<input type="Password" class="form-control" id="cvv" name="cvv" placeholder="CVV" required >
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Card Expire Month</label>
					<select name="cardexpmonth" id="cardexpmonth" class="form-control">
					 <option value='0'>--Select -- </option> 
					 <option value='1'>1</option>
					 <option value='2'>2</option>
					 <option value='3'>3</option>
					 <option value='4'>4</option>
					 <option value='5'>5</option>
					 <option value='6'>6</option>
					 <option value='7'>7</option>
					 <option value='8'>8</option>
					 <option value='9'>9</option>
					 <option value='10'>10</option>
					 <option value='11'>11</option>
					 <option value='12'>12</option>
					 </select>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Year</label>
					<select name="year" id="year" class="form-control">
						 <option value='0'>--Select -- </option>
						 <option value='2021'>2021</option>
						 <option value='2022'>2022</option>
						 <option value='2023'>2023</option>
						 <option value='2024'>2024</option>
						 <option value='2025'>2025</option>
					</select>
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					
				</div>
			</div>
		</div>
		
     
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label for="inputEmail3" class="control-label">Message (About Yourself)</label>
					<textarea class="form-control" id="Message" name="Message" placeholder="Message" rows="3"></textarea>
				</div>
			</div>
		</div>
      <div class="form-group">
        <div class="col-sm-12"><hr>
          <center><button value="Login" name="btnsubmit" id="btnsubmit" class="btn btn-warning btn-lg" type="button" onclick="return frmValidate()" >Click Here to Register</button></center>
        </div>
      </div>
<div id="otpModal" class="modal fade" role="dialog">
  <div class="modal-dialog" style="max-width: 50%;">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Verify OTP</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
	<p class="coupon-input form-row-first">
		<label><b>We have sent OTP to following Email ID.</b></label>
		<input type="text" name="emailids" id="emailids" readonly class='form-control'>
		<input type="hidden" name="otpnumber" id="otpnumber" readonly>
	</p>
		<p class="coupon-input form-row-first">
		<label>Enter OTP</label>
		<input type="text" name="enteredotp" id="enteredotp" class='form-control'>
	</p>
      </div>
      <div class="modal-footer">
			<button value="Login" name="submit" id="submit" class="btn btn-info btn-lg" type="submit" onclick="return validateotp()">Complete Registration</button>
      </div>
    </div>
  </div>
</div>	  
</form>	
</div>	
</div>
</div>
<?php
include("footer.php");
?>
<script type="text/javascript">
    function frmValidate()
	{
        var password = document.getElementById("Pass");
        var confirmPassword = document.getElementById("Cpass");
		
        var month = document.getElementById("cardexpmonth").value;
        var year = document.getElementById("year").value;
		
		var objdate = new Date();
		var cur_month = objdate.getUTCMonth()+1;
		var cur_year = objdate.getUTCFullYear();
		
		if(document.getElementById("Name").value == "")
		   {
			   alert('Name Should not be empty');
			   document.getElementById("Name").focus();
			   return false;
		   }
		else if(document.getElementById("aphoto").value == "")
		   {
			   alert('Enter Mobile Number');
			   document.getElementById("aphoto").focus();
			   return false;
		   }
		else if(document.getElementById("Gender").value == "")
		   {
			   alert('Enter Mobile Number');
			   document.getElementById("Gender").focus();
			   return false;
		   }
		else if(document.getElementById("Email").value == "")
		   {
			   alert('Enter Mobile Number');
			   document.getElementById("Email").focus();
			   return false;
		   }
		else if(document.getElementById("phone").value.length != 10)
		   {
			   alert('Inavalid Mobile Number');
			   document.getElementById("phone").focus();
			   return false;
		   }
	   else if(document.getElementById("cardno").value == "")
		{
			alert("Enter Card Number");
			document.getElementById("cardno").focus();
			return false;
		}
		 else if(document.getElementById("cardno").value.length != 16)
		{
			alert("Invalid Card Number");
			document.getElementById("cardno").value="";
			document.getElementById("cardno").focus();
			return false;
		}
		else if(document.getElementById("cvv").value == "")
		{
			alert("Please Enter CVV");
			document.getElementById("cvv").focus();
			return false;
		}
		else if(document.getElementById("cvv").value.length != 3)
		{
			alert("Invalid CVV");
			document.getElementById("cvv").value="";
			document.getElementById("cvv").focus();
			return false;
		}
		else if(month == 0)
		{
			alert("Select Month");
			return false;
		}
		else if(year == 0)
		{
			alert("Select Year");
			return false;
		}
		else if(month < cur_month && year == cur_year)
		{
			alert('Card Expired!!!');
			return false;
		}
	   else if(password.value == "")
	   {
		   alert('Enter Password');
		   password.focus();
		   return false;
	   }
	   else if(password.value.length < 6 || password.value.length >10)
	   {
		   alert('Password length should be between 6 to 10.');
		   password.focus();
		   return false;
	   }
	   else if(password.value != confirmPassword.value) 
		{
			alert('Password Mismatch!!!');
			document.getElementById("Pass").value = "";
			document.getElementById("Cpass").value = "";
		}
		 else   
		 {
				$('#otpModal').modal('show');
				document.getElementById("emailids").value = document.getElementById("Email").value;
				var xmlhttp = new XMLHttpRequest();
				xmlhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200) 
					{
						document.getElementById("otpnumber").value = this.responseText;
						document.getElementById("emailids").value = document.getElementById("Email").value;
					}
				};
				xmlhttp.open("GET","sendotp.php?emailid="+document.getElementById("Email").value+"&cstname="+document.getElementById("Name").value,true);
				xmlhttp.send();
		 }
    }
</script>
<script>
function validateotp()
{
	if(document.getElementById("otpnumber").value == document.getElementById("enteredotp").value)
	{
		return true;
	}
	else
	{
		alert("You have entered invalid OTP..");
		return false;
	}
}
</script>
<script type="text/javascript">
function validateDate(date, dob)
{
	if (window.XMLHttpRequest) {
		// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {
		// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				 
				if(xmlhttp.responseText.trim() == "error")
				{
					  document.getElementById("Passing_Out_year").value="";
					  document.getElementById("Passing_Out_year").focus();
					  alert("Invalid Passout Year");
				}
				 
			}
		}
	var getlink = "ajaxsetup.php?passdate="+date+"&dob="+dob;
	xmlhttp.open("GET",getlink,true);
	xmlhttp.send();
}
</script>
<script>
	function updatecost(type)
	{
		if(type == "Standard")
		{
			document.getElementById("membershipfee").value = "1000.00";
		}
		else if(type == "Premium")
		{
			document.getElementById("membershipfee").value = "10,000.00";
		}
	}
</script>
<script type="text/javascript">
    function Validate(e) {
        var keyCode = e.keyCode || e.which;
 
        var lblError = document.getElementById("lblError");
        lblError.innerHTML = "";
 
        //Regex for Valid Characters i.e. Alphabets.
        var regex = /^[A-Za-z\s]+$/;
 
        //Validate TextBox value against the Regex.
        var isValid = regex.test(String.fromCharCode(keyCode));
        if (!isValid) {
            lblError.innerHTML = "Only Alphabets allowed.";
        }
        return isValid;
    }
</script>
<script>
function checkemail(email)
{
	if (window.XMLHttpRequest) 
	{
		// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	}
	else
	{
		// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function()
	{
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) 
		{
			if(xmlhttp.responseText.trim() == "error")
			{
				  document.getElementById("Email").value="";
				  document.getElementById("Email").focus();
				  alert("Email Id already Registred");
			}
		}
	}
	var getlink = "ajaxsetup.php?useremail="+email;
	xmlhttp.open("GET",getlink,true);
	xmlhttp.send();
}
</script>
