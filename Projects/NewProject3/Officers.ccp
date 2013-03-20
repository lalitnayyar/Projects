<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" name="Officers" webService="False" SSLAccess="False" urlType="Relative" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="31" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="32" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="23" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="officers" connection="internet" dataSource="officers" orderBy="officer_id" pageSizeLimit="100" pageSize="False" wizardCaption="List of Officers " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="24" visible="True" name="Sorter_officer_name" column="officer_name" wizardCaption="Name" wizardSortingType="SimpleDir" wizardControl="officer_name" wizardAddNbsp="False" PathID="ContentofficersSorter_officer_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_officer_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentofficersSorter_officer_name&quot;&gt;Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_officer_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="25" visible="True" name="Sorter_officer_position" column="officer_position" wizardCaption="Position" wizardSortingType="SimpleDir" wizardControl="officer_position" wizardAddNbsp="False" PathID="ContentofficersSorter_officer_position" oldHTML="&lt;!-- BEGIN Sorter Sorter_officer_position --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentofficersSorter_officer_position&quot;&gt;Position&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_officer_position --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="26" visible="True" name="Sorter_officer_email" column="officer_email" wizardCaption="Email" wizardSortingType="SimpleDir" wizardControl="officer_email" wizardAddNbsp="False" PathID="ContentofficersSorter_officer_email" oldHTML="&lt;!-- BEGIN Sorter Sorter_officer_email --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentofficersSorter_officer_email&quot;&gt;Email&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_officer_email --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" name="officer_name" fieldSource="officer_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contentofficersofficer_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="officer_position" fieldSource="officer_position" wizardCaption="Position" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contentofficersofficer_position">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Link id="29" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" preserveParameters="None" name="officer_email" fieldSource="officer_email" wizardCaption="Email" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="officer_email" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;officer_email&quot;,&quot;hrefSource&quot;:&quot;&quot;,&quot;hrefSourceDB&quot;:&quot;officer_email&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:0,&quot;objectType&quot;:&quot;linkParameters&quot;}}" wizardAddNbsp="False" PathID="Contentofficersofficer_email" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
					</Components>
					<Events/>
					<TableParameters>
<TableParameter id="37" conditionType="Parameter" useIsNull="False" dataType="Text" field="officer_name" logicOperator="And" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
</TableParameters>
					<JoinTables>
						<JoinTable id="36" posHeight="120" posLeft="10" posTop="10" posWidth="100" tableName="officers"/>
</JoinTables>
					<JoinLinks/>
					<Fields>
<Field id="38" fieldName="*"/>
</Fields>
					<PKFields>
<PKField id="39" dataType="Integer" fieldName="officer_id" tableName="officers"/>
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
		<Panel id="33" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="19" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="34" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
<IncludePage id="35" name="Search" PathID="Sidebar1Search" page="Search.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="Officers.php" comment="//" forShow="True" url="Officers.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="Officers.asp" comment="'" forShow="True" url="Officers.asp"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
