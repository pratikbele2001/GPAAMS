<?php
include("header.php");
if(!isset($_SESSION['type']))
{
	//echo "<script>window.location='index.php';</script>";
}
if(isset($_GET['id']))
{
	$rs = mysqli_query($con,"update tblstaff set status='Active' where staffid=".$_GET['id']);
	if($rs)
	{
		echo "<script>alert('Record updated successfully...!!');window.location='verify_staff.php';</script>";
	}
}
if(isset($_GET['did']))
{
	$rs = mysqli_query($con,"update tblstaff set status='Disapproved' where staffid=".$_GET['did']);
	if($rs)
	{
		echo "<script>alert('Record updated successfully...!!');window.location='verify_staff.php';</script>";
	}
}
?>	
<div class="container">
	<div class="page">
   <h3>View Staff Account</h3>
  <div class="bs-example" data-example-id="contextual-table">
    <table class="table table-bordered"  id="dataTables">
		<thead>
  <tr>
    <th>#</th>
	  <th>Photo</th>
    <th>Full Name</th>
    <th>Qualification</th>
    <th>Designation</th>
    <th>Date Of Join</th>
     <th>Address</th>
    <th>Contact No</th>
    <th>Email ID</th>
   </tr>
		</thead>
		<tbody>
    <?php
  $res = mysqli_query($con, "Select * from tblstaff where status='Active'");
  $c = 1;
  if(mysqli_num_rows($res) > 0)
  {
	  while($row = mysqli_fetch_array($res))
	  {
		echo "<tr>
		<td>".$c++."</td>
		<td>";
		if(file_exists('upload/staff/'.$row["staffphoto"]))
		{
		echo "<img src='upload/staff/".$row['staffphoto']."' width='100px' height='100px' alt='$row[1]'/>";
		}
		else
		{
		echo "<img src='images/821no-user-image.png' width='100px' height='100px' alt='$row[1]'/>";
		}
		echo "</td>
		<td>".$row['staffname']."</td>
		<td>".$row['qualification']."</td>
		<td>".$row['designation']."</td>
		<td>". date("d-M-Y",strtotime($row['dateof_join'])) ."</td>
		<td>".$row['address']."</td>
		<td>".$row['contactno']."</td>
		<td>".$row['emailid']."</td>
	   
	  </tr>";
	  }
   }
  else	  
	  {
		  echo "<tr><td colspan='10' style='text-align:center;'>Sorry!! No Records</td></tr>";
	  }
/* ### */  ?>
		</tfoot>
</table>
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
$(document).ready(function() {
	
// Setup - add a text input to each footer cell
    $('#dataTables thead tr').clone(true).appendTo( '#dataTables thead' );
    $('#dataTables thead tr:eq(1) th').each( function (i) {
		if(i != 0 && i != 1)
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