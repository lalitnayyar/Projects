<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="AdminOfficers" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="54" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="55" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Link id="42" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="True" preserveParameters="None" editable="False" name="Link1" hrefSource="EditOfficer.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="12">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
<Grid id="43" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="officers" connection="internet" dataSource="officers" orderBy="officer_name" pageSizeLimit="100" pageSize="False" wizardCaption="List of Officers " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="44" visible="True" name="Sorter_officer_name" column="officer_name" wizardCaption="Name" wizardSortingType="SimpleDir" wizardControl="officer_name" wizardAddNbsp="False" PathID="ContentofficersSorter_officer_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_officer_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentofficersSorter_officer_name&quot;&gt;Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_officer_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="45" visible="True" name="Sorter_officer_position" column="officer_position" wizardCaption="Position" wizardSortingType="SimpleDir" wizardControl="officer_position" wizardAddNbsp="False" PathID="ContentofficersSorter_officer_position" oldHTML="&lt;!-- BEGIN Sorter Sorter_officer_position --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentofficersSorter_officer_position&quot;&gt;Position&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_officer_position --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="46" visible="True" name="Sorter_officer_email" column="officer_email" wizardCaption="Email" wizardSortingType="SimpleDir" wizardControl="officer_email" wizardAddNbsp="False" PathID="ContentofficersSorter_officer_email" oldHTML="&lt;!-- BEGIN Sorter Sorter_officer_email --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentofficersSorter_officer_email&quot;&gt;Email&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_officer_email --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="47" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="None" name="officer_name" fieldSource="officer_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="EditOfficer.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;officer_name&quot;,&quot;hrefSource&quot;:&quot;EditOfficer.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;officer_id&quot;,&quot;parameterName&quot;:&quot;officer_id&quot;}}}" wizardAddNbsp="True" PathID="Contentofficersofficer_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="48" sourceType="DataField" format="yyyy-mm-dd" name="officer_id" source="officer_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="officer_position" fieldSource="officer_position" wizardCaption="Position" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentofficersofficer_position">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Link id="50" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" preserveParameters="None" name="officer_email" fieldSource="officer_email" wizardCaption="Email" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="officer_email" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;officer_email&quot;,&quot;hrefSource&quot;:&quot;&quot;,&quot;hrefSourceDB&quot;:&quot;officer_email&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:0,&quot;objectType&quot;:&quot;linkParameters&quot;}}" wizardAddNbsp="True" PathID="Contentofficersofficer_email" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Navigator id="51" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
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
					<TableParameters/>
					<JoinTables>
						<JoinTable id="52" posHeight="120" posLeft="10" posTop="10" posWidth="100" tableName="officers"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<PKFields>
						<PKField id="53" dataType="Integer" fieldName="officer_id" tableName="officers"/>
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
<Panel id="56" visible="True" name="Menu" contentPlaceholder="Menu">
<Components>
<IncludePage id="25" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="57" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components>
<IncludePage id="26" name="AdminMenu" PathID="Sidebar1AdminMenu" page="AdminMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdminOfficers.php" comment="//" forShow="True" url="AdminOfficers.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdminOfficers.asp" comment="'" forShow="True" url="AdminOfficers.asp"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="15" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
