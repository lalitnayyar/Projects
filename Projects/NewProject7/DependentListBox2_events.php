<?php
//BindEvents Method @1-6DF3B258
function BindEvents()
{
    global $store_productsSearch;
    global $CCSEvents;
    $store_productsSearch->s_product_id->CCSEvents["BeforeShow"] = "store_productsSearch_s_product_id_BeforeShow";
}
//End BindEvents Method

//store_productsSearch_s_product_id_BeforeShow @4-3FB5A24C
function store_productsSearch_s_product_id_BeforeShow(& $sender)
{
    $store_productsSearch_s_product_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $store_productsSearch; //Compatibility
//End store_productsSearch_s_product_id_BeforeShow

//Close store_productsSearch_s_product_id_BeforeShow @4-A9B88D2A
    return $store_productsSearch_s_product_id_BeforeShow;
}
//End Close store_productsSearch_s_product_id_BeforeShow

//Page_BeforeInitialize @1-4FB5559C
function Page_BeforeInitialize(& $sender)
{
    $Page_BeforeInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $DependentListBox2; //Compatibility
//End Page_BeforeInitialize

//PTAutoFill1 Initialization @31-8EA0B85D
    if ('store_productsSearchs_product_idPTAutoFill1' == CCGetParam('callbackControl')) {
        $Service = new Service();
        $Service->SetFormatter(new JsonFormatter());
//End PTAutoFill1 Initialization

//PTAutoFill1 DataSource @31-C21E2CC8
        $Service->DataSource = new clsDBInternetDB();
        $Service->ds = & $Service->DataSource;
        $Service->DataSource->SQL = "SELECT * \n" .
"FROM store_products {SQL_Where} {SQL_OrderBy}";
        $Service->SetDataSourceQuery(CCBuildSQL($Service->DataSource->SQL, $Service->DataSource->Where, $Service->DataSource->Order));
//End PTAutoFill1 DataSource

//PTAutoFill1 DataFields @31-CDB2B247
        $Service->AddDataSourceField('price');
        $Service->AddDataSourceField('image_url');
        $Service->AddDataSourceField('description');
        $Service->AddDataSourceField('product_name');
//End PTAutoFill1 DataFields

//PTAutoFill1 Execution @31-028A6C4C
        echo $Service->Execute();
//End PTAutoFill1 Execution

//PTAutoFill1 Loading @31-27890EF8
        exit;
    }
//End PTAutoFill1 Loading

//Close Page_BeforeInitialize @1-23E6A029
    return $Page_BeforeInitialize;
}
//End Close Page_BeforeInitialize


?>
