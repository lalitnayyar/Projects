<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" name="Links" webService="False" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="78" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="79" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="43" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="links" connection="internet" dataSource="links" pageSizeLimit="100" pageSize="True" wizardCaption="List of Links " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="45" visible="True" name="Sorter_link_name" column="link_name" wizardCaption="Name" wizardSortingType="SimpleDir" wizardControl="link_name" wizardAddNbsp="False" PathID="ContentlinksSorter_link_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_link_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentlinksSorter_link_name&quot;&gt;Link&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_link_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="46" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" preserveParameters="GET" name="link_name" fieldSource="link_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="link_url" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;link_name&quot;,&quot;hrefSource&quot;:&quot;&quot;,&quot;hrefSourceDB&quot;:&quot;link_url&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:0,&quot;objectType&quot;:&quot;linkParameters&quot;}}" wizardAddNbsp="True" PathID="Contentlinkslink_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="47" fieldSourceType="DBColumn" dataType="Memo" html="False" name="link_desc" fieldSource="link_desc" wizardCaption="Desc" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentlinkslink_desc">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="48" fieldSourceType="DBColumn" dataType="Memo" html="False" name="address" fieldSource="address" wizardCaption="Address" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentlinksaddress">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events>
					</Events>
					<TableParameters>
						<TableParameter id="71" conditionType="Parameter" useIsNull="False" dataType="Text" field="link_name" logicOperator="Or" orderNumber="3" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
						<TableParameter id="72" conditionType="Parameter" useIsNull="False" dataType="Text" field="link_url" logicOperator="Or" orderNumber="4" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
						<TableParameter id="73" conditionType="Parameter" useIsNull="False" dataType="Memo" field="link_desc" logicOperator="Or" orderNumber="5" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
						<TableParameter id="74" conditionType="Parameter" useIsNull="False" dataType="Memo" field="address" logicOperator="Or" orderNumber="6" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="83" tableName="links"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="76" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="77" dataType="Integer" fieldName="link_id" tableName="links"/>
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
		<Panel id="80" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="33" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="81" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="82" name="Search" PathID="Sidebar1Search" page="Search.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="Links.php" comment="//" forShow="True" url="Links.php"/>
		<CodeFile id="3" language="C#" name="Links.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Links.aspx"/>
		<CodeFile id="1" language="C#" name="Links.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="LinksDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="Links.asp" forShow="True" url="Links.asp" comment="'"/>
		<CodeFile id="Events" language="ASPTemplates" name="Links_events.asp" forShow="False" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Features/>
	<Attributes/>
</Page>
