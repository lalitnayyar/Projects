<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="103" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="104" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Link id="65" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="AdmEditProductRecord.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Grid id="78" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="store_editorial" connection="InternetDB" dataSource="store_editorial_categories, store_editorial_products, store_products" orderBy="editorial_cat_id" pageSizeLimit="100" pageSize="False" wizardCaption="List of Store Editorial Categories, Store Editorial Products, Store Products " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="79" visible="True" name="Sorter_article_title" column="article_title" wizardCaption="Article Title" wizardSortingType="Extended" wizardControl="article_title" wizardAddNbsp="False" PathID="Contentstore_editorialSorter_article_title" oldHTML="&lt;!-- BEGIN Sorter Sorter_article_title --&gt;&lt;span class=&quot;Sorter&quot;&gt;Article Title 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentstore_editorialSorter_article_title&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentstore_editorialSorter_article_title&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_article_title --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="80" visible="True" name="Sorter_category_name" column="category_name" wizardCaption="Category Name" wizardSortingType="Extended" wizardControl="category_name" wizardAddNbsp="False" PathID="Contentstore_editorialSorter_category_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_category_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;Editorial Category 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentstore_editorialSorter_category_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentstore_editorialSorter_category_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_category_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="81" visible="True" name="Sorter_product_name" column="product_name" wizardCaption="Product Name" wizardSortingType="Extended" wizardControl="product_name" wizardAddNbsp="False" PathID="Contentstore_editorialSorter_product_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_product_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;Product 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentstore_editorialSorter_product_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentstore_editorialSorter_product_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_product_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="82" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="True" hrefType="Page" preserveParameters="None" name="article_title" fieldSource="article_title" wizardCaption="Article Title" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="AdmEditProductRecord.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;article_title&quot;,&quot;hrefSource&quot;:&quot;AdmEditProductRecord.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;article_id&quot;,&quot;parameterName&quot;:&quot;article_id&quot;}}}" wizardAddNbsp="True" PathID="Contentstore_editorialarticle_title" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="83" sourceType="DataField" format="yyyy-mm-dd" name="article_id" source="article_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="84" fieldSourceType="DBColumn" dataType="Text" html="False" name="category_name" fieldSource="category_name" wizardCaption="Category Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentstore_editorialcategory_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="85" fieldSourceType="DBColumn" dataType="Text" html="False" name="product_name" fieldSource="product_name" wizardCaption="Product Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentstore_editorialproduct_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="86" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
      &lt;!-- BEGIN First_On --&gt;&lt;a href=&quot;{First_URL}&quot;&gt;First &lt;/a&gt; &lt;!-- END First_On --&gt;
      &lt;!-- BEGIN First_Off --&gt;First &lt;!-- END First_Off --&gt;
      &lt;!-- BEGIN Prev_On --&gt;&lt;a href=&quot;{Prev_URL}&quot;&gt;Prev &lt;/a&gt; &lt;!-- END Prev_On --&gt;
      &lt;!-- BEGIN Prev_Off --&gt;Prev &lt;!-- END Prev_Off --&gt;&amp;nbsp; 
      &lt;!-- BEGIN Pages --&gt;
      &lt;!-- BEGIN Page_On --&gt;&lt;a href=&quot;{Page_URL}&quot;&gt;{Page_Number}&lt;/a&gt;&amp;nbsp;&lt;!-- END Page_On --&gt;
      &lt;!-- BEGIN Page_Off --&gt;{Page_Number}&amp;nbsp;&lt;!-- END Page_Off --&gt;&lt;!-- END Pages --&gt;of&amp;nbsp;{Total_Pages}&amp;nbsp; 
      &lt;!-- BEGIN Next_On --&gt;&lt;a href=&quot;{Next_URL}&quot;&gt;Next &lt;/a&gt; &lt;!-- END Next_On --&gt;
      &lt;!-- BEGIN Next_Off --&gt;Next &lt;!-- END Next_Off --&gt;
      &lt;!-- BEGIN Last_On --&gt;&lt;a href=&quot;{Last_URL}&quot;&gt;Last &lt;/a&gt; &lt;!-- END Last_On --&gt;
      &lt;!-- BEGIN Last_Off --&gt;Last &lt;!-- END Last_Off --&gt;&lt;/span&gt;&lt;!-- END Navigator Navigator --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="112" conditionType="Parameter" useIsNull="False" dataType="Integer" field="store_editorial_products.is_active" logicOperator="And" parameterSource="1" parameterType="Expression" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="107" posHeight="88" posLeft="10" posTop="10" posWidth="100" tableName="store_editorial_categories"/>
						<JoinTable id="108" posHeight="152" posLeft="131" posTop="10" posWidth="120" tableName="store_editorial_products"/>
						<JoinTable id="109" posHeight="180" posLeft="272" posTop="10" posWidth="132" tableName="store_products"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="110" conditionType="Equal" fieldLeft="store_editorial_products.editorial_cat_id" fieldRight="store_editorial_categories.category_id" joinType="left" tableLeft="store_editorial_products" tableRight="store_editorial_categories"/>
						<JoinTable2 id="111" conditionType="Equal" fieldLeft="store_editorial_products.product_id" fieldRight="store_products.product_id" joinType="left" tableLeft="store_editorial_products" tableRight="store_products"/>
					</JoinLinks>
					<Fields>
						<Field id="113" fieldName="article_id" tableName="store_editorial_products"/>
						<Field id="114" fieldName="editorial_cat_id" tableName="store_editorial_products"/>
						<Field id="115" fieldName="article_title" tableName="store_editorial_products"/>
						<Field id="116" alias="store_editorial_products_product_id" fieldName="store_editorial_products.product_id" tableName="store_editorial_products"/>
						<Field id="117" alias="store_products_product_id" fieldName="store_products.product_id" tableName="store_products"/>
						<Field id="118" alias="store_products_category_id" fieldName="store_products.category_id" tableName="store_products"/>
						<Field id="119" fieldName="product_name" tableName="store_products"/>
						<Field id="120" fieldName="price" tableName="store_products"/>
						<Field id="121" fieldName="image_url" tableName="store_products"/>
						<Field id="122" fieldName="category_name" tableName="store_editorial_categories"/>
						<Field id="123" alias="store_editorial_categories_category_id" fieldName="store_editorial_categories.category_id" tableName="store_editorial_categories"/>
					</Fields>
					<PKFields/>
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
		<Panel id="105" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="76" name="AdmHeader" PathID="MenuAdmHeader" page="AdmHeader.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="106" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="77" name="AdmMenu" PathID="SidebarAdmMenu" page="AdmMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdmEditProducts.php" comment="//" forShow="True" url="AdmEditProducts.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="AdmEditProducts.cgi" comment="#" forShow="True" url="AdmEditProducts.cgi"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdmEditProducts.asp" comment="'" forShow="True" url="AdmEditProducts.asp"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="4" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
