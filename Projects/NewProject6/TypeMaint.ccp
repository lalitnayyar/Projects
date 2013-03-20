<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" SSLAccess="False" accessDeniedPage="Login.ccp" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="29" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="30" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Record id="22" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="types" connection="intranet" dataSource="types" errorSummator="Error" allowCancel="0" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="type_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Types " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contenttypes">
					<Components>
						<Button id="23" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="ContenttypesButton_Insert" returnPage="TypesList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="24" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ContenttypesButton_Update" returnPage="TypesList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="type_name" fieldSource="type_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Name" caption="Name" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contenttypestype_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<Button id="7" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ContenttypesButton_Cancel" returnPage="TypesList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="26" conditionType="Parameter" useIsNull="False" field="type_id" parameterSource="type_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" old_temp_id="9"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="28" tableName="types"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<ISPParameters/>
					<ISQLParameters/>
					<IFormElements/>
					<USPParameters/>
					<USQLParameters/>
					<UConditions/>
					<UFormElements/>
					<DSPParameters/>
					<DSQLParameters/>
					<DConditions/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Record>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="31" visible="True" name="Menu" contentPlaceholder="Menu">
<Components>
<IncludePage id="20" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="32" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components>
<IncludePage id="21" name="Administration" PathID="Sidebar1Administration" page="Administration.ccp">
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
		<CodeFile id="Code" language="ASPTemplates" name="TypeMaint.asp" comment="'" forShow="True" url="TypeMaint.asp"/>
		<CodeFile id="3" language="C#" name="TypeMaint.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="TypeMaint.aspx"/>
		<CodeFile id="1" language="C#" name="TypeMaint.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="TypeMaintDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="TypeMaint.php" forShow="True" url="TypeMaint.php" comment="//"/>
		<CodeFile id="1" language="C#InMotion" name="TypeMaint.aspx" forShow="True" url="TypeMaint.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="TypeMaintEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="11" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
