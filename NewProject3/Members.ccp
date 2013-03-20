<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" name="Members" webService="False" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="55" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="56" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="43" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="users" connection="internet" dataSource="users" orderBy="user_login" pageSizeLimit="100" pageSize="False" wizardCaption="List of Users " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="44" visible="True" name="Sorter_user_login" column="user_login" wizardCaption="Login" wizardSortingType="SimpleDir" wizardControl="user_login" wizardAddNbsp="False" PathID="ContentusersSorter_user_login" oldHTML="&lt;!-- BEGIN Sorter Sorter_user_login --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentusersSorter_user_login&quot;&gt;Login&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_user_login --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="45" visible="True" name="Sorter_first_name" column="first_name" wizardCaption="First Name" wizardSortingType="SimpleDir" wizardControl="first_name" wizardAddNbsp="False" PathID="ContentusersSorter_first_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_first_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentusersSorter_first_name&quot;&gt;First Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_first_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="46" visible="True" name="Sorter_last_name" column="last_name" wizardCaption="Last Name" wizardSortingType="SimpleDir" wizardControl="last_name" wizardAddNbsp="False" PathID="ContentusersSorter_last_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_last_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentusersSorter_last_name&quot;&gt;Last Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_last_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="47" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="GET" name="user_login" fieldSource="user_login" wizardCaption="Login" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="MemberInfo.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;user_login&quot;,&quot;hrefSource&quot;:&quot;MemberInfo.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;user_id&quot;,&quot;parameterName&quot;:&quot;user_id&quot;}}}" wizardAddNbsp="False" PathID="Contentusersuser_login" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="48" sourceType="DataField" format="yyyy-mm-dd" name="user_id" source="user_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="first_name" fieldSource="first_name" wizardCaption="First Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contentusersfirst_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="50" fieldSourceType="DBColumn" dataType="Text" html="False" name="last_name" fieldSource="last_name" wizardCaption="Last Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contentuserslast_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="61" conditionType="Parameter" useIsNull="False" dataType="Text" field="user_login" logicOperator="Or" old_temp_id="7" orderNumber="1" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
<TableParameter id="62" conditionType="Parameter" useIsNull="False" dataType="Text" field="first_name" logicOperator="Or" old_temp_id="15" orderNumber="2" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
<TableParameter id="63" conditionType="Parameter" useIsNull="False" dataType="Text" field="last_name" logicOperator="And" old_temp_id="17" orderNumber="3" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
</TableParameters>
					<JoinTables>
						<JoinTable id="60" posHeight="180" posLeft="10" posTop="10" posWidth="133" tableName="users"/>
</JoinTables>
					<JoinLinks/>
					<Fields>
<Field id="64" fieldName="*"/>
</Fields>
					<PKFields>
<PKField id="65" dataType="Integer" fieldName="user_id" tableName="users"/>
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
		<Panel id="57" visible="True" name="Menu" contentPlaceholder="Menu">
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
		<Panel id="58" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="59" name="Search" PathID="Sidebar1Search" page="Search.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="Members.php" comment="//" forShow="True" url="Members.php"/>
		<CodeFile id="3" language="C#" name="Members.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Members.aspx"/>
		<CodeFile id="1" language="C#" name="Members.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="MembersDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="Members.asp" forShow="True" url="Members.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
