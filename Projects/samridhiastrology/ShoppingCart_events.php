<?php
//BindEvents Method @1-756DDBED
function BindEvents()
{
    global $shop_cart;
    global $purchase;
    $shop_cart->quantity->CCSEvents["OnValidate"] = "shop_cart_quantity_OnValidate";
    $shop_cart->CCSEvents["BeforeShowRow"] = "shop_cart_BeforeShowRow";
    $shop_cart->CCSEvents["BeforeShow"] = "shop_cart_BeforeShow";
    $purchase->purchase->CCSEvents["OnClick"] = "purchase_purchase_OnClick";
}
//End BindEvents Method

//shop_cart_quantity_OnValidate @65-210A1402
function shop_cart_quantity_OnValidate()
{
    $shop_cart_quantity_OnValidate = true;
//End shop_cart_quantity_OnValidate

//Validate Minimum Value @102-D138AD22
    global $shop_cart;
    if (strlen($shop_cart->quantity->GetText()) && $shop_cart->quantity->GetValue() < 1)
    {
        $shop_cart->quantity->Errors->addError("The value in field Quantity can't be less than 1.");
    }
//End Validate Minimum Value

//Close shop_cart_quantity_OnValidate @65-9F6899EA
    return $shop_cart_quantity_OnValidate;
}
//End Close shop_cart_quantity_OnValidate

//shop_cart_BeforeShowRow @62-AD35F743
function shop_cart_BeforeShowRow()
{
    $shop_cart_BeforeShowRow = true;
//End shop_cart_BeforeShowRow

//Custom Code @69-2A29BDB7
global $shop_cart;

  $shop_cart->SubTotal->SetValue($shop_cart->Price->GetValue() * $shop_cart->quantity->GetValue());

//End Custom Code

//Close shop_cart_BeforeShowRow @62-48EDD42E
    return $shop_cart_BeforeShowRow;
}
//End Close shop_cart_BeforeShowRow

//shop_cart_BeforeShow @62-24E7D9DC
function shop_cart_BeforeShow()
{
    $shop_cart_BeforeShow = true;
//End shop_cart_BeforeShow

//Custom Code @78-2A29BDB7
global $shop_cart;
global $shop_total;
global $purchase;
global $cart_is_empty;

  if ($shop_cart->ds->RecordsCount == 0) {
     $shop_cart->Visible = false;
     $shop_total->Visible = false; 
	 $purchase->Visible = false;
  } else {
	 $cart_is_empty->Visible = false;
  }

//End Custom Code

//Close shop_cart_BeforeShow @62-4EA87DA1
    return $shop_cart_BeforeShow;
}
//End Close shop_cart_BeforeShow

//purchase_purchase_OnClick @100-A60A5405
function purchase_purchase_OnClick()
{
    $purchase_purchase_OnClick = true;
//End purchase_purchase_OnClick

//Custom Code @101-2A29BDB7

  $db = new clsDBInternetDB();
  
  // Count Order Total
  $SQL = "SELECT SUM(price*quantity) as total " 
        ."FROM store_shopping_cart_items a, store_products b " 
        ."WHERE a.product_id=b.product_id AND " 
 	    ."shopping_cart_id =" . $db->ToSQL(CCGetCookie("shopping_cart_id"),ccsInteger);
  $db->query($SQL);
  if($db->next_record())  {
     $OrderTotal = $db->f("total");
  }

  // Create a new order
  $SQL = "INSERT INTO store_orders (order_date, order_status_id, total, user_id) VALUES (" 
         .$db->ToSQL(date("Y-m-d"),ccsDate) . ",1," 
	     .$db->ToSQL($OrderTotal,ccsFloat) . ","
	     .$db->ToSQL(CCGetSession("UserID"),ccsInteger). ")";
  $db->query($SQL);  

  // Get Order ID
  //This method is compatible with all databases (Note that it is unsafe while the multiple insertion is performed at the same time)
  //Specify the custom method for the database.
  $SQL = "SELECT MAX(order_id) FROM store_orders";
  $db->query($SQL);
  if ($db->next_record())  {
     $last_order_id = $db->f(0);
  }

  // Move items from user's shopping cart into the order
  $SQL = "SELECT a.product_id as product_id, a.quantity as quantity, price "
        ."FROM store_shopping_cart_items a, store_products b "
        ."WHERE a.product_id=b.product_id AND shopping_cart_id = " .$db->ToSQL(CCGetCookie("shopping_cart_id"),ccsInteger);
  $db->query($SQL);

  $db2 = new clsDBInternetDB();
  while ($db->next_record()) {
     $SQL = "INSERT INTO store_order_items (order_id, product_id, quantity, price ) " 
           ."VALUES (" . $db2->ToSQL($last_order_id,ccsInteger) 
           ."," . $db2->ToSQL($db->f("product_id"),ccsInteger)
           ."," . $db2->ToSQL($db->f("quantity"),ccsInteger) 
           ."," . $db2->ToSQL($db->f("price"),ccsFloat)
           .")";
    $db2->query($SQL);
  }
  $db2->close();

  // Delete items from user's shopping

  $db->query("DELETE FROM store_shopping_cart_items WHERE shopping_cart_id = ".$db->ToSQL(CCGetCookie("shopping_cart_id"),ccsInteger));

  $db->close();
//End Custom Code

//Close purchase_purchase_OnClick @100-1CDF43E1
    return $purchase_purchase_OnClick;
}
//End Close purchase_purchase_OnClick


?>
