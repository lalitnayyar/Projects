<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="EditNews" SSLAccess="False" urlType="Relative" accessDeniedPage="Login.ccp" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="39" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="40" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Record id="30" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="news" connection="internet" dataSource="news" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="news_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit News " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject6/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentnews" editableComponentTypeString="Record" returnPage="AdminNews.ccp">
					<Components>
						<Button id="31" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="ContentnewsButton_Insert">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="32" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ContentnewsButton_Update">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="33" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="ContentnewsButton_Delete">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="34" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ContentnewsButton_Cancel">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextArea id="35" visible="Yes" fieldSourceType="DBColumn" dataType="Memo" name="news_desc" fieldSource="news_desc" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Desc" caption="Desc" wizardSize="48" wizardRows="3" PathID="Contentnewsnews_desc" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="36" conditionType="Parameter" useIsNull="False" field="news_id" parameterSource="news_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" old_temp_id="7"/>
						<TableParameter id="37" conditionType="Parameter" useIsNull="False" field="news_id" parameterSource="news_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="38" tableName="news" posWidth="100" posHeight="100" posLeft="0" posTop="0" old_temp_id="12"/>
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
<Panel id="41" visible="True" name="Menu" contentPlaceholder="Menu">
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
<Panel id="42" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components>
<IncludePage id="26" name="AdminMenu" PathID="Sidebar1AdminMenu" page="AdminMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="EditNews.php" comment="//" forShow="True" url="EditNews.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="EditNews.asp" comment="'" forShow="True" url="EditNews.asp"/>
		<CodeFile id="3" language="C#" name="EditNews.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="EditNews.aspx"/>
		<CodeFile id="1" language="C#" name="EditNews.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="EditNewsDataProvider.cs" path="\components" comment="//" forShow="False"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="11" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
