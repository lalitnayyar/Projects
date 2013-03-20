<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="74" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="75" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="66" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="store_products" connection="InternetDB" dataSource="store_products, store_categories" PathID="Contentstore_products">
					<Components>
						<Image id="67" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="image_url" fieldSource="image_url" PathID="Contentstore_productsimage_url">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Image>
						<Label id="68" fieldSourceType="DBColumn" dataType="Float" html="False" name="price" fieldSource="price" format="$0.00" PathID="Contentstore_productsprice">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="69" fieldSourceType="DBColumn" dataType="Memo" html="False" name="description1" fieldSource="description" PathID="Contentstore_productsdescription1">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="70" fieldSourceType="DBColumn" dataType="Text" html="False" name="product_name" fieldSource="product_name" PathID="Contentstore_productsproduct_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="86" fieldSourceType="DBColumn" dataType="Text" html="False" name="Category" fieldSource="category_name" PathID="Contentstore_productsCategory">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="90" conditionType="Parameter" useIsNull="False" dataType="Integer" field="product_id" logicOperator="And" parameterSource="product_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="87" posHeight="180" posLeft="10" posTop="10" posWidth="132" tableName="store_products"/>
						<JoinTable id="88" posHeight="104" posLeft="163" posTop="10" posWidth="123" schemaName="undefined" tableName="store_categories"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="89" conditionType="Equal" fieldLeft="store_products.category_id" fieldRight="store_categories.category_id" joinType="left" tableLeft="store_products" tableRight="store_categories"/>
					</JoinLinks>
					<Fields>
						<Field id="91" fieldName="store_products.*" tableName="store_products"/>
						<Field id="92" fieldName="category_name" tableName="store_categories"/>
					</Fields>
					<PKFields>
					</PKFields>
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
				<Record id="50" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="add_to_cart" connection="InternetDB" dataSource="store_shopping_cart_items" errorSummator="Error" allowCancel="False" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="shopping_cart_item_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Store Shopping Cart Items " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Record/SimpleDivRecord.ccp|userTemplate" PathID="Contentadd_to_cart" returnPage="ShoppingCart.ccp">
					<Components>
						<Button id="55" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="Contentadd_to_cartButton_Insert">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="quantity" fieldSource="quantity" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Quantity" caption="Quantity" wizardSize="10" wizardMaxLength="10" PathID="Contentadd_to_cartquantity" required="True" defaultValue="1">
							<Components/>
							<Events>
								<Event name="OnValidate" type="Server">
									<Actions>
										<Action actionName="Validate Minimum Value" actionCategory="Validation" id="59" minimumValue="1" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</TextBox>
						<Hidden id="57" fieldSourceType="DBColumn" dataType="Integer" name="product_id" fieldSource="product_id" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="Product Id" caption="Product Id" required="False" unique="False" PathID="Contentadd_to_cartproduct_id">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Hidden>
						<Hidden id="58" fieldSourceType="DBColumn" dataType="Integer" name="shopping_cart_id" fieldSource="shopping_cart_id" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="Shopping Cart Id" caption="Shopping Cart Id" required="False" unique="False" PathID="Contentadd_to_cartshopping_cart_id">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Hidden>
					</Components>
					<Events>
						<Event name="BeforeInsert" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="60" name="shopping_cart_id" sourceType="Cookie" sourceName="shopping_cart_id" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="62" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="-1" field="shopping_cart_item_id" logicOperator="And" orderNumber="1" parameterSource="shopping_cart_item_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="65" tableName="store_shopping_cart_items"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="63" fieldName="*" tableName="store_shopping_cart_items"/>
					</Fields>
					<PKFields>
						<PKField id="64" dataType="Integer" fieldName="shopping_cart_item_id" tableName="store_shopping_cart_items"/>
					</PKFields>
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
		<Panel id="76" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="40" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="77" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="46" name="Categories" PathID="SidebarCategories" page="Categories.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
				<IncludePage id="45" name="Search" PathID="SidebarSearch" page="Search.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
				<IncludePage id="93" name="Recommended" PathID="SidebarRecommended" page="Recommended.ccp">
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
		<CodeFile id="Events" language="PHPTemplates" name="ProductDetail_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="ProductDetail.php" comment="//" forShow="True" url="ProductDetail.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="ProductDetail.asp" comment="'" forShow="True" url="ProductDetail.asp"/>
		<CodeFile id="Events" language="PerlTemplates" name="ProductDetail_events.pl" comment="#" forShow="False"/>
		<CodeFile id="Code" language="PerlTemplates" name="ProductDetail.cgi" comment="#" forShow="True" url="ProductDetail.cgi"/>
		<CodeFile id="3" language="C#" name="ProductDetail.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="ProductDetail.aspx"/>
		<CodeFile id="1" language="C#" name="ProductDetail.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="ProductDetailDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="1" language="C#InMotion" name="ProductDetail.aspx" forShow="True" url="ProductDetail.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="ProductDetailEvents.aspx.cs" forShow="False" comment="//"/>
		<CodeFile id="Events" language="ASPTemplates" name="ProductDetail_events.asp" forShow="False" comment="'"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="17" groupID="1"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
