<?php

$db = mysqli_connect('localhost', 'root', '', 'wog_db');

if($db->connect_errno > 0){
    die('Unable to connect to database [' . $db->connect_error . ']');
}

$sql = 'SELECT p.pID,p.pName, h.hName, i.iName
        FROM person p, house h, item i
        WHERE p.is_member_of = h.hID and p.iID = i.iID
		GROUP by p.pID';
		
		

$result = mysqli_query($db, $sql);

$sqlCount = 'SELECT COUNT(*) as count FROM person';
$resultCount = mysqli_query($db, $sqlCount);
$rowCount = mysqli_fetch_assoc($resultCount);
$count = $rowCount['count'];

	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>World of Galdor</title>

<style type="text/css">
<!--
body,td,th {
	font-family: Georgia, Times New Roman, Times, serif;
	font-size: 16px;
	color: #FFFFFF;
}
body {
	background-color: #000000;
}
.style1 {font-size: 60px}
.style6 {
	font-size: 18px;
	color: #999999;
}
.style7 {color: #009999}
.style8 {color: #999999}
.style15 {color: #666699}
-->
</style></head>

<body>
<div align="center">
  <p class="style1 style7">Welcome to World of Gald<span class="style15">&oslash;</span>r</p>
  <span class="style6">Here are the people in this merciless world. </span><span class="style8"><br />
  </span><br />
  <br />
  
  <table width="541" style = "border: 1px dashed">
    <thead>
    <tr>
        <th width="88" bgcolor="#333333" class="style8">Person ID</th>
        <th width="264" bgcolor="#333333" class="style8">Person Name</th>
        <th width="129" bgcolor="#333333" class="style8">Is Member Of</th>
        <th width="40" bgcolor="#333333" class="style8">Item</th>
    </tr>
    </thead>
    <tbody>


<?php

	while($row = mysqli_fetch_assoc($result)) {
    $pid = $row['pID'];
    $pname = $row['pName'];
    $house = $row['hName'];
    $item = $row['iName'];
	
    echo "<tr>
          <td><font color='grey'><center>$pid</center></font></td>
          <td>$pname</td>
          <td><center><font color='red'>$house</font></center></td>
          <td><center><font color='green'>$item</font></center></td>
          </tr>";
}
 
?>
    </tbody>
</table>
</div>
</body>
</html>
