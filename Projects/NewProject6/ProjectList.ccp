<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="ProjectList" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" validateRequest="True" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="47" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="48" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="35" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="projects" connection="intranet" dataSource="projects" pageSizeLimit="100" pageSize="False" wizardCaption="List of Projects " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="39" visible="True" name="Sorter_project_name" column="project_name" wizardCaption="Name" wizardSortingType="Extended" wizardControl="project_name" wizardAddNbsp="False" PathID="ContentprojectsSorter_project_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_project_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentprojectsSorter_project_name&quot;&gt;Project&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_project_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="GET" name="project_name" fieldSource="project_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="ProjectMaint.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;project_name&quot;,&quot;hrefSource&quot;:&quot;ProjectMaint.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;project_id&quot;,&quot;parameterName&quot;:&quot;project_id&quot;}}}" wizardAddNbsp="False" PathID="Contentprojectsproject_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="41" sourceType="DataField" format="yyyy-mm-dd" name="project_id" source="project_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="42" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link1" hrefSource="ProjectMaint.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="11" PathID="ContentprojectsLink1">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="55" conditionType="Parameter" useIsNull="False" dataType="Boolean" field="project_is_active" logicOperator="And" parameterSource="1" parameterType="Expression" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="54" posHeight="104" posLeft="10" posTop="10" posWidth="111" tableName="projects"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="56" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="57" dataType="Integer" fieldName="project_id" tableName="projects"/>
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
		<Panel id="49" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="30" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="50" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="31" name="Administration" PathID="Sidebar1Administration" page="Administration.ccp">
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
		<CodeFile id="codeGrid1" language="CFML" name="ProjectList_projects.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="ProjectList.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="ProjectList.cfm"/>
		<CodeFile id="Code" language="PHPTemplates" name="ProjectList.php" comment="//" forShow="True" url="ProjectList.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="ProjectList.asp" comment="'" forShow="True" url="ProjectList.asp"/>
		<CodeFile id="1" language="C#InMotion" name="ProjectList.aspx" forShow="True" url="ProjectList.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="ProjectListEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="22" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
