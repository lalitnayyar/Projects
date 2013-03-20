<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="73" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="74" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="63" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="products" connection="InternetDB" dataSource="store_products" pageSizeLimit="100" pageSize="False" wizardCaption="List of Store Products " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Grid/SimpleColumnar.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Navigator id="64" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
      &lt;!-- BEGIN First_On --&gt;&lt;a href=&quot;{First_URL}&quot;&gt;First &lt;/a&gt; &lt;!-- END First_On --&gt;
      &lt;!-- BEGIN Prev_On --&gt;&lt;a href=&quot;{Prev_URL}&quot;&gt;Prev&lt;/a&gt;&lt;!-- END Prev_On --&gt;
      &lt;!-- BEGIN Pages --&gt;
      &lt;!-- BEGIN Page_On --&gt;&lt;a href=&quot;{Page_URL}&quot;&gt;{Page_Number}&lt;/a&gt;&amp;nbsp;&lt;!-- END Page_On --&gt;
      &lt;!-- BEGIN Page_Off --&gt;{Page_Number}&amp;nbsp;&lt;!-- END Page_Off --&gt;&lt;!-- END Pages --&gt;of {Total_Pages}&amp;nbsp; 
      &lt;!-- BEGIN Next_On --&gt;&lt;a href=&quot;{Next_URL}&quot;&gt;Next &lt;/a&gt; &lt;!-- END Next_On --&gt;
      &lt;!-- BEGIN Last_On --&gt;&lt;a href=&quot;{Last_URL}&quot;&gt;Last &lt;/a&gt; &lt;!-- END Last_On --&gt;&lt;/span&gt;&lt;!-- END Navigator Navigator --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
						<ImageLink id="7" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="image_url" fieldSource="image_url" wizardCaption="Image Url" wizardSize="50" wizardMaxLength="100" wizardIsPassword="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="ProductDetail.ccp" visible="Yes">
							<Components/>
							<Events>
							</Events>
							<LinkParameters>
								<LinkParameter id="36" sourceType="DataField" name="product_id" source="product_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</ImageLink>
						<Link id="5" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="product_name" fieldSource="product_name" wizardCaption="Product Name" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="ProductDetail.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="11" sourceType="DataField" name="product_id" source="product_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="6" fieldSourceType="DBColumn" dataType="Float" html="False" name="price" fieldSource="price" format="$0.00">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="77" fieldSourceType="DBColumn" dataType="Text" html="False" name="products_found" PathID="Contentproductsproducts_found">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Retrieve number of records" actionCategory="Database" id="78"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="65" conditionType="Parameter" useIsNull="False" dataType="Integer" field="category_id" logicOperator="And" parameterSource="category_id" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="66" conditionType="Parameter" useIsNull="False" dataType="Text" field="product_name" leftBrackets="1" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" rightBrackets="0" searchConditionType="Contains"/>
						<TableParameter id="67" conditionType="Parameter" useIsNull="False" dataType="Memo" field="description" leftBrackets="0" logicOperator="And" parameterSource="s_keyword" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
						<TableParameter id="68" conditionType="Parameter" useIsNull="False" dataType="Float" field="price" logicOperator="And" parameterSource="price_from" parameterType="URL" searchConditionType="GreaterThan"/>
						<TableParameter id="69" conditionType="Parameter" useIsNull="False" dataType="Float" field="price" logicOperator="And" parameterSource="price_to" parameterType="URL" searchConditionType="LessThan"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="70" posHeight="180" posLeft="10" posTop="10" posWidth="132" tableName="store_products"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="71" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="72" dataType="Integer" fieldName="product_id" tableName="store_products"/>
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
		<Panel id="75" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="53" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="76" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="61" name="Categories" PathID="SidebarCategories" page="Categories.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
				<IncludePage id="62" name="Search" PathID="SidebarSearch" page="Search.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
				<IncludePage id="79" name="Recommended" PathID="SidebarRecommended" page="Recommended.ccp">
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
		<CodeFile id="Events" language="PHPTemplates" name="Products_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="Products.php" comment="//" forShow="True" url="Products.php"/>
		<CodeFile id="Events" language="PerlTemplates" name="Products_events.pl" comment="#" forShow="False"/>
		<CodeFile id="Code" language="PerlTemplates" name="Products.cgi" comment="#" forShow="True" url="Products.cgi"/>
		<CodeFile id="3" language="C#" name="Products.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Products.aspx"/>
		<CodeFile id="1" language="C#" name="Products.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="ProductsDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="Products.asp" forShow="True" url="Products.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="Products.aspx" forShow="True" url="Products.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="ProductsEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
