<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp" scriptingSupport="Automatic">
	<Components>
		<Panel id="75" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="76" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Link id="40" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="AdmProductRecord.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Grid id="56" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="store_products" connection="InternetDB" dataSource="store_products, store_categories" orderBy="store_products.category_id" pageSizeLimit="100" pageSize="False" wizardCaption="List of Store Products " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False" editableComponentTypeString="Grid">
					<Components>
						<Sorter id="57" visible="True" name="Sorter_product_name" column="product_name" wizardCaption="Product Name" wizardSortingType="Extended" wizardControl="product_name" wizardAddNbsp="False" PathID="Contentstore_productsSorter_product_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_product_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;Product Name 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentstore_productsSorter_product_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentstore_productsSorter_product_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_product_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="58" visible="True" name="Sorter_category_name" column="category_name" wizardCaption="Category Name" wizardSortingType="Extended" wizardControl="category_name" wizardAddNbsp="False" PathID="Contentstore_productsSorter_category_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_category_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;Category 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentstore_productsSorter_category_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentstore_productsSorter_category_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_category_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="59" visible="True" name="Sorter_price" column="price" wizardCaption="Price" wizardSortingType="Extended" wizardControl="price" wizardAddNbsp="False" PathID="Contentstore_productsSorter_price" oldHTML="&lt;!-- BEGIN Sorter Sorter_price --&gt;&lt;span class=&quot;Sorter&quot;&gt;Price 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentstore_productsSorter_price&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentstore_productsSorter_price&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_price --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="60" visible="True" name="Sorter_is_recommended" column="is_recommended" wizardCaption="Is Recommended" wizardSortingType="Extended" wizardControl="is_recommended" wizardAddNbsp="False" PathID="Contentstore_productsSorter_is_recommended" oldHTML="&lt;!-- BEGIN Sorter Sorter_is_recommended --&gt;&lt;span class=&quot;Sorter&quot;&gt;Recommended 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentstore_productsSorter_is_recommended&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentstore_productsSorter_is_recommended&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_is_recommended --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="61" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="None" name="product_name" fieldSource="product_name" wizardCaption="Product Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="AdmProductRecord.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;product_name&quot;,&quot;hrefSource&quot;:&quot;AdmProductRecord.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;product_id&quot;,&quot;parameterName&quot;:&quot;product_id&quot;}}}" wizardAddNbsp="False" PathID="Contentstore_productsproduct_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="62" sourceType="DataField" format="yyyy-mm-dd" name="product_id" source="product_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="63" fieldSourceType="DBColumn" dataType="Text" html="False" name="category_name" fieldSource="category_name" wizardCaption="Category Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contentstore_productscategory_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="64" fieldSourceType="DBColumn" dataType="Float" html="False" name="price" fieldSource="price" wizardCaption="Price" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contentstore_productsprice" format="#,##0.00">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="65" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="is_recommended" fieldSource="is_recommended" wizardCaption="Is Recommended" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contentstore_productsis_recommended" format="Yes;No" DBFormat="1;0">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="66" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
      &lt;!-- BEGIN First_On --&gt;&lt;a href=&quot;{First_URL}&quot;&gt;First &lt;/a&gt; &lt;!-- END First_On --&gt;
      &lt;!-- BEGIN Prev_On --&gt;&lt;a href=&quot;{Prev_URL}&quot;&gt;Prev &lt;/a&gt; &lt;!-- END Prev_On --&gt;&amp;nbsp; 
      &lt;!-- BEGIN Pages --&gt;
      &lt;!-- BEGIN Page_On --&gt;&lt;a href=&quot;{Page_URL}&quot;&gt;{Page_Number}&lt;/a&gt;&amp;nbsp;&lt;!-- END Page_On --&gt;
      &lt;!-- BEGIN Page_Off --&gt;{Page_Number}&amp;nbsp;&lt;!-- END Page_Off --&gt;&lt;!-- END Pages --&gt;of&amp;nbsp;{Total_Pages}&amp;nbsp; 
      &lt;!-- BEGIN Next_On --&gt;&lt;a href=&quot;{Next_URL}&quot;&gt;Next &lt;/a&gt; &lt;!-- END Next_On --&gt;
      &lt;!-- BEGIN Last_On --&gt;&lt;a href=&quot;{Last_URL}&quot;&gt;Last &lt;/a&gt; &lt;!-- END Last_On --&gt;&lt;/span&gt;&lt;!-- END Navigator Navigator --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="153" conditionType="Parameter" useIsNull="False" dataType="Text" field="product_name" logicOperator="And" orderNumber="1" parameterSource="s_product_name" parameterType="URL" searchConditionType="Contains"/>
						<TableParameter id="154" conditionType="Parameter" useIsNull="False" dataType="Integer" field="store_products.category_id" logicOperator="And" orderNumber="2" parameterSource="product_category" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="155" conditionType="Parameter" useIsNull="False" dataType="Integer" field="is_recommended" logicOperator="And" orderNumber="3" parameterSource="s_is_recommended" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="156" conditionType="Parameter" useIsNull="False" dataType="Boolean" defaultValue="true" field="store_products.is_active" logicOperator="And" parameterSource="true" parameterType="Expression" searchConditionType="Equal"/>
						<TableParameter id="157" conditionType="Parameter" useIsNull="False" dataType="Boolean" field="store_categories.category_is_active" logicOperator="And" parameterSource="true" parameterType="Expression" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="150" posHeight="180" posLeft="10" posTop="10" posWidth="132" tableName="store_products"/>
						<JoinTable id="151" posHeight="104" posLeft="163" posTop="10" posWidth="123" tableName="store_categories"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="152" fieldLeft="store_products.category_id" fieldRight="store_categories.category_id" joinType="left" tableLeft="store_products" tableRight="store_categories"/>
					</JoinLinks>
					<Fields>
						<Field id="158" fieldName="category_name" tableName="store_categories"/>
						<Field id="159" fieldName="product_name" tableName="store_products"/>
						<Field id="160" fieldName="price" tableName="store_products"/>
						<Field id="161" fieldName="is_recommended" tableName="store_products"/>
						<Field id="162" fieldName="product_id" tableName="store_products"/>
					</Fields>
					<PKFields>
					</PKFields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
				<Record id="19" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Search" actionPage="AdmProducts" errorSummator="Error" wizardFormMethod="post">
					<Components>
						<TextBox id="20" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="s_product_name" visible="Yes">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="21" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="product_category" sourceType="Table" connection="InternetDB" dataSource="store_categories" boundColumn="category_id" textColumn="category_name" visible="Yes">
							<Components/>
							<Events/>
							<TableParameters>
								<TableParameter id="131" conditionType="Parameter" useIsNull="False" dataType="Boolean" defaultValue="true" field="category_is_active" logicOperator="And" parameterSource="true" parameterType="Expression" searchConditionType="Equal"/>
							</TableParameters>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="149" tableName="store_categories"/>
							</JoinTables>
							<JoinLinks/>
							<Fields>
								<Field id="132" fieldName="*"/>
							</Fields>
							<PKFields>
								<PKField id="133" dataType="Integer" fieldName="category_id" tableName="store_categories"/>
							</PKFields>
							<Attributes/>
							<Features/>
						</ListBox>
						<ListBox id="38" fieldSourceType="DBColumn" dataType="Integer" editable="True" name="s_is_recommended" checkedValue="1" uncheckedValue="0" sourceType="ListOfValues" hasErrorCollection="True" _valueOfList="1" _nameOfList="Yes" dataSource="0;No;1;Yes" visible="Yes">
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
						<Button id="23" urlType="Relative" enableValidation="True" name="Search" operation="Search" wizardCaption="Submit" isDefault="True">
							<Components/>
							<Events/>
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
					<PKFields/>
					<Attributes/>
					<Features/>
				</Record>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="77" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="54" name="AdmHeader" page="AdmHeader.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="78" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="55" name="AdmMenu" PathID="SidebarAdmMenu" page="AdmMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdmProducts.php" comment="//" forShow="True" url="AdmProducts.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="AdmProducts.cgi" comment="#" forShow="True" url="AdmProducts.cgi"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdmProducts.asp" comment="'" forShow="True" url="AdmProducts.asp"/>
		<CodeFile id="3" language="C#" name="AdmProducts.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="AdmProducts.aspx"/>
		<CodeFile id="1" language="C#" name="AdmProducts.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AdmProductsDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="1" language="C#InMotion" name="AdmProducts.aspx" forShow="True" url="AdmProducts.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="AdmProductsEvents.aspx.cs" forShow="False" comment="//"/>
		<CodeFile id="Model" language="JSP" name="AdmProducts.xml" path="." forShow="False" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="JSP" language="JSP" name="AdmProducts.jsp" path="." forShow="True" url="AdmProducts.jsp" comment="&lt;%--" commentEnd="--%&gt;" codePage="windows-1252"/>
		<CodeFile id="Handlers" language="JSP" name="AdmProductsHandlers.jsp" path="." forShow="False" comment="//" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="4" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
