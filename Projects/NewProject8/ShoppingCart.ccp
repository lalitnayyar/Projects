<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" scriptingSupport="Automatic" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="Basic" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp" accessDeniedPage="Login.ccp">
	<Components>
		<Panel id="132" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="133" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Label id="79" fieldSourceType="CodeExpression" dataType="Text" html="False" editable="False" name="cart_is_empty" defaultValue="&quot;Shopping Cart is empty&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<EditableGrid id="62" urlType="Relative" secured="False" allowInsert="False" emptyRows="3" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="20" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="shop_cart" connection="InternetDB" dataSource="store_shopping_cart_items, store_products" pageSizeLimit="100" wizardCaption="List of Store Shopping Cart " wizardGridType="Tabular" wizardAltRecord="False" wizardRecordSeparator="False" deleteControl="Delete1" activeCollection="DConditions" activeTableType="customDelete" customUpdateType="Table" customUpdate="store_shopping_cart_items" customDeleteType="Table" customDelete="store_shopping_cart_items" wizardChangedThroughVQB="True">
					<Components>
						<Label id="64" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="product_id" fieldSource="product_name" required="False" caption="Product Id" wizardCaption="Product Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="71" fieldSourceType="DBColumn" dataType="Float" html="False" editable="False" name="Price" format="$0.00" fieldSource="price">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<TextBox id="65" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="quantity" fieldSource="quantity" required="True" caption="Quantity" wizardCaption="Quantity" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" visible="Yes">
							<Components/>
							<Events>
								<Event name="OnValidate" type="Server">
									<Actions>
										<Action actionName="Validate Minimum Value" actionCategory="Validation" id="102" minimumValue="1" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</TextBox>
						<Label id="72" fieldSourceType="DBColumn" dataType="Float" html="False" editable="False" name="SubTotal" format="$0.00">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Panel id="103" visible="True" ajax="False" name="Delete1_Panel">
							<Components>
								<CheckBox id="66" fieldSourceType="CodeExpression" dataType="Boolean" editable="True" name="Delete1" checkedValue="true" uncheckedValue="false" wizardCaption="Delete" wizardUseTemplateBlock="True" visible="Yes" defaultValue="Unchecked">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</CheckBox>
							</Components>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
						<Button id="67" urlType="Relative" enableValidation="True" isDefault="False" name="Submit" operation="Submit" wizardCaption="Submit">
							<Components/>
							<Events>
								<Event name="OnClick" type="Client">
									<Actions>
										<Action actionName="Confirmation Message" actionCategory="General" id="68" message="Submit records?" eventType="Client"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events>
						<Event name="BeforeShowRow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="69" eventType="Server"/>
							</Actions>
						</Event>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="78" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="123" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="-1" field="shopping_cart_id" logicOperator="And" orderNumber="2" parameterSource="shopping_cart_id" parameterType="Cookie" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="124" posHeight="120" posLeft="10" posTop="10" posWidth="148" tableName="store_shopping_cart_items"/>
						<JoinTable id="125" posHeight="180" posLeft="179" posTop="10" posWidth="132" tableName="store_products"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="126" conditionType="Equal" fieldLeft="store_shopping_cart_items.product_id" fieldRight="store_products.product_id" joinType="inner" tableLeft="store_shopping_cart_items" tableRight="store_products"/>
					</JoinLinks>
					<Fields>
						<Field id="127" fieldName="store_shopping_cart_items.*" tableName="store_shopping_cart_items"/>
						<Field id="128" fieldName="product_name" tableName="store_products"/>
						<Field id="129" fieldName="price" tableName="store_products"/>
					</Fields>
					<PKFields>
						<PKField id="130" dataType="Integer" fieldName="shopping_cart_item_id" tableName="store_shopping_cart_items"/>
						<PKField id="131" dataType="Integer" fieldName="product_id" tableName="store_products"/>
					</PKFields>
					<ISPParameters/>
					<ISQLParameters/>
					<IFormElements>
						<CustomParameter id="75" field="quantity" dataType="Integer" parameterType="Control" parameterSource="quantity"/>
					</IFormElements>
					<USPParameters/>
					<USQLParameters/>
					<UConditions>
						<TableParameter id="89" conditionType="Parameter" useIsNull="False" field="shopping_cart_item_id" dataType="Integer" searchConditionType="Equal" parameterSource="shopping_cart_item_id" parameterType="DataSourceColumn" logicOperator="And"/>
					</UConditions>
					<UFormElements>
						<CustomParameter id="77" field="quantity" dataType="Integer" parameterType="Control" parameterSource="quantity"/>
					</UFormElements>
					<DSPParameters/>
					<DSQLParameters/>
					<DConditions>
						<TableParameter id="90" conditionType="Parameter" useIsNull="False" field="shopping_cart_item_id" dataType="Integer" searchConditionType="Equal" parameterSource="shopping_cart_item_id" parameterType="DataSourceColumn" logicOperator="And"/>
					</DConditions>
					<SecurityGroups/>
					<Attributes>
					</Attributes>
					<Features/>
				</EditableGrid>
				<Record id="99" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="purchase" actionPage="PrepareCheckOut" errorSummator="Error" wizardFormMethod="post">
					<Components>
						<Button id="100" urlType="Relative" enableValidation="True" isDefault="False" name="purchase" wizardCaption="Submit" returnPage="PayFlow.ccp">
							<Components/>
							<Events>
								<Event name="OnClick" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="101" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
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
					<PKFields/>
				</Record>
				<Record id="39" sourceType="SQL" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="shop_total" actionPage="ShoppingCart" errorSummator="Error" wizardFormMethod="post" connection="InternetDB" parameterTypeListName="ParameterTypeList" activeCollection="SQLParameters" dataSource="select sum(price*quantity) as total  from store_shopping_cart_items a, store_products b where a.product_id=b.product_id and shopping_cart_id = {shopping_cart_id}">
					<Components>
						<Label id="40" fieldSourceType="DBColumn" dataType="Float" html="False" editable="True" hasErrorCollection="True" name="total" fieldSource="total" format="$0.00">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="74" variable="shopping_cart_id" parameterType="Cookie" dataType="Integer" parameterSource="shopping_cart_id" defaultValue="-1"/>
					</SQLParameters>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
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
					<PKFields/>
				</Record>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="134" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="120" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="135" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="122" name="Categories" PathID="SidebarCategories" page="Categories.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
				<IncludePage id="121" name="Search" PathID="SidebarSearch" page="Search.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
				<IncludePage id="136" name="Recommended" PathID="SidebarRecommended" page="Recommended.ccp">
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
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="ShoppingCart_events.asp" comment="'"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="ShoppingCart.asp" name="ShoppingCart.asp" comment="'"/>
		<CodeFile id="Events" language="PHPTemplates" name="ShoppingCart_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="ShoppingCart.php" comment="//" forShow="True" url="ShoppingCart.php"/>
		<CodeFile id="Events" language="PerlTemplates" name="ShoppingCart_events.pl" comment="#" forShow="False"/>
		<CodeFile id="Code" language="PerlTemplates" name="ShoppingCart.cgi" comment="#" forShow="True" url="ShoppingCart.cgi"/>
		<CodeFile id="codeRecord1" language="CFML" name="ShoppingCart_shop_total.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeRecord2" language="CFML" name="ShoppingCart_purchase.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeEG1" language="CFML" name="ShoppingCart_shop_cart.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="ShoppingCart.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="ShoppingCart.cfm"/>
		<CodeFile id="codeRecord1" language="CFMLTemplates" name="ShoppingCart_shop_total.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeRecord2" language="CFMLTemplates" name="ShoppingCart_purchase.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeEG1" language="CFMLTemplates" name="ShoppingCart_shop_cart.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="ShoppingCart.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="ShoppingCart.cfm"/>
		<CodeFile id="3" language="VB" name="ShoppingCart.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="ShoppingCart.aspx"/>
		<CodeFile id="1" language="VB" name="ShoppingCart.aspx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="ShoppingCartDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="1" language="C#" name="ShoppingCart.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="shop_cartDataObject62" language="ServletTemplates" name="shop_cartDataObject.java" path="\CCSBuild\src\ShoppingCart\" comment="//" forShow="False"/>
		<CodeFile id="shop_totalDataObject39" language="ServletTemplates" name="shop_totalDataObject.java" path="\CCSBuild\src\ShoppingCart\" comment="//" forShow="False"/>
		<CodeFile id="shop_cartRow62" language="ServletTemplates" name="shop_cartRow.java" path="\CCSBuild\src\ShoppingCart\" comment="//" forShow="False"/>
		<CodeFile id="shop_totalRow39" language="ServletTemplates" name="shop_totalRow.java" path="\CCSBuild\src\ShoppingCart\" comment="//" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="ShoppingCartAction.java" path="\CCSBuild\src\ShoppingCart\" comment="//" forShow="True" url="ShoppingCart.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="ShoppingCartModel.java" path="\CCSBuild\src\ShoppingCart\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="ShoppingCartView.java" path="\CCSBuild\src\ShoppingCart\" comment="//" forShow="False"/>
		<CodeFile id="shop_cartEditableGridEventHandler" language="ServletTemplates" name="shop_cartEditableGridHandler.java" path="\CCSBuild\src\ShoppingCart\" comment="//" forShow="False"/>
		<CodeFile id="purchasepurchaseEventHandler" language="ServletTemplates" name="purchasepurchaseHandler.java" path="\CCSBuild\src\ShoppingCart\" comment="//" forShow="False"/>
		<CodeFile id="Model" language="JSP" name="ShoppingCart.xml" path="." comment="&lt;!--" commentEnd="--&gt;" forShow="False"/>
		<CodeFile id="JSP" language="JSP" name="ShoppingCart.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;" forShow="True" url="ShoppingCart.jsp"/>
		<CodeFile id="Handlers" language="JSP" name="ShoppingCartHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="3" language="C#" forShow="True" url="ShoppingCart.aspx" name="ShoppingCart.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="2" language="C#" forShow="False" name="ShoppingCartDataProvider.cs" path="\components" comment="//"/>
		<CodeFile id="1" language="C#InMotion" name="ShoppingCart.aspx" forShow="True" url="ShoppingCart.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="ShoppingCartEvents.aspx.cs" forShow="False" url="ShoppingCartEvents.aspx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="ShoppingCart.aspx" forShow="True" url="ShoppingCart.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="ShoppingCartEvents.aspx.vb" forShow="True" url="ShoppingCartEvents.aspx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="38" groupID="1"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
