<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" SSLAccess="False" accessDeniedPage="Login.ccp" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" validateRequest="True" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="33" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="34" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="27" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="types" connection="intranet" dataSource="types" orderBy="type_name" pageSizeLimit="100" pageSize="False" wizardCaption="List of Types " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="29" visible="True" name="Sorter_type_name" column="type_name" wizardCaption="Name" wizardSortingType="Extended" wizardControl="type_name" wizardAddNbsp="False" PathID="ContenttypesSorter_type_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_type_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContenttypesSorter_type_name&quot;&gt;Type&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_type_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="30" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="GET" name="type_name" fieldSource="type_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="TypeMaint.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;type_name&quot;,&quot;hrefSource&quot;:&quot;TypeMaint.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;type_id&quot;,&quot;parameterName&quot;:&quot;type_id&quot;}}}" wizardAddNbsp="False" PathID="Contenttypestype_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="31" sourceType="DataField" format="yyyy-mm-dd" name="type_id" source="type_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="32" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="Link1" hrefSource="TypeMaint.ccp" visible="Yes" wizardUseTemplateBlock="False" old_temp_id="12" PathID="ContenttypesLink1">
							<Components/>
							<Events/>
							<LinkParameters>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
</Components>
					<Events/>
					<TableParameters/>
					<JoinTables>
						<JoinTable id="28" tableName="types"/>
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
				<IncludePage id="22" name="Header" PathID="MenuHeader" page="Header.ccp">
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
				<IncludePage id="23" name="Administration" PathID="Sidebar1Administration" page="Administration.ccp">
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
		<CodeFile id="Code" language="ASPTemplates" name="TypesList.asp" comment="'" forShow="True" url="TypesList.asp"/>
		<CodeFile id="Code" language="PHPTemplates" name="TypesList.php" forShow="True" url="TypesList.php" comment="//"/>
		<CodeFile id="1" language="C#InMotion" name="TypesList.aspx" forShow="True" url="TypesList.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="TypesListEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="11" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
