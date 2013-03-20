<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="32" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="33" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="25" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="store_editorial" connection="InternetDB" dataSource="store_editorial_categories" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="category_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Store Editorial Categories " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentstore_editorial" editableComponentTypeString="Record" returnPage="AdmEditCategories.ccp" removeParameters="category_id">
					<Components>
						<Button id="26" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="Contentstore_editorialButton_Insert">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="27" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="Contentstore_editorialButton_Update">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="28" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="Contentstore_editorialButton_Cancel">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="29" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="category_name" fieldSource="category_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Category Name" caption="Category Name" wizardSize="50" wizardMaxLength="50" PathID="Contentstore_editorialcategory_name" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="30" conditionType="Parameter" useIsNull="False" field="category_id" parameterSource="category_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="31" tableName="store_editorial_categories"/>
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
				<IncludePage id="23" name="AdmHeader" PathID="MenuAdmHeader" page="AdmHeader.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="35" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="24" name="AdmMenu" PathID="SidebarAdmMenu" page="AdmMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdmEditCategoryRecord.php" comment="//" forShow="True" url="AdmEditCategoryRecord.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="AdmEditCategoryRecord.cgi" comment="#" forShow="True" url="AdmEditCategoryRecord.cgi"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdmEditCategoryRecord.asp" comment="'" forShow="True" url="AdmEditCategoryRecord.asp"/>
		<CodeFile id="3" language="C#" name="AdmEditCategoryRecord.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="AdmEditCategoryRecord.aspx"/>
		<CodeFile id="1" language="C#" name="AdmEditCategoryRecord.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AdmEditCategoryRecordDataProvider.cs" path="\components" comment="//" forShow="False"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="4" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
