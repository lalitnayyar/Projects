<?php
//BindEvents Method @1-825B0AA9
function BindEvents()
{
    global $employees;
    global $CCSEvents;
    $employees->emp_name->CCSEvents["BeforeShow"] = "employees_emp_name_BeforeShow";
}
//End BindEvents Method

//employees_emp_name_BeforeShow @5-490D9824
function employees_emp_name_BeforeShow(& $sender)
{
    $employees_emp_name_BeforeShow = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $employees; //Compatibility
//End employees_emp_name_BeforeShow

//Feature Params Init @48-DC153F74
    $FeatureParams = array();
//End Feature Params Init

//UpdateDB1 Attributes @48-461DE9B4
    $Component->Attributes->SetValue('id', 'employeesemp_name');
    $FeatureParams['employeesemp_nameUpdateDB1'] = array('employeesemp_name', array('ctrlemp_id' => null, 'ctrlemployeestitle' => null, 'ctrlemployeesemp_name' => null, 'ctrlemployeesdepartment_id' => null, 'ctrlemployeesemail' => null, 'ctrlemployeesphone_home' => null, 'ctrlemployeesphone_work' => null, 'ctrlemployeesphone_cell' => null, 'ctrlemployeesfax' => null, 'ctrlemployeescity' => null, 'ctrlemployeeszip' => null, 'ctrlemployeesaddress' => null));
//End UpdateDB1 Attributes

//Feature Params Draw @48-0891796A
    $Component->Attributes->SetValue('postSnippet', CCBuildSnippet($FeatureParams));
//End Feature Params Draw

//PTAutocomplete1 BeforeShow @103-1618F2A8
    $Component->Attributes->SetValue('id', 'employeesemp_name');
//End PTAutocomplete1 BeforeShow

//Close employees_emp_name_BeforeShow @5-F0FEC5F1
    return $employees_emp_name_BeforeShow;
}
//End Close employees_emp_name_BeforeShow

//Page_BeforeInitialize @1-052AB648
function Page_BeforeInitialize(& $sender)
{
    $Page_BeforeInitialize = true;
    $Component = & $sender;
    $Container = & CCGetParentContainer($sender);
    global $Autocomplete; //Compatibility
//End Page_BeforeInitialize

//UpdateDB1 Initialization @48-ED4D7593
    global $CCSLocales;
    global $DefaultDateFormat;
    if ('employeesemp_nameUpdateDB1' == CCGetParam('callbackControl')) {
        $Service = new Service();
        $Service->SetDataSource(new clsDBIntranetDB());
        $Service->DataSource->ErrorBlock = "";
        $Service->InputFetcher = new PostInputFetcher();
//End UpdateDB1 Initialization

//UpdateDB1 DataSource @48-0C007948
        $Service->DataSource->UpdateFields["title"] = array("Name" => "title", "Value" => "", "DataType" => ccsText, "OmmitIfEmpty" => 1);
        $Service->DataSource->UpdateFields["emp_name"] = array("Name" => "emp_name", "Value" => "", "DataType" => ccsText, "OmmitIfEmpty" => 1);
        $Service->DataSource->UpdateFields["department_id"] = array("Name" => "department_id", "Value" => "", "DataType" => ccsInteger, "OmmitIfEmpty" => 1);
        $Service->DataSource->UpdateFields["email"] = array("Name" => "email", "Value" => "", "DataType" => ccsText, "OmmitIfEmpty" => 1);
        $Service->DataSource->UpdateFields["phone_home"] = array("Name" => "phone_home", "Value" => "", "DataType" => ccsText, "OmmitIfEmpty" => 1);
        $Service->DataSource->UpdateFields["phone_work"] = array("Name" => "phone_work", "Value" => "", "DataType" => ccsText, "OmmitIfEmpty" => 1);
        $Service->DataSource->UpdateFields["phone_cell"] = array("Name" => "phone_cell", "Value" => "", "DataType" => ccsText, "OmmitIfEmpty" => 1);
        $Service->DataSource->UpdateFields["fax"] = array("Name" => "fax", "Value" => "", "DataType" => ccsText, "OmmitIfEmpty" => 1);
        $Service->DataSource->UpdateFields["city"] = array("Name" => "city", "Value" => "", "DataType" => ccsText, "OmmitIfEmpty" => 1);
        $Service->DataSource->UpdateFields["zip"] = array("Name" => "zip", "Value" => "", "DataType" => ccsText, "OmmitIfEmpty" => 1);
        $Service->DataSource->UpdateFields["address"] = array("Name" => "address", "Value" => "", "DataType" => ccsText, "OmmitIfEmpty" => 1);
        $Service->DataSource->cp["title"] = new clsSQLParameter("ctrlemployeestitle", ccsText, "", "", $Service->GetInputData("ctrlemployeestitle"), NULL, false, $Service->DataSource->ErrorBlock);
        $Service->DataSource->cp["emp_name"] = new clsSQLParameter("ctrlemployeesemp_name", ccsText, "", "", $Service->GetInputData("ctrlemployeesemp_name"), NULL, false, $Service->DataSource->ErrorBlock);
        $Service->DataSource->cp["department_id"] = new clsSQLParameter("ctrlemployeesdepartment_id", ccsInteger, "", "", $Service->GetInputData("ctrlemployeesdepartment_id"), NULL, false, $Service->DataSource->ErrorBlock);
        $Service->DataSource->cp["email"] = new clsSQLParameter("ctrlemployeesemail", ccsText, "", "", $Service->GetInputData("ctrlemployeesemail"), NULL, false, $Service->DataSource->ErrorBlock);
        $Service->DataSource->cp["phone_home"] = new clsSQLParameter("ctrlemployeesphone_home", ccsText, "", "", $Service->GetInputData("ctrlemployeesphone_home"), NULL, false, $Service->DataSource->ErrorBlock);
        $Service->DataSource->cp["phone_work"] = new clsSQLParameter("ctrlemployeesphone_work", ccsText, "", "", $Service->GetInputData("ctrlemployeesphone_work"), NULL, false, $Service->DataSource->ErrorBlock);
        $Service->DataSource->cp["phone_cell"] = new clsSQLParameter("ctrlemployeesphone_cell", ccsText, "", "", $Service->GetInputData("ctrlemployeesphone_cell"), NULL, false, $Service->DataSource->ErrorBlock);
        $Service->DataSource->cp["fax"] = new clsSQLParameter("ctrlemployeesfax", ccsText, "", "", $Service->GetInputData("ctrlemployeesfax"), NULL, false, $Service->DataSource->ErrorBlock);
        $Service->DataSource->cp["city"] = new clsSQLParameter("ctrlemployeescity", ccsText, "", "", $Service->GetInputData("ctrlemployeescity"), NULL, false, $Service->DataSource->ErrorBlock);
        $Service->DataSource->cp["zip"] = new clsSQLParameter("ctrlemployeeszip", ccsText, "", "", $Service->GetInputData("ctrlemployeeszip"), NULL, false, $Service->DataSource->ErrorBlock);
        $Service->DataSource->cp["address"] = new clsSQLParameter("ctrlemployeesaddress", ccsText, "", "", $Service->GetInputData("ctrlemployeesaddress"), NULL, false, $Service->DataSource->ErrorBlock);
        $wp = new clsSQLParameters($Service->DataSource->ErrorBlock);
        $wp->AddParameter("1", "ctrlemp_id", ccsInteger, "", "", $Service->GetInputData("ctrlemp_id"), "", false);
        if(!$wp->AllParamsSet()) {
            $Service->DataSource->Errors->addError($CCSLocales->GetText("CCS_CustomOperationError_MissingParameters"));
        }
        if (!is_null($Service->DataSource->cp["title"]->GetValue()) and !strlen($Service->DataSource->cp["title"]->GetText()) and !is_bool($Service->DataSource->cp["title"]->GetValue())) 
            $Service->DataSource->cp["title"]->SetValue($Service->GetInputData("ctrlemployeestitle"));
        if (!is_null($Service->DataSource->cp["emp_name"]->GetValue()) and !strlen($Service->DataSource->cp["emp_name"]->GetText()) and !is_bool($Service->DataSource->cp["emp_name"]->GetValue())) 
            $Service->DataSource->cp["emp_name"]->SetValue($Service->GetInputData("ctrlemployeesemp_name"));
        if (!is_null($Service->DataSource->cp["department_id"]->GetValue()) and !strlen($Service->DataSource->cp["department_id"]->GetText()) and !is_bool($Service->DataSource->cp["department_id"]->GetValue())) 
            $Service->DataSource->cp["department_id"]->SetValue($Service->GetInputData("ctrlemployeesdepartment_id"));
        if (!is_null($Service->DataSource->cp["email"]->GetValue()) and !strlen($Service->DataSource->cp["email"]->GetText()) and !is_bool($Service->DataSource->cp["email"]->GetValue())) 
            $Service->DataSource->cp["email"]->SetValue($Service->GetInputData("ctrlemployeesemail"));
        if (!is_null($Service->DataSource->cp["phone_home"]->GetValue()) and !strlen($Service->DataSource->cp["phone_home"]->GetText()) and !is_bool($Service->DataSource->cp["phone_home"]->GetValue())) 
            $Service->DataSource->cp["phone_home"]->SetValue($Service->GetInputData("ctrlemployeesphone_home"));
        if (!is_null($Service->DataSource->cp["phone_work"]->GetValue()) and !strlen($Service->DataSource->cp["phone_work"]->GetText()) and !is_bool($Service->DataSource->cp["phone_work"]->GetValue())) 
            $Service->DataSource->cp["phone_work"]->SetValue($Service->GetInputData("ctrlemployeesphone_work"));
        if (!is_null($Service->DataSource->cp["phone_cell"]->GetValue()) and !strlen($Service->DataSource->cp["phone_cell"]->GetText()) and !is_bool($Service->DataSource->cp["phone_cell"]->GetValue())) 
            $Service->DataSource->cp["phone_cell"]->SetValue($Service->GetInputData("ctrlemployeesphone_cell"));
        if (!is_null($Service->DataSource->cp["fax"]->GetValue()) and !strlen($Service->DataSource->cp["fax"]->GetText()) and !is_bool($Service->DataSource->cp["fax"]->GetValue())) 
            $Service->DataSource->cp["fax"]->SetValue($Service->GetInputData("ctrlemployeesfax"));
        if (!is_null($Service->DataSource->cp["city"]->GetValue()) and !strlen($Service->DataSource->cp["city"]->GetText()) and !is_bool($Service->DataSource->cp["city"]->GetValue())) 
            $Service->DataSource->cp["city"]->SetValue($Service->GetInputData("ctrlemployeescity"));
        if (!is_null($Service->DataSource->cp["zip"]->GetValue()) and !strlen($Service->DataSource->cp["zip"]->GetText()) and !is_bool($Service->DataSource->cp["zip"]->GetValue())) 
            $Service->DataSource->cp["zip"]->SetValue($Service->GetInputData("ctrlemployeeszip"));
        if (!is_null($Service->DataSource->cp["address"]->GetValue()) and !strlen($Service->DataSource->cp["address"]->GetText()) and !is_bool($Service->DataSource->cp["address"]->GetValue())) 
            $Service->DataSource->cp["address"]->SetValue($Service->GetInputData("ctrlemployeesaddress"));
        $wp->Criterion[1] = $wp->Operation(opEqual, "emp_id", $wp->GetDBValue("1"), $Service->DataSource->ToSQL($wp->GetDBValue("1"), ccsInteger),false);
        $Where = 
             $wp->Criterion[1];
        $Service->DataSource->UpdateFields["title"]["Value"] = $Service->DataSource->cp["title"]->GetDBValue(true);
        $Service->DataSource->UpdateFields["emp_name"]["Value"] = $Service->DataSource->cp["emp_name"]->GetDBValue(true);
        $Service->DataSource->UpdateFields["department_id"]["Value"] = $Service->DataSource->cp["department_id"]->GetDBValue(true);
        $Service->DataSource->UpdateFields["email"]["Value"] = $Service->DataSource->cp["email"]->GetDBValue(true);
        $Service->DataSource->UpdateFields["phone_home"]["Value"] = $Service->DataSource->cp["phone_home"]->GetDBValue(true);
        $Service->DataSource->UpdateFields["phone_work"]["Value"] = $Service->DataSource->cp["phone_work"]->GetDBValue(true);
        $Service->DataSource->UpdateFields["phone_cell"]["Value"] = $Service->DataSource->cp["phone_cell"]->GetDBValue(true);
        $Service->DataSource->UpdateFields["fax"]["Value"] = $Service->DataSource->cp["fax"]->GetDBValue(true);
        $Service->DataSource->UpdateFields["city"]["Value"] = $Service->DataSource->cp["city"]->GetDBValue(true);
        $Service->DataSource->UpdateFields["zip"]["Value"] = $Service->DataSource->cp["zip"]->GetDBValue(true);
        $Service->DataSource->UpdateFields["address"]["Value"] = $Service->DataSource->cp["address"]->GetDBValue(true);
        $Service->DataSource->SQL = CCBuildUpdate("employees", $Service->DataSource->UpdateFields, $Service->DataSource);
        $Service->DataSource->SQL = CCBuildSQL($Service->DataSource->SQL, $Where, "");
        $Service->SetDataSourceQuery($Service->DataSource->SQL);
//End UpdateDB1 DataSource

//UpdateDB1 Execution @48-028A6C4C
        echo $Service->Execute();
//End UpdateDB1 Execution

//UpdateDB1 Tail @48-27890EF8
        exit;
    }
//End UpdateDB1 Tail

//PTAutocomplete1 Initialization @103-E6273E64
    global $Charset;
    if ('employeesemp_namePTAutocomplete1' == CCGetParam('callbackControl')) {
        $Service = new Service();
        $Service->SetFormatter(new ListFormatter());
//End PTAutocomplete1 Initialization

//PTAutocomplete1 DataSource @103-6402BEB7
        $Service->DataSource = new clsDBIntranetDB();
        $Service->ds = & $Service->DataSource;
        $Service->DataSource->SQL = "SELECT * \n" .
"FROM employees {SQL_Where} {SQL_OrderBy}";
        $Service->DataSource->Parameters["postemp_name"] = CCGetFromPost("emp_name", NULL);
        $Service->DataSource->wp = new clsSQLParameters();
        $Service->DataSource->wp->AddParameter("1", "postemp_name", ccsText, "", "", $Service->DataSource->Parameters["postemp_name"], -1, false);
        $Service->DataSource->wp->Criterion[1] = $Service->DataSource->wp->Operation(opBeginsWith, "emp_name", $Service->DataSource->wp->GetDBValue("1"), $Service->DataSource->ToSQL($Service->DataSource->wp->GetDBValue("1"), ccsText),false);
        $Service->DataSource->Where = 
             $Service->DataSource->wp->Criterion[1];
        $Service->SetDataSourceQuery(CCBuildSQL($Service->DataSource->SQL, $Service->DataSource->Where, $Service->DataSource->Order));
//End PTAutocomplete1 DataSource

//PTAutocomplete1 Charset @103-4F7C968C
        $Service->AddHttpHeader("Content-type", "text/html; charset=" . $Charset);
//End PTAutocomplete1 Charset

//PTAutocomplete1 DataFields @103-00EA49A9
        $Service->AddDataSourceField('emp_name');
//End PTAutocomplete1 DataFields

//PTAutocomplete1 Execution @103-D749E478
        $Service->DisplayHeaders();
        echo $Service->Execute();
//End PTAutocomplete1 Execution

//PTAutocomplete1 Tail @103-27890EF8
        exit;
    }
//End PTAutocomplete1 Tail

//PTAutoFill1 Initialization @105-672D0D4F
    if ('employeesemp_namePTAutoFill1' == CCGetParam('callbackControl')) {
        $Service = new Service();
        $Service->SetFormatter(new JsonFormatter());
//End PTAutoFill1 Initialization

//PTAutoFill1 DataSource @105-E7E42F90
        $Service->DataSource = new clsDBIntranetDB();
        $Service->ds = & $Service->DataSource;
        $Service->DataSource->SQL = "SELECT * \n" .
"FROM employees {SQL_Where} {SQL_OrderBy}";
        $Service->SetDataSourceQuery(CCBuildSQL($Service->DataSource->SQL, $Service->DataSource->Where, $Service->DataSource->Order));
//End PTAutoFill1 DataSource

//PTAutoFill1 DataFields @105-39085262
        $Service->AddDataSourceField('title',ccsText,"");
        $Service->AddDataSourceField('department_id',ccsInteger,"");
        $Service->AddDataSourceField('email',ccsText,"");
        $Service->AddDataSourceField('phone_home',ccsText,"");
        $Service->AddDataSourceField('phone_work',ccsText,"");
        $Service->AddDataSourceField('phone_cell',ccsText,"");
        $Service->AddDataSourceField('fax',ccsText,"");
        $Service->AddDataSourceField('city',ccsText,"");
        $Service->AddDataSourceField('zip',ccsText,"");
        $Service->AddDataSourceField('address',ccsText,"");
        $Service->AddDataSourceField('picture');
        $Service->AddDataSourceField('emp_id');
//End PTAutoFill1 DataFields

//PTAutoFill1 Execution @105-028A6C4C
        echo $Service->Execute();
//End PTAutoFill1 Execution

//PTAutoFill1 Loading @105-27890EF8
        exit;
    }
//End PTAutoFill1 Loading

//Close Page_BeforeInitialize @1-23E6A029
    return $Page_BeforeInitialize;
}
//End Close Page_BeforeInitialize


?>
