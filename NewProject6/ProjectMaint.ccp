<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="ProjectMaint" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="39" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="40" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Record id="29" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="projects" connection="intranet" dataSource="projects" errorSummator="Error" allowCancel="0" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="project_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Projects " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentprojects" customDeleteType="SQL" customDelete="UPDATE projects
SET project_is_active = 0
WHERE project_id = {project_id}" parameterTypeListName="ParameterTypeList" activeCollection="DSQLParameters">
					<Components>
						<Button id="30" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="ContentprojectsButton_Insert" returnPage="ProjectList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="31" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ContentprojectsButton_Update" returnPage="ProjectList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="32" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="ContentprojectsButton_Delete" returnPage="ProjectList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="33" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="project_name" fieldSource="project_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Name" caption="Name" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentprojectsproject_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<Button id="7" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ContentprojectsButton_Cancel" returnPage="ProjectList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="34" conditionType="Parameter" useIsNull="False" dataType="Integer" field="project_id" logicOperator="And" old_temp_id="8" orderNumber="1" parameterSource="project_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="35" posHeight="104" posLeft="10" posTop="10" posWidth="111" tableName="projects"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="36" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="37" dataType="Integer" fieldName="project_id" tableName="projects"/>
					</PKFields>
					<ISPParameters/>
					<ISQLParameters/>
					<IFormElements/>
					<USPParameters/>
					<USQLParameters/>
					<UConditions/>
					<UFormElements/>
					<DSPParameters/>
					<DSQLParameters>
						<SQLParameter id="38" variable="project_id" parameterType="URL" defaultValue="-1" dataType="Integer" parameterSource="project_id"/>
					</DSQLParameters>
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
<Panel id="41" visible="True" name="Menu" contentPlaceholder="Menu">
<Components>
<IncludePage id="24" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="42" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components>
<IncludePage id="25" name="Administration" PathID="Sidebar1Administration" page="Administration.ccp">
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
		<CodeFile id="codeRecord1" language="CFML" name="ProjectMaint_project.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="ProjectMaint.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="ProjectMaint.cfm"/>
		<CodeFile id="Code" language="PHPTemplates" name="ProjectMaint.php" comment="//" forShow="True" url="ProjectMaint.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="ProjectMaint.asp" comment="'" forShow="True" url="ProjectMaint.asp"/>
		<CodeFile id="3" language="C#" name="ProjectMaint.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="ProjectMaint.aspx"/>
		<CodeFile id="1" language="C#" name="ProjectMaint.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="ProjectMaintDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="1" language="C#InMotion" name="ProjectMaint.aspx" forShow="True" url="ProjectMaint.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="ProjectMaintEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="12" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
