<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp" validateRequest="True" scriptingSupport="Automatic">
	<Components>
		<Panel id="32" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="33" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Link id="12" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="AdmCategoryRecord.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Grid id="25" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="store_categories" connection="InternetDB" dataSource="store_categories" pageSizeLimit="100" pageSize="False" wizardCaption="List of Store Categories " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="26" visible="True" name="Sorter_category_name" column="category_name" wizardCaption="Category Name" wizardSortingType="Extended" wizardControl="category_name" wizardAddNbsp="False" PathID="Contentstore_categoriesSorter_category_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_category_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;Category Name 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;{CCS_PathToMasterPage}images/SorterAscActive.png&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentstore_categoriesSorter_category_name&quot;&gt;&lt;img src=&quot;{CCS_PathToMasterPage}images/SorterAscPassive.png&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;{CCS_PathToMasterPage}images/SorterDescActive.png&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentstore_categoriesSorter_category_name&quot;&gt;&lt;img src=&quot;{CCS_PathToMasterPage}images/SorterDescPassive.png&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_category_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="27" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="GET" name="category_name" fieldSource="category_name" wizardCaption="Category Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="AdmCategoryRecord.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;category_name&quot;,&quot;hrefSource&quot;:&quot;AdmCategoryRecord.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;category_id&quot;,&quot;parameterName&quot;:&quot;category_id&quot;}}}" wizardAddNbsp="False" PathID="Contentstore_categoriescategory_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="28" sourceType="DataField" format="yyyy-mm-dd" name="category_id" source="category_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Navigator id="29" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
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
						<TableParameter id="45" conditionType="Parameter" useIsNull="False" dataType="Boolean" defaultValue="true" field="category_is_active" format="true" logicOperator="And" parameterSource="true" parameterType="Expression" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="44" posHeight="104" posLeft="10" posTop="10" posWidth="123" tableName="store_categories"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="46" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="47" dataType="Integer" fieldName="category_id" tableName="store_categories"/>
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
		<CodeFile id="Code" language="PHPTemplates" name="AdmCategories.php" comment="//" forShow="True" url="AdmCategories.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="AdmCategories.cgi" comment="#" forShow="True" url="AdmCategories.cgi"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdmCategories.asp" comment="'" forShow="True" url="AdmCategories.asp"/>
		<CodeFile id="1" language="C#InMotion" name="AdmCategories.aspx" forShow="True" url="AdmCategories.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="AdmCategoriesEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="4" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
