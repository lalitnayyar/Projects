<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" name="Account" webService="False" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" validateRequest="True" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="31" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="32" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Grid id="23" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="1" name="users" connection="internet" dataSource="users" pageSizeLimit="100" pageSize="False" wizardCaption="List of Users " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject6/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" name="user_login" fieldSource="user_login" wizardCaption="Login" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentusersuser_login">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="first_name" fieldSource="first_name" wizardCaption="First Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentusersfirst_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="last_name" fieldSource="last_name" wizardCaption="Last Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentuserslast_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" name="email" fieldSource="email" wizardCaption="Email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentusersemail">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="28" conditionType="Parameter" useIsNull="false" dataType="Integer" field="user_id" logicOperator="And" parameterSource="PortalUserID" parameterType="Session" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="29" posHeight="180" posLeft="10" posTop="10" posWidth="133" tableName="users"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<PKFields>
						<PKField id="30" dataType="Integer" fieldName="user_id" tableName="users"/>
					</PKFields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="33" visible="True" name="Menu" contentPlaceholder="Menu">
<Components>
<IncludePage id="22" name="Header" page="Header.ccp">
<Components/>
<Events/>
<Features/>
</IncludePage>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="34" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="Account.php" comment="//" forShow="True" url="Account.php"/>
		<CodeFile id="3" language="C#" name="Account.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Account.aspx"/>
		<CodeFile id="1" language="C#" name="Account.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AccountDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="Account.asp" comment="'" forShow="True" url="Account.asp"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="12" groupID="1"/>
		<Group id="13" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
