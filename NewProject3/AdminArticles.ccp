<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" name="AdminArticles" webService="False" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="135" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="136" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Link id="91" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="True" preserveParameters="None" editable="False" name="Link2" hrefSource="EditArticle.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="33">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Grid id="117" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="articles" connection="internet" dataSource="articles, event_categories" orderBy="article_id" pageSizeLimit="100" pageSize="False" wizardCaption="List of Articles, Event Categories " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False" editableComponentTypeString="Grid">
					<Components>
						<Sorter id="118" visible="True" name="Sorter_article_title" column="article_title" wizardCaption="Title" wizardSortingType="SimpleDir" wizardControl="article_title" wizardAddNbsp="False" PathID="ContentarticlesSorter_article_title" oldHTML="&lt;!-- BEGIN Sorter Sorter_article_title --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentarticlesSorter_article_title&quot;&gt;Article&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_article_title --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="119" visible="True" name="Sorter_category_name" column="category_name" wizardCaption="Category Name" wizardSortingType="SimpleDir" wizardControl="category_name" wizardAddNbsp="False" PathID="ContentarticlesSorter_category_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_category_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentarticlesSorter_category_name&quot;&gt;Category&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_category_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="120" visible="True" name="Sorter_date_add" column="date_add" wizardCaption="Date Add" wizardSortingType="SimpleDir" wizardControl="date_add" wizardAddNbsp="False" PathID="ContentarticlesSorter_date_add" oldHTML="&lt;!-- BEGIN Sorter Sorter_date_add --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentarticlesSorter_date_add&quot;&gt;Date Posted&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_date_add --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="121" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" preserveParameters="None" name="article_id" fieldSource="article_id" wizardCaption="Id" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="EditArticle.ccp" linkProperties="{&quot;textSource&quot;:&quot;Edit&quot;,&quot;textSourceDB&quot;:&quot;&quot;,&quot;hrefSource&quot;:&quot;EditArticle.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;article_id&quot;,&quot;parameterName&quot;:&quot;article_id&quot;}}}" wizardAddNbsp="True" PathID="Contentarticlesarticle_id" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="122" sourceType="DataField" format="yyyy-mm-dd" name="article_id" source="article_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="123" fieldSourceType="DBColumn" dataType="Text" html="False" name="article_title" fieldSource="article_title" wizardCaption="Title" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentarticlesarticle_title">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="124" fieldSourceType="DBColumn" dataType="Text" html="False" name="category_name" fieldSource="category_name" wizardCaption="Category Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentarticlescategory_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="125" fieldSourceType="DBColumn" dataType="Date" html="False" name="date_add" fieldSource="date_add" wizardCaption="Date Add" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentarticlesdate_add">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="126" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
      &lt;!-- BEGIN First_On --&gt;&lt;a href=&quot;{First_URL}&quot;&gt;&lt;img src=&quot;./Styles/None/Images/First.gif&quot; alt=&quot;{First_URL}&quot;&gt;&lt;/a&gt; &lt;!-- END First_On --&gt;
      &lt;!-- BEGIN First_Off --&gt;&lt;img src=&quot;./Styles/None/Images/FirstOff.gif&quot; alt=&quot;{First_URL}&quot;&gt;&lt;!-- END First_Off --&gt;
      &lt;!-- BEGIN Prev_On --&gt;&lt;a href=&quot;{Prev_URL}&quot;&gt;&lt;img src=&quot;./Styles/None/Images/Prev.gif&quot; alt=&quot;{Prev_URL}&quot;&gt;&lt;/a&gt; &lt;!-- END Prev_On --&gt;
      &lt;!-- BEGIN Prev_Off --&gt;&lt;img src=&quot;./Styles/None/Images/PrevOff.gif&quot; alt=&quot;{Prev_URL}&quot;&gt;&lt;!-- END Prev_Off --&gt;&amp;nbsp; 
      &lt;!-- BEGIN Pages --&gt;
      &lt;!-- BEGIN Page_On --&gt;&lt;a href=&quot;{Page_URL}&quot;&gt;{Page_Number}&lt;/a&gt;&amp;nbsp;&lt;!-- END Page_On --&gt;
      &lt;!-- BEGIN Page_Off --&gt;{Page_Number}&amp;nbsp;&lt;!-- END Page_Off --&gt;&lt;!-- END Pages --&gt;of&amp;nbsp;{Total_Pages}&amp;nbsp; 
      &lt;!-- BEGIN Next_On --&gt;&lt;a href=&quot;{Next_URL}&quot;&gt;&lt;img src=&quot;./Styles/None/Images/Next.gif&quot; alt=&quot;{Next_URL}&quot;&gt;&lt;/a&gt; &lt;!-- END Next_On --&gt;
      &lt;!-- BEGIN Next_Off --&gt;&lt;img src=&quot;./Styles/None/Images/NextOff.gif&quot; alt=&quot;{Next_URL}&quot;&gt;&lt;!-- END Next_Off --&gt;
      &lt;!-- BEGIN Last_On --&gt;&lt;a href=&quot;{Last_URL}&quot;&gt;&lt;img src=&quot;./Styles/None/Images/Last.gif&quot; alt=&quot;{Last_URL}&quot;&gt;&lt;/a&gt; &lt;!-- END Last_On --&gt;
      &lt;!-- BEGIN Last_Off --&gt;&lt;img src=&quot;./Styles/None/Images/LastOff.gif&quot; alt=&quot;{Last_URL}&quot;&gt;&lt;!-- END Last_Off --&gt;&lt;/span&gt;&lt;!-- END Navigator Navigator --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="127" conditionType="Parameter" useIsNull="False" dataType="Text" field="article_title" logicOperator="And" orderNumber="1" parameterSource="s_article_title" parameterType="URL" searchConditionType="Contains"/>
						<TableParameter id="128" conditionType="Parameter" useIsNull="False" dataType="Integer" field="event_categories.category_id" logicOperator="And" orderNumber="2" parameterSource="s_category_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="129" posHeight="152" posLeft="10" posTop="10" posWidth="115" tableName="articles"/>
						<JoinTable id="130" posHeight="88" posLeft="146" posTop="10" posWidth="100" tableName="event_categories"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="131" conditionType="Equal" fieldLeft="articles.category_id" fieldRight="event_categories.category_id" joinType="inner" tableLeft="articles" tableRight="event_categories"/>
					</JoinLinks>
					<Fields>
						<Field id="132" fieldName="*"/>
					</Fields>
					<PKFields>
					</PKFields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
				<Record id="111" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="articlesSearch" fictitiousConnection="internet" fictitiousDataSource="articles" wizardCaption="Search  " changedCaptionSearch="False" wizardOrientation="Custom" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" templatePageSearch="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Search/SimpleSearch.ccp|userTemplate" wizardSpecifyResultsForm="True" wizardResultsForm="event_categories_articles" returnPage="AdminArticles.ccp" PathID="ContentarticlesSearch" editableComponentTypeString="Search">
					<Components>
						<Button id="112" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="ContentarticlesSearchButton_DoSearch">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="115" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_article_title" fieldSource="article_title" wizardIsPassword="False" wizardCaption="Title" caption="Title" required="False" unique="False" wizardSize="50" wizardMaxLength="125" PathID="ContentarticlesSearchs_article_title">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="116" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="s_category_id" fieldSource="category_id" wizardIsPassword="False" wizardEmptyCaption="Select Value" wizardCaption="Category Id" caption="Category Id" required="False" unique="False" connection="internet" dataSource="event_categories" boundColumn="category_id" textColumn="category_name" PathID="ContentarticlesSearchs_category_id">
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
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
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
		<Panel id="137" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="70" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="138" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="71" name="AdminMenu" PathID="Sidebar1AdminMenu" page="AdminMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdminArticles.php" comment="//" forShow="True" url="AdminArticles.php"/>
		<CodeFile id="3" language="C#" name="AdminArticles.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="AdminArticles.aspx"/>
		<CodeFile id="1" language="C#" name="AdminArticles.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AdminArticlesDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdminArticles.asp" forShow="True" url="AdminArticles.asp" comment="'"/>
		<CodeFile id="Events" language="PHPTemplates" name="AdminArticles_events.php" forShow="False" comment="//"/>
		<CodeFile id="Events" language="ASPTemplates" name="AdminArticles_events.asp" forShow="False" comment="'"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="58" groupID="2"/>
	</SecurityGroups>
	<Events>
		<Event name="AfterInitialize" type="Server">
			<Actions>
				<Action actionName="Logout" actionCategory="Security" id="98" pageRedirects="True" parameterName="Logout" returnPage="AdminArticles.ccp"/>
			</Actions>
		</Event>
	</Events>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
