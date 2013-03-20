<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="AdminLinks" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="94" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="95" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Link id="71" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="True" preserveParameters="None" editable="False" name="Link1" hrefSource="EditLink.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="20">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Grid id="72" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="links" connection="internet" dataSource="event_categories, links" orderBy="date_add" pageSizeLimit="100" pageSize="False" wizardCaption="List of Event Categories, Links " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="78" visible="True" name="Sorter_date_add" column="date_add" wizardCaption="Date Add" wizardSortingType="SimpleDir" wizardControl="date_add" wizardAddNbsp="False" PathID="ContentlinksSorter_date_add" oldHTML="&lt;!-- BEGIN Sorter Sorter_date_add --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentlinksSorter_date_add&quot;&gt;Date Add&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_date_add --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="79" visible="True" name="Sorter_link_name" column="link_name" wizardCaption="Name" wizardSortingType="SimpleDir" wizardControl="link_name" wizardAddNbsp="False" PathID="ContentlinksSorter_link_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_link_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentlinksSorter_link_name&quot;&gt;Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_link_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="80" visible="True" name="Sorter_category_name" column="category_name" wizardCaption="Category Name" wizardSortingType="SimpleDir" wizardControl="category_name" wizardAddNbsp="False" PathID="ContentlinksSorter_category_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_category_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentlinksSorter_category_name&quot;&gt;Category Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_category_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="81" visible="True" name="Sorter_link_url" column="link_url" wizardCaption="Url" wizardSortingType="SimpleDir" wizardControl="link_url" wizardAddNbsp="False" PathID="ContentlinksSorter_link_url" oldHTML="&lt;!-- BEGIN Sorter Sorter_link_url --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentlinksSorter_link_url&quot;&gt;URL&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_link_url --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Label id="82" fieldSourceType="DBColumn" dataType="Date" html="False" name="date_add" fieldSource="date_add" wizardCaption="Date Add" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentlinksdate_add">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Link id="83" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="None" name="link_name" fieldSource="link_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="EditLink.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;link_name&quot;,&quot;hrefSource&quot;:&quot;EditLink.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;link_id&quot;,&quot;parameterName&quot;:&quot;link_id&quot;}}}" wizardAddNbsp="True" PathID="Contentlinkslink_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="84" sourceType="DataField" format="yyyy-mm-dd" name="link_id" source="link_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="85" fieldSourceType="DBColumn" dataType="Text" html="False" name="category_name" fieldSource="category_name" wizardCaption="Category Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentlinkscategory_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="86" fieldSourceType="DBColumn" dataType="Text" html="False" name="link_url" fieldSource="link_url" wizardCaption="Url" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentlinkslink_url">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="87" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
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
						<TableParameter id="90" conditionType="Parameter" useIsNull="False" field="link_name" parameterSource="s_link_name" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="1"/>
						<TableParameter id="91" conditionType="Parameter" useIsNull="False" field="link_url" parameterSource="s_link_url" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="2"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="73" posHeight="88" posLeft="10" posTop="10" posWidth="100" schemaName="undefined" tableName="event_categories"/>
						<JoinTable id="74" posHeight="180" posLeft="346" posTop="25" posWidth="154" schemaName="undefined" tableName="links"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="75" fieldLeft="links.category_id" fieldRight="event_categories.category_id" joinType="left" tableLeft="links" tableRight="event_categories"/>
					</JoinLinks>
					<Fields>
						<Field id="76" fieldName="links.*" tableName="links"/>
						<Field id="77" fieldName="category_name" tableName="event_categories"/>
					</Fields>
					<PKFields/>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
				<Record id="88" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="linksSearch" fictitiousConnection="internet" fictitiousDataSource="links" wizardCaption="Search  " changedCaptionSearch="False" wizardOrientation="Custom" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" templatePageSearch="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Search/SimpleSearch.ccp|userTemplate" wizardSpecifyResultsForm="True" wizardResultsForm="links_event_categories" returnPage="AdminLinks.ccp" PathID="ContentlinksSearch">
					<Components>
						<Button id="89" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="ContentlinksSearchButton_DoSearch">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="92" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_link_name" fieldSource="link_name" wizardIsPassword="False" wizardCaption="Name" caption="Name" required="False" unique="False" wizardSize="50" wizardMaxLength="100" PathID="ContentlinksSearchs_link_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="93" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_link_url" fieldSource="link_url" wizardIsPassword="False" wizardCaption="Url" caption="Url" required="False" unique="False" wizardSize="50" wizardMaxLength="100" PathID="ContentlinksSearchs_link_url">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
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
		<Panel id="96" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="47" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="97" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="48" name="AdminMenu" PathID="Sidebar1AdminMenu" page="AdminMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdminLinks.php" comment="//" forShow="True" url="AdminLinks.php"/>
		<CodeFile id="3" language="C#" name="AdminLinks.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="AdminLinks.aspx"/>
		<CodeFile id="1" language="C#" name="AdminLinks.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AdminLinksDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdminLinks.asp" comment="'" forShow="True" url="AdminLinks.asp"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="25" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
