<?php
include("header.php");
if(!isset($_SESSION["type"]))
{
	echo "<script>window.location='index.php';</script>";
}
if(isset($_GET['id']))
{
	 $qry = "update tbluser set status='Active',reg_date=CURDATE() where userid=".$_GET['id'];
	$rs = mysqli_query($con,$qry);
	if($rs)
	{
		echo "<script>alert('Record updated successfully...!!');window.location='verify_reg.php';</script>";
	}
}
if(isset($_GET['did']))
{
	$rs = mysqli_query($con,"update tbluser set status='Disapproved', reg_date=CURDATE() where userid=".$_GET['did']);
	if($rs)
	{
		echo "<script>alert('Record updated successfully...!!');window.location='verify_reg.php';</script>";
	}
}
?>

<div class="container">
	<div class="">
   <h3>View  Alumni account</h3>
  <div data-example-id="contextual-table">
    <table class="table table-bordered" id="dataTables">
		<thead>
  <tr>
    <th >#</th>
    <th > Name</th>
    <th >DOB</th>
    <th >Passout Year</th>
    <th >Course</th>
    <th>Occupation</th>
	<th >Region</th>
    <th >Membership Type</th>
    <th >Membership Fee</th>
    <th>Pay Type</th>
  </tr>
		</thead>
		<tbody>
  <?php
  $res = mysqli_query($con, "Select * from tbluser left join tblcourse on tbluser.courseid=tblcourse.courseid left join tblregion on tbluser.location=tblregion.locid where  (tbluser.status='Active')");
  $c = 1;
  if(mysqli_num_rows($res) > 0)
  {
	  while($row = mysqli_fetch_array($res))
	   {  echo "<tr>
		<td>".$c++."</td>
		<td>".$row['name']."</td>
		<td>".date("d-M-Y",strtotime($row['dob']))."</td>
		<td>".$row['pyear']."</td>
		<td>".$row['coursename']."</td>
		<td>".$row['occupation']."</td>
		<td>".$row['location']."</td>
		<td>".$row['membershiptype']."</td>
		<td>".$row['mfee']."</td>
		<td>".$row['paytype']."</td>
		</tr>";
	   }
  }
  else	  
	  {
		  echo "<tr><td colspan='7' style='text-align:center;'>Sorry!! No Records</td></tr>";
	  }
   /* ### */  ?>
		</tfoot>
</table>
<br>
<br>
</div>
</div>
</div>
<?php
include("footer.php");
?>
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.dataTables.min.css">

<script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>
<script>
/*
$(document).ready(function() {
    $('#dataTables').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'print'
        ]
    } );
} );
*/
</script>
<script>
$(document).ready(function() {
	
// Setup - add a text input to each footer cell
    $('#dataTables thead tr').clone(true).appendTo( '#dataTables thead' );
    $('#dataTables thead tr:eq(1) th').each( function (i) {
		if(i != 0)
		{
			var title = $(this).text();
			$(this).html( '<input type="text" class="form-control" placeholder="Search '+title+'" />' );
	 
			$( 'input', this ).on( 'keyup change', function () {
				if ( table.column(i).search() !== this.value ) {
					table
						.column(i)
						.search( this.value )
						.draw();
				}
			} );
		}
    } );
 
    var table = $('#dataTables').DataTable( {
        orderCellsTop: true,
        fixedHeader: true,
		dom: 'Bfrtip',
        buttons: [
            'print'
        ]
    } );
	
} );
</script>    