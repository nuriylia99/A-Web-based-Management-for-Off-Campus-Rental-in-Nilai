<?php
// (A) CONNECT TO DATABASE - CHANGE SETTINGS TO YOUR OWN!
$dbHost = "localhost";
$dbName = "irental";
$dbChar = "utf8";
$dbUser = "root";
$dbPass = "";
try {
  $pdo = new PDO(
    "mysql:host=$dbHost;dbname=$dbName;charset=$dbChar",
    $dbUser, $dbPass, [
      PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
      PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_NAMED
    ]
  );
} catch (Exception $ex) { exit($ex->getMessage()); }

// (B) HTTP CSV HEADERS
header("Content-Type: application/octet-stream");
header("Content-Transfer-Encoding: Binary");
header("Content-disposition: attachment; filename=\"RentalHouse.csv\"");
 
// (C) GET USERS FROM DATABASE + DIRECT OUTPUT

$stmt = $pdo->prepare("SELECT * FROM `tblhouse`");
$stmt->execute();
while ($row = $stmt->fetch()) {
  
  echo implode(",", [$row["HouseTitle"], $row["HouseLocation"], $row["PricePerMonth"], $row["PriceRange"], $row["FurnishingType"], $row["ContractYear"], $row["HouseCapacity"], $row["ContactNo"]]);
  echo "\r\n";
  
}