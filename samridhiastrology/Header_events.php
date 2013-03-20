<?php
// //Events @1-F81417CB

//Header_AfterInitialize @1-C505B937
function Header_AfterInitialize()
{
    $Header_AfterInitialize = true;
//End Header_AfterInitialize

//Custom Code @13-DBA303E4
// -------------------------
    global $Header;
    // Write your own code here.
	
    $db = new clsDBInternetDB();
    $Cart_ID = 0;
    //The validation of the value stored in a cookie
    if (strlen(CCGetCookie("shopping_cart_id")) > 0) {
       $Cart_ID = CCDLookUp("COUNT(shopping_cart_id)","store_shopping_carts","shopping_cart_id=". $db->ToSql(CCGetCookie("shopping_cart_id"),ccsInteger), $db);
    }  
    if ($Cart_ID == 0) {
      
      //Format the current date
		$DBCurrentDate = CCFormatDate(time(),$db->DateFormat);
  
		$SQL = "INSERT INTO store_shopping_carts (date_add) VALUES (" . $db->ToSQL($DBCurrentDate,ccsDate) . ")";
		$db->query($SQL);
		$SQL = "SELECT MAX(shopping_cart_id) FROM store_shopping_carts";
		$db->query($SQL);
		if($db->next_record())  {
			$last_cart_id = $db->f(0);
		}
		setcookie ("shopping_cart_id", $last_cart_id, time() + 3600*24*365);  
	}
    $db->close();

// -------------------------
//End Custom Code

//Close Header_AfterInitialize @1-D1367498
    return $Header_AfterInitialize;
}
//End Close Header_AfterInitialize
?>
