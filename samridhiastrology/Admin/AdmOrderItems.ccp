<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="67" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="68" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="57" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="order_items" connection="InternetDB" dataSource="store_order_items, store_products" orderBy="store_order_items.price" pageSizeLimit="100" pageSize="False" wizardCaption="List of Store Order Items, Store Products " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Label id="58" fieldSourceType="DBColumn" dataType="Text" html="False" name="product_name" fieldSource="product_name" wizardCaption="Product Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentorder_itemsproduct_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="59" fieldSourceType="DBColumn" dataType="Integer" html="False" name="quantity" fieldSource="quantity" wizardCaption="Quantity" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentorder_itemsquantity">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="60" fieldSourceType="DBColumn" dataType="Float" html="False" name="price" fieldSource="price" wizardCaption="Price" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentorder_itemsprice" format="$0.00">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="61" conditionType="Parameter" useIsNull="False" dataType="Integer" field="store_order_items.order_id" logicOperator="And" parameterSource="order_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="62" posHeight="136" posLeft="10" posTop="10" posWidth="95" tableName="store_order_items"/>
						<JoinTable id="63" posHeight="180" posLeft="126" posTop="10" posWidth="132" tableName="store_products"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="64" fieldLeft="store_order_items.product_id" fieldRight="store_products.product_id" joinType="left" tableLeft="store_order_items" tableRight="store_products"/>
					</JoinLinks>
					<Fields>
						<Field id="65" fieldName="store_order_items.*" tableName="store_order_items"/>
						<Field id="66" fieldName="product_name" tableName="store_products"/>
					</Fields>
					<PKFields/>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
				<Record id="48" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Order_Record" connection="InternetDB" dataSource="store_orders" errorSummator="Error" allowCancel="False" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="order_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Store Orders " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="ContentOrder_Record" editableComponentTypeString="Record" returnPage="AdmOrders.ccp">
					<Components>
						<Button id="51" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ContentOrder_RecordButton_Update">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Label id="52" fieldSourceType="DBColumn" dataType="Date" html="False" name="order_date" fieldSource="order_date" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Order Date" wizardAddNbsp="True" PathID="ContentOrder_Recordorder_date">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<ListBox id="53" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="order_status_id" fieldSource="order_status_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Order Status Id" caption="Order Status Id" connection="InternetDB" wizardEmptyCaption="Select Value" dataSource="store_statuses" boundColumn="status_id" textColumn="status_name" PathID="ContentOrder_Recordorder_status_id" required="True">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="54" tableName="store_statuses"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<Label id="55" fieldSourceType="DBColumn" dataType="Float" html="False" name="total" fieldSource="total" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Total" wizardAddNbsp="True" PathID="ContentOrder_Recordtotal" format="$0.00">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="order_id" fieldSource="order_id">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="50" conditionType="Parameter" useIsNull="False" field="order_id" parameterSource="order_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="56" tableName="store_orders"/>
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
		<Panel id="69" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="40" name="AdmHeader" PathID="MenuAdmHeader" page="AdmHeader.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="70" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="47" name="AdmMenu" PathID="SidebarAdmMenu" page="AdmMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdmOrderItems.php" comment="//" forShow="True" url="AdmOrderItems.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="AdmOrderItems.cgi" comment="#" forShow="True" url="AdmOrderItems.cgi"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdmOrderItems.asp" forShow="True" url="AdmOrderItems.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="32" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
