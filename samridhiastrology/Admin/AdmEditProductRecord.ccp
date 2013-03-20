<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="41" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="42" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="28" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="store_editorial_products" connection="InternetDB" dataSource="store_editorial_products" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="article_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Store Editorial Products " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentstore_editorial_products" returnPage="AdmEditProducts.ccp" removeParameters="article_id" customDeleteType="SQL" parameterTypeListName="ParameterTypeList" activeCollection="DSQLParameters" customDelete="UPDATE store_editorial_products SET is_active=0 WHERE article_id={article_id}">
					<Components>
						<Button id="29" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="Contentstore_editorial_productsButton_Insert">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="30" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="Contentstore_editorial_productsButton_Update">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="31" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="Contentstore_editorial_productsButton_Delete">
							<Components/>
							<Events>
								<Event name="OnClick" type="Client">
									<Actions>
										<Action actionName="Confirmation Message" actionCategory="General" id="32" message="Delete record?"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="33" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="Contentstore_editorial_productsButton_Cancel">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<ListBox id="34" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="editorial_cat_id" fieldSource="editorial_cat_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Editorial Cat Id" caption="Editorial Cat Id" required="False" connection="InternetDB" wizardEmptyCaption="Select Value" dataSource="store_editorial_categories" boundColumn="category_id" textColumn="category_name" PathID="Contentstore_editorial_productseditorial_cat_id">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<TextBox id="35" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="article_title" fieldSource="article_title" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Article Title" caption="Article Title" required="False" unique="False" wizardSize="50" wizardMaxLength="200" PathID="Contentstore_editorial_productsarticle_title">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextArea id="36" visible="Yes" fieldSourceType="DBColumn" dataType="Memo" name="article_desc" fieldSource="article_desc" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Article Desc" caption="Article Desc" required="False" unique="False" wizardSize="50" wizardRows="3" PathID="Contentstore_editorial_productsarticle_desc">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
						<ListBox id="37" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="product_id" fieldSource="product_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Product Id" caption="Product Id" required="False" unique="False" connection="InternetDB" wizardEmptyCaption="Select Value" dataSource="store_products" boundColumn="product_id" textColumn="product_name" PathID="Contentstore_editorial_productsproduct_id">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="38" conditionType="Parameter" useIsNull="False" field="article_id" parameterSource="article_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="39" tableName="store_editorial_products"/>
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
					<DSQLParameters>
						<SQLParameter id="40" variable="article_id" parameterType="URL" dataType="Text" parameterSource="article_id"/>
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
		<Panel id="43" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="26" name="AdmHeader" PathID="MenuAdmHeader" page="AdmHeader.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="44" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="27" name="AdmMenu" PathID="SidebarAdmMenu" page="AdmMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdmEditProductRecord.php" comment="//" forShow="True" url="AdmEditProductRecord.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="AdmEditProductRecord.cgi" comment="#" forShow="True" url="AdmEditProductRecord.cgi"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdmEditProductRecord.asp" comment="'" forShow="True" url="AdmEditProductRecord.asp"/>
		<CodeFile id="3" language="C#" name="AdmEditProductRecord.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="AdmEditProductRecord.aspx"/>
		<CodeFile id="1" language="C#" name="AdmEditProductRecord.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AdmEditProductRecordDataProvider.cs" path="\components" comment="//" forShow="False"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="4" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
