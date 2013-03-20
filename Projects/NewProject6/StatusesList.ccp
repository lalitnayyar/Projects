<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="StatusesList" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" validateRequest="True" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="29" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="30" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="23" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="statuses" connection="intranet" dataSource="statuses" orderBy="status_name" pageSizeLimit="100" pageSize="False" wizardCaption="List of Statuses " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False" editableComponentTypeString="Grid">
					<Components>
						<Sorter id="25" visible="True" name="Sorter_status_name" column="status_name" wizardCaption="Status Name" wizardSortingType="Extended" wizardControl="status_name" wizardAddNbsp="False" PathID="ContentstatusesSorter_status_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_status_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentstatusesSorter_status_name&quot;&gt;Status&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_status_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="GET" name="status_name" fieldSource="status_name" wizardCaption="Status Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="StatusMaint.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;status_name&quot;,&quot;hrefSource&quot;:&quot;StatusMaint.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;status_id&quot;,&quot;parameterName&quot;:&quot;status_id&quot;}}}" wizardAddNbsp="False" PathID="Contentstatusesstatus_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="27" sourceType="DataField" format="yyyy-mm-dd" name="status_id" source="status_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="28" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link1" hrefSource="StatusMaint.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="7" PathID="ContentstatusesLink1">
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
						<JoinTable id="24" tableName="statuses"/>
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
		<Panel id="31" visible="True" name="Menu" contentPlaceholder="Menu">
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
		<Panel id="32" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
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
		<CodeFile id="codeGrid1" language="CFML" name="StatusesList_statuses.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="StatusesList.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="StatusesList.cfm"/>
		<CodeFile id="Code" language="PHPTemplates" name="StatusesList.php" comment="//" forShow="True" url="StatusesList.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="StatusesList.asp" comment="'" forShow="True" url="StatusesList.asp"/>
		<CodeFile id="1" language="C#InMotion" name="StatusesList.aspx" forShow="True" url="StatusesList.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="StatusesListEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="10" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
