<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="PriorityList" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" validateRequest="True" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="33" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="34" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="28" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="priorities" connection="intranet" dataSource="priorities" orderBy="priority_name" pageSizeLimit="100" pageSize="False" wizardCaption="List of Priorities " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="29" visible="True" name="Sorter_priority_name" column="priority_name" wizardCaption="Name" wizardSortingType="Extended" wizardControl="priority_name" wizardAddNbsp="False" PathID="ContentprioritiesSorter_priority_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_priority_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentprioritiesSorter_priority_name&quot;&gt;Priority&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_priority_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="30" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="GET" name="priority_name" fieldSource="priority_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="PriorityMaint.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;priority_name&quot;,&quot;hrefSource&quot;:&quot;PriorityMaint.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;priority_id&quot;,&quot;parameterName&quot;:&quot;priority_id&quot;}}}" wizardAddNbsp="False" PathID="Contentprioritiespriority_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="31" sourceType="DataField" format="yyyy-mm-dd" name="priority_id" source="priority_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="27" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link1" hrefSource="PriorityMaint.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="7" PathID="ContentprioritiesLink1">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
					</Components>
					<Events/>
					<TableParameters/>
					<JoinTables>
						<JoinTable id="32" tableName="priorities"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
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
		<Panel id="35" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="18" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="36" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="19" name="Administration" PathID="Sidebar1Administration" page="Administration.ccp">
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
		<CodeFile id="codeGrid1" language="CFML" name="PriorityList_priorities.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="PriorityList.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="PriorityList.cfm"/>
		<CodeFile id="Code" language="PHPTemplates" name="PriorityList.php" comment="//" forShow="True" url="PriorityList.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="PriorityList.asp" comment="'" forShow="True" url="PriorityList.asp"/>
		<CodeFile id="1" language="C#InMotion" name="PriorityList.aspx" forShow="True" url="PriorityList.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="PriorityListEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="10" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
