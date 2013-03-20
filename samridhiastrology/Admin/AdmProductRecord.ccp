<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="48" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="49" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="30" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="store_products" connection="InternetDB" dataSource="store_products" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="product_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Store Products " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentstore_products" removeParameters="product_id" returnPage="AdmProducts.ccp" customDeleteType="SQL" parameterTypeListName="ParameterTypeList" activeCollection="DSQLParameters" editableComponentTypeString="Record" customDelete="UPDATE store_products
SET is_active=0
WHERE product_id={product_id}">
					<Components>
						<Button id="31" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="Contentstore_productsButton_Insert">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="32" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="Contentstore_productsButton_Update">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="33" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="Contentstore_productsButton_Delete">
							<Components/>
							<Events>
								<Event name="OnClick" type="Client">
									<Actions>
										<Action actionName="Confirmation Message" actionCategory="General" id="34" message="Delete record?" eventType="Client"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="35" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="Contentstore_productsButton_Cancel">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<ListBox id="36" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="category_id" fieldSource="category_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Category Id" caption="Category Id" required="True" connection="InternetDB" wizardEmptyCaption="Select Value" dataSource="store_categories" boundColumn="category_id" textColumn="category_name" PathID="Contentstore_productscategory_id">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="37" tableName="store_categories"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<TextBox id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="product_name" fieldSource="product_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Product Name" caption="Product Name" wizardSize="50" wizardMaxLength="250" PathID="Contentstore_productsproduct_name" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="39" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="price" fieldSource="price" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Price" caption="Price" required="True" wizardSize="20" wizardMaxLength="20" PathID="Contentstore_productsprice">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="image_url" fieldSource="image_url" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Image Url" caption="Image Url" required="False" unique="False" wizardSize="50" wizardMaxLength="100" PathID="Contentstore_productsimage_url">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextArea id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Memo" name="description1" fieldSource="description" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Description" caption="Description" required="False" unique="False" wizardSize="50" wizardRows="3" PathID="Contentstore_productsdescription1">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
						<CheckBox id="42" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="is_recommended" fieldSource="is_recommended" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Is Recommended" checkedValue="1" uncheckedValue="0" PathID="Contentstore_productsis_recommended" defaultValue="Unchecked">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</CheckBox>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="43" conditionType="Parameter" useIsNull="False" dataType="Integer" field="product_id" logicOperator="And" orderNumber="1" parameterSource="product_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="44" posHeight="180" posLeft="10" posTop="10" posWidth="132" tableName="store_products"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="45" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="46" dataType="Integer" fieldName="product_id" tableName="store_products"/>
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
						<SQLParameter id="47" variable="product_id" parameterType="URL" dataType="Text" parameterSource="product_id"/>
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
		<Panel id="50" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="28" name="AdmHeader" PathID="MenuAdmHeader" page="AdmHeader.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="51" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="29" name="AdmMenu" PathID="SidebarAdmMenu" page="AdmMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdmProductRecord.php" comment="//" forShow="True" url="AdmProductRecord.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="AdmProductRecord.cgi" comment="#" forShow="True" url="AdmProductRecord.cgi"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdmProductRecord.asp" comment="'" forShow="True" url="AdmProductRecord.asp"/>
		<CodeFile id="3" language="C#" name="AdmProductRecord.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="AdmProductRecord.aspx"/>
		<CodeFile id="1" language="C#" name="AdmProductRecord.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AdmProductRecordDataProvider.cs" path="\components" comment="//" forShow="False"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="4" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
