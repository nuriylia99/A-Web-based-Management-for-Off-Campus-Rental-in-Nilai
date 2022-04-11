<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['ologin'])==0)
	{	
header('location:index.php');
}
else{ 

if(isset($_POST['submit']))
  {
$HouseTitle=$_POST['HouseTitle'];
$HouseLocation=$_POST['HouseLocation'];
$HouseOverview=$_POST['HouseOverview'];
$PricePerMonth=$_POST['PricePerMonth'];
$PriceRange=$_POST['PriceRange'];
$FurnishingType=$_POST['FurnishingType'];
$ContractYear=$_POST['ContractYear'];
$HouseCapacity=$_POST['HouseCapacity'];
$ContactNo=$_POST['ContactNo'];
$airconditioner=$_POST['airconditioner'];
$WashingMachine=$_POST['WashingMachine'];
$Refrigerator=$_POST['Refrigerator'];
$WaterHeater=$_POST['WaterHeater'];
$KitchenCabinet=$_POST['KitchenCabinet'];
$Parking=$_POST['Parking'];
$Balcony=$_POST['Balcony'];
$Television=$_POST['Television'];
$CookerHobHooder=$_POST['CookerHobHooder'];
$WiFi=$_POST['WiFi'];
$WaterPurifier=$_POST['WaterPurifier'];
$DryerMachine=$_POST['DryerMachine'];
$id=intval($_GET['id']);

$sql="UPDATE tblhouse SET HouseTitle=:HouseTitle,HouseLocation=:HouseLocation,HouseOverview=:HouseOverview,PricePerMonth=:PricePerMonth,PriceRange=:PriceRange,FurnishingType=:FurnishingType,ContractYear=:ContractYear,HouseCapacity=:HouseCapacity,ContactNo=:ContactNo,AirConditioner=:airconditioner,WashingMachine=:WashingMachine,Refrigerator=:Refrigerator,WaterHeater=:WaterHeater,KitchenCabinet=:KitchenCabinet,Parking=:Parking,Balcony=:Balcony,Television=:Television,CookerHobHooder=:CookerHobHooder,WiFi=:WiFi,WaterPurifier=:WaterPurifier,DryerMachine=:DryerMachine WHERE id=:id ";
$query = $dbh->prepare($sql);
$query->bindParam(':HouseTitle',$HouseTitle,PDO::PARAM_STR);
$query->bindParam(':HouseLocation',$HouseLocation,PDO::PARAM_STR);
$query->bindParam(':HouseOverview',$HouseOverview,PDO::PARAM_STR);
$query->bindParam(':PricePerMonth',$PricePerMonth,PDO::PARAM_STR);
$query->bindParam(':PriceRange',$PriceRange,PDO::PARAM_STR);
$query->bindParam(':FurnishingType',$FurnishingType,PDO::PARAM_STR);
$query->bindParam(':ContractYear',$ContractYear,PDO::PARAM_STR);
$query->bindParam(':HouseCapacity',$HouseCapacity,PDO::PARAM_STR);
$query->bindParam(':ContactNo',$ContactNo,PDO::PARAM_STR);
$query->bindParam(':airconditioner',$airconditioner,PDO::PARAM_STR);
$query->bindParam(':WashingMachine',$WashingMachine,PDO::PARAM_STR);
$query->bindParam(':Refrigerator',$Refrigerator,PDO::PARAM_STR);
$query->bindParam(':WaterHeater',$WaterHeater,PDO::PARAM_STR);
$query->bindParam(':KitchenCabinet',$KitchenCabinet,PDO::PARAM_STR);
$query->bindParam(':Parking',$Parking,PDO::PARAM_STR);
$query->bindParam(':Balcony',$Balcony,PDO::PARAM_STR);
$query->bindParam(':Television',$Television,PDO::PARAM_STR);
$query->bindParam(':CookerHobHooder',$CookerHobHooder,PDO::PARAM_STR);
$query->bindParam(':WiFi',$WiFi,PDO::PARAM_STR);
$query->bindParam(':WaterPurifier',$WaterPurifier,PDO::PARAM_STR);
$query->bindParam(':DryerMachine',$DryerMachine,PDO::PARAM_STR);
$query->bindParam(':id',$id,PDO::PARAM_STR);
$query->execute();

$msg="Data updated successfully";


}


	?>
<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	
	<title>I-Rent Portal | Admin Edit House Info</title>

	<!-- Font awesome -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Sandstone Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap Datatables -->
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<!-- Bootstrap social button library -->
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<!-- Bootstrap select -->
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<!-- Bootstrap file input -->
	<link rel="stylesheet" href="css/fileinput.min.css">
	<!-- Awesome Bootstrap checkbox -->
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<!-- Admin Stye -->
	<link rel="stylesheet" href="css/style.css">
	<style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>
</head>

<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
	<?php include('includes/leftbar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Edit House</h2>

						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Basic Info</div>
									<div class="panel-body">
<?php if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php } ?>
<?php 
$id=intval($_GET['id']);
$sql ="SELECT tblhouse.*,tbllocation.LocationName,tbllocation.id as bid from tblhouse join tbllocation on tbllocation.id=tblhouse.HouseLocation where tblhouse.id=:id";
$query = $dbh -> prepare($sql);
$query-> bindParam(':id', $id, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>

<form method="post" class="form-horizontal" enctype="multipart/form-data">
<div class="form-group">
<label class="col-sm-2 control-label">House Title<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="HouseTitle" class="form-control" value="<?php echo htmlentities($result->HouseTitle)?>" required>
</div>
<label class="col-sm-2 control-label">Select Location<span style="color:red">*</span></label>
<div class="col-sm-4">
<select class="selectpicker" name="HouseLocation" required>
<option value="<?php echo htmlentities($result->bid);?>"><?php echo htmlentities($bdname=$result->LocationName); ?> </option>
<?php $ret="select id,LocationName from tbllocation";
$query= $dbh -> prepare($ret);
//$query->bindParam(':id',$id, PDO::PARAM_STR);
$query-> execute();
$resultss = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() > 0)
{
foreach($resultss as $results)
{
if($results->LocationName==$bdname)
{
continue;
} else{
?>
<option value="<?php echo htmlentities($results->id);?>"><?php echo htmlentities($results->LocationName);?></option>
<?php }}} ?>

</select>
</div>
</div>
											
<div class="hr-dashed"></div>
<div class="form-group">
<label class="col-sm-2 control-label">House Overview<span style="color:red">*</span></label>
<div class="col-sm-10">
<textarea class="form-control" name="HouseOverview" rows="3" required><?php echo htmlentities($result->HouseOverview);?></textarea>
</div>
</div>
<div class="form-group">
	<div>
<label class="col-sm-2 control-label">Price Range<span style="color:red">*</span></label>
<div class="col-sm-4">
<select class="selectpicker" name="PriceRange" required>
<option value="<?php echo htmlentities($result->bid);?>"><?php echo htmlentities($bdname=$result->PriceRange); ?> </option>
<option value=""> Select </option>
<option value="RM500-RM1000">RM500-RM1000</option>
<option value="RM1000-RM1500">RM1000-RM1500</option>
<option value="RM1500-RM2000">RM1500-RM2000</option>
<option value="MoreThanRM2000">More Than RM2000</option>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Price Per Month(in MYR)<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="PricePerMonth" class="form-control" value="<?php echo htmlentities($result->PricePerMonth);?>" required>
</div>
</div>
<div class="form-group">
</div>
<label class="col-sm-2 control-label">Furnishing<span style="color:red">*</span></label>
<div class="col-sm-4">
<select class="selectpicker" name="FurnishingType" required>
<option value="<?php echo htmlentities($result->bid);?>"><?php echo htmlentities($bdname=$result->FurnishingType); ?> </option>
<option value=""> Select </option>

<option value="FullyFurnished">Fully Furnished</option>
<option value="SemiFurnished">Semi Furnished</option>
<option value="Unfurnished">Unfurnished</option>
</select>
</div>
</div>

<div class="form-group">
<div>
<label class="col-sm-2 control-label">Contract Year<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="ContractYear" class="form-control" value="<?php echo htmlentities($result->ContractYear);?>" required>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Contact No<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="char" name="ContactNo" class="form-control" value="<?php echo htmlentities($result->ContactNo);?>" required>
</div>
</div>
<div class="form-group">
</div>
<label class="col-sm-2 control-label">House Capacity<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="HouseCapacity" class="form-control" value="<?php echo htmlentities($result->HouseCapacity);?>" required>
</div>
</div>
</div>
<div class="hr-dashed"></div>								
<div class="form-group">
<div class="col-sm-12">
<h4><i class="fas fa-centercode    "></i><b>House Images</b></h4>
</div>
</div>


<div class="form-group">
<div class="col-sm-4">
Image 1 <img src="img/houseimages/<?php echo htmlentities($result->Vimage1);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage1.php?imgid=<?php echo htmlentities($result->id)?>">Change Image 1</a>
</div>
<div class="col-sm-4">
Image 2<img src="img/houseimages/<?php echo htmlentities($result->Vimage2);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage2.php?imgid=<?php echo htmlentities($result->id)?>">Change Image 2</a>
</div>
<div class="col-sm-4">
Image 3<img src="img/houseimages/<?php echo htmlentities($result->Vimage3);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage3.php?imgid=<?php echo htmlentities($result->id)?>">Change Image 3</a>
</div>
</div>


<div class="form-group">
<div class="col-sm-4">
Image 4<img src="img/houseimages/<?php echo htmlentities($result->Vimage4);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage4.php?imgid=<?php echo htmlentities($result->id)?>">Change Image 4</a>
</div>
<div class="col-sm-4">


</div>
<div class="hr-dashed"></div>									

	
							

<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-heading">Facilities</div>
<div class="panel-body">


<div class="form-group">
<div class="col-sm-3">
<?php if($result->AirConditioner==1)
{?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="airconditioner" checked value="1">
<label for="inlineCheckbox1"> Air Conditioner </label>
</div>
<?php } else { ?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="airconditioner" value="1">
<label for="inlineCheckbox1"> Air Conditioner </label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->WashingMachine==1)
{?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="WashingMachine" checked value="1">
<label for="inlineCheckbox2"> Washing Machine </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="WashingMachine" value="1">
<label for="inlineCheckbox2"> Washing Machine </label>
</div>
<?php }?>
</div>
<div class="col-sm-3">
<?php if($result->Refrigerator==1)
{?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="antilockbrakingsys" checked value="1">
<label for="inlineCheckbox3"> Refrigerator </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="antilockbrakingsys" value="1">
<label for="inlineCheckbox3"> Refrigerator </label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->WaterHeater==1)
{
	?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="WaterHeater" checked value="1">
<label for="inlineCheckbox3"> Water Heater </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="WaterHeater" value="1">
<label  for="inlineCheckbox3"> Water Heater </label>
</div>
<?php } ?>
</div>


</div>
<div class="form-group">
<div class="col-sm-3">
<?php if($result->KitchenCabinet==1)
{?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="KitchenCabinet" checked value="1">
<label for="inlineCheckbox1"> Kitchen Cabinet </label>
</div>
<?php } else { ?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="KitchenCabinet" value="1">
<label for="inlineCheckbox1"> Kitchen Cabinet</label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->Parking==1)
{?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="Parking" checked value="1">
<label for="inlineCheckbox2"> Parking </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="Parking" value="1">
<label for="inlineCheckbox2"> Parking </label>
</div>
<?php }?>
</div>
<div class="col-sm-3">
<?php if($result->Balcony==1)
{?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="Balcony" checked value="1">
<label for="inlineCheckbox3"> Balcony </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="Balcony" value="1">
<label for="inlineCheckbox3"> Balcony </label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->Television==1)
{
	?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="Television" checked value="1">
<label for="inlineCheckbox3"> Television </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="Televisionr" value="1">
<label  for="inlineCheckbox3"> Television </label>
</div>
<?php } ?>
</div>
</div>


<div class="form-group">
<div class="col-sm-3">
<?php if($result->CookerHobHooder==1)
{
?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="CookerHobHooder" checked value="1">
<label for="inlineCheckbox1"> Cooker Hob/Hooder </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="CookerHobHooder" value="1">
<label for="inlineCheckbox1"> Cooker Hob/Hooder </label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->WiFi==1)
{
?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="WiFi" checked value="1">
<label for="inlineCheckbox2">WiFi</label>
</div>
<?php } else { ?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="WiFi" value="1">
<label for="inlineCheckbox2">WiFi</label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->WaterPurifier==1)
{
?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="WaterPurifier" checked value="1">
<label for="inlineCheckbox3"> Water Purifier </label>
</div>
<?php } else {?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="WaterPurifier" value="1">
<label for="inlineCheckbox3"> Water Purifier </label>
</div>
<?php } ?>
</div>
<div class="col-sm-3">
<?php if($result->DryerMachine==1)
{
?>
<div class="checkbox checkbox-success checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="DryerMachine" checked value="1">
<label for="inlineCheckbox3"> Dryer Machine </label>
</div>
<?php } else { ?>
<div class="checkbox checkbox-inline">
<input type="checkbox" id="inlineCheckbox1" name="DryerMachine" value="1">
<label for="inlineCheckbox3"> Dryer Machine </label>
</div>
<?php } ?>
</div>
</div>

<?php }} ?>


											<div class="form-group">
												<div class="col-sm-8 col-sm-offset-2" >
													
<button class="btn btn-primary" name="submit" type="submit" style="margin-top:4%">Save changes</button>
												</div>
											</div>

										</form>
									</div>
								</div>
							</div>
						</div>
						
					

					</div>
				</div>
				
			

			</div>
		</div>
	</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
<?php } ?>