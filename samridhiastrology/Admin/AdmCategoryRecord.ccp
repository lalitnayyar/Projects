<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="40" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="41" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="26" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="store_categorie" connection="InternetDB" dataSource="store_categories" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="category_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Store Categories " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentstore_categorie" returnPage="AdmCategories.ccp" removeParameters="category_id" customDeleteType="SQL" parameterTypeListName="ParameterTypeList" activeCollection="DSQLParameters" customDelete="UPDATE store_categories SET category_is_active=0 WHERE category_id={category_id}">
					<Components>
						<Button id="27" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="Contentstore_categorieButton_Insert">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="28" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="Contentstore_categorieButton_Update">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="29" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="Contentstore_categorieButton_Delete">
							<Components/>
							<Events>
								<Event name="OnClick" type="Client">
									<Actions>
										<Action actionName="Confirmation Message" actionCategory="General" id="30" message="Delete record?" eventType="Client"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="31" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="Contentstore_categorieButton_Cancel">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="32" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="category_name" fieldSource="category_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Category Name" caption="Category Name" required="True" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentstore_categoriecategory_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="33" conditionType="Parameter" useIsNull="False" dataType="Integer" field="category_id" logicOperator="And" parameterSource="category_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="34" tableName="store_categories"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<PKFields>
						<PKField id="35" dataType="Integer" fieldName="category_id" tableName="store_categories"/>
					</PKFields>
					<ISPParameters/>
					<ISQLParameters/>
					<IFormElements/>
					<USPParameters/>
					<USQLParameters/>
					<UConditions>
						<TableParameter id="36" conditionType="Parameter" useIsNull="False" field="category_id" dataType="Integer" parameterType="DataSourceColumn" parameterSource="category_id" searchConditionType="Equal" logicOperator="And"/>
						<TableParameter id="37" conditionType="Parameter" useIsNull="False" field="category_id" dataType="Integer" parameterType="URL" parameterSource="category_id" searchConditionType="Equal" logicOperator="And"/>
					</UConditions>
					<UFormElements>
						<CustomParameter id="38" field="category_name" dataType="Text" parameterType="Control" parameterSource="category_name"/>
					</UFormElements>
					<DSPParameters/>
					<DSQLParameters>
						<SQLParameter id="39" variable="category_id" parameterType="URL" dataType="Text" parameterSource="category_id"/>
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
		<Panel id="42" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="24" name="AdmHeader" PathID="MenuAdmHeader" page="AdmHeader.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="43" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="25" name="AdmMenu" PathID="SidebarAdmMenu" page="AdmMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdmCategoryRecord.php" comment="//" forShow="True" url="AdmCategoryRecord.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="AdmCategoryRecord.cgi" comment="#" forShow="True" url="AdmCategoryRecord.cgi"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdmCategoryRecord.asp" comment="'" forShow="True" url="AdmCategoryRecord.asp"/>
		<CodeFile id="3" language="C#" name="AdmCategoryRecord.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="AdmCategoryRecord.aspx"/>
		<CodeFile id="1" language="C#" name="AdmCategoryRecord.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AdmCategoryRecordDataProvider.cs" path="\components" comment="//" forShow="False"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="12" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
