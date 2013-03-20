<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="EmployeeMaint" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="63" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="64" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="50" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="employees" connection="intranet" dataSource="employees" errorSummator="Error" allowCancel="0" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="emp_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Employees " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentemployees" activeCollection="DConditions" activeTableType="customDelete">
					<Components>
						<Button id="51" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ContentemployeesButton_Update" returnPage="EmployeeList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="52" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="ContentemployeesButton_Delete" returnPage="EmployeeList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="emp_name" fieldSource="emp_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Emp Name" caption="Emp Name" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentemployeesemp_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="54" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="email" fieldSource="email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Email" caption="Email" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentemployeesemail">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="emp_login" fieldSource="emp_login" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Emp Login" caption="Emp Login" required="False" unique="False" wizardSize="20" wizardMaxLength="20" PathID="Contentemployeesemp_login">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="emp_password" fieldSource="emp_password" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Emp Password" caption="Emp Password" required="False" unique="False" wizardSize="20" wizardMaxLength="20" PathID="Contentemployeesemp_password">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="57" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="group_id" fieldSource="group_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Group Id" caption="Group Id" required="False" unique="False" connection="intranet" wizardEmptyCaption="Select Value" dataSource="groups" boundColumn="group_id" textColumn="group_name" orderBy="group_name" PathID="Contentemployeesgroup_id">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="58" tableName="groups"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<Button id="7" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ContentemployeesButton_Cancel" returnPage="EmployeeList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="30" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="ContentemployeesButton_Insert" returnPage="EmployeeList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="59" conditionType="Parameter" useIsNull="False" dataType="Integer" field="emp_id" logicOperator="And" old_temp_id="22" orderNumber="1" parameterSource="emp_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="60" posHeight="180" posLeft="10" posTop="10" posWidth="151" tableName="employees"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="61" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="62" dataType="Integer" fieldName="emp_id" tableName="employees"/>
					</PKFields>
					<ISPParameters/>
					<ISQLParameters/>
					<IFormElements>
						<CustomParameter id="68" field="emp_name" dataType="Text" parameterType="Control" parameterSource="emp_name"/>
						<CustomParameter id="69" field="email" dataType="Text" parameterType="Control" parameterSource="email"/>
						<CustomParameter id="70" field="emp_login" dataType="Text" parameterType="Control" parameterSource="emp_login"/>
						<CustomParameter id="71" field="emp_password" dataType="Text" parameterType="Control" parameterSource="emp_password"/>
						<CustomParameter id="72" field="group_id" dataType="Integer" parameterType="Control" parameterSource="group_id"/>
					</IFormElements>
					<USPParameters/>
					<USQLParameters/>
					<UConditions/>
					<UFormElements/>
					<DSPParameters/>
					<DSQLParameters/>
					<DConditions>
						<TableParameter id="73" conditionType="Parameter" useIsNull="False" field="emp_id" dataType="Integer" parameterType="DataSourceColumn" parameterSource="emp_id" searchConditionType="Equal" logicOperator="And"/>
						<TableParameter id="74" conditionType="Parameter" useIsNull="False" field="emp_id" dataType="Integer" parameterType="URL" parameterSource="emp_id" searchConditionType="Equal" logicOperator="And" orderNumber="1"/>
					</DConditions>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Record>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="65" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="49" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="66" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="32" name="Administration" PathID="Sidebar1Administration" page="Administration.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="codeRecord1" language="CFML" name="EmployeeMaint_users.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="EmployeeMaint.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="EmployeeMaint.cfm"/>
		<CodeFile id="Code" language="PHPTemplates" name="EmployeeMaint.php" comment="//" forShow="True" url="EmployeeMaint.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="EmployeeMaint.asp" comment="'" forShow="True" url="EmployeeMaint.asp"/>
		<CodeFile id="3" language="C#" name="EmployeeMaint.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="EmployeeMaint.aspx"/>
		<CodeFile id="1" language="C#" name="EmployeeMaint.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="EmployeeMaintDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="1" language="C#InMotion" name="EmployeeMaint.aspx" forShow="True" url="EmployeeMaint.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="EmployeeMaintEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="14" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
