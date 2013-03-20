<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="StatusMaint" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="32" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="33" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Record id="25" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="statuses" connection="intranet" dataSource="statuses" errorSummator="Error" allowCancel="0" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="status_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Statuses " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentstatuses">
					<Components>
						<Button id="26" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="ContentstatusesButton_Insert" returnPage="StatusesList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="27" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ContentstatusesButton_Update" returnPage="StatusesList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="status_name" fieldSource="status_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Status Name" caption="Status Name" required="False" unique="False" wizardSize="30" wizardMaxLength="30" PathID="Contentstatusesstatus_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<Button id="7" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ContentstatusesButton_Cancel" returnPage="StatusesList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="29" conditionType="Parameter" useIsNull="False" field="status_id" parameterSource="status_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" old_temp_id="8"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="31" tableName="statuses"/>
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
<Panel id="34" visible="True" name="Menu" contentPlaceholder="Menu">
<Components>
<IncludePage id="23" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="35" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components>
<IncludePage id="24" name="Administration" PathID="Sidebar1Administration" page="Administration.ccp">
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
		<CodeFile id="codeRecord1" language="CFML" name="StatusMaint_status.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="StatusMaint.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="StatusMaint.cfm"/>
		<CodeFile id="Code" language="PHPTemplates" name="StatusMaint.php" comment="//" forShow="True" url="StatusMaint.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="StatusMaint.asp" comment="'" forShow="True" url="StatusMaint.asp"/>
		<CodeFile id="3" language="C#" name="StatusMaint.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="StatusMaint.aspx"/>
		<CodeFile id="1" language="C#" name="StatusMaint.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="StatusMaintDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="1" language="C#InMotion" name="StatusMaint.aspx" forShow="True" url="StatusMaint.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="StatusMaintEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="11" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
