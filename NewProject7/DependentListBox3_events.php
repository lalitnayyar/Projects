<?php
//BindEvents Method @1-5A14533C
function BindEvents()
{
    global $directory_items_statesSearch;
    global $CCSEvents;
    $directory_items_statesSearch->s_subcategory_id->CCSEvents["BeforeShow"] = "directory_items_statesSearch_s_subcategory_id_BeforeShow";
    $directory_items_statesSearch->s_item_id->CCSEvents["BeforeShow"] = "directory_items_statesSearch_s_item_id_BeforeShow";
}
//End BindEvents Method

//directory_items_statesSearch_s_subcategory_id_BeforeShow @9-C4FAEF8F
function directory_items_statesSearch_s_subcategory_id_BeforeShow(& $sender)
{
    $directory_items_statesSearch_s_subcategory_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $directory_items_statesSearch; //Compatibility
//End directory_items_statesSearch_s_subcategory_id_BeforeShow

//Close directory_items_statesSearch_s_subcategory_id_BeforeShow @9-34F7B027
    return $directory_items_statesSearch_s_subcategory_id_BeforeShow;
}
//End Close directory_items_statesSearch_s_subcategory_id_BeforeShow

//directory_items_statesSearch_s_item_id_BeforeShow @10-CE00482C
function directory_items_statesSearch_s_item_id_BeforeShow(& $sender)
{
    $directory_items_statesSearch_s_item_id_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $directory_items_statesSearch; //Compatibility
//End directory_items_statesSearch_s_item_id_BeforeShow

//Close directory_items_statesSearch_s_item_id_BeforeShow @10-603630CA
    return $directory_items_statesSearch_s_item_id_BeforeShow;
}
//End Close directory_items_statesSearch_s_item_id_BeforeShow

//Page_BeforeInitialize @1-C8139EDF
function Page_BeforeInitialize(& $sender)
{
    $Page_BeforeInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $DependentListBox3; //Compatibility
//End Page_BeforeInitialize

//PTAutoFill1 Initialization @69-F1A0E172
    if ('directory_items_statesSearchs_item_idPTAutoFill1' == CCGetParam('callbackControl')) {
        $Service = new Service();
        $Service->SetFormatter(new JsonFormatter());
//End PTAutoFill1 Initialization

//PTAutoFill1 DataSource @69-33551591
        $Service->DataSource = new clsDBInternetDB();
        $Service->ds = & $Service->DataSource;
        $Service->DataSource->SQL = "SELECT * \n" .
"FROM directory_items {SQL_Where} {SQL_OrderBy}";
        $Service->SetDataSourceQuery(CCBuildSQL($Service->DataSource->SQL, $Service->DataSource->Where, $Service->DataSource->Order));
//End PTAutoFill1 DataSource

//PTAutoFill1 DataFields @69-4BC2A5A7
        $Service->AddDataSourceField('item_name');
        $Service->AddDataSourceField('address');
        $Service->AddDataSourceField('city');
        $Service->AddDataSourceField('zip');
        $Service->AddDataSourceField('state_name');
        $Service->AddDataSourceField('phone');
        $Service->AddDataSourceField('note');
        $Service->AddDataSourceField('email');
        $Service->AddDataSourceField('url');
        $Service->AddDataSourceField('url');
//End PTAutoFill1 DataFields

//PTAutoFill1 Execution @69-028A6C4C
        echo $Service->Execute();
//End PTAutoFill1 Execution

//PTAutoFill1 Loading @69-27890EF8
        exit;
    }
//End PTAutoFill1 Loading

//Close Page_BeforeInitialize @1-23E6A029
    return $Page_BeforeInitialize;
}
//End Close Page_BeforeInitialize


?>
