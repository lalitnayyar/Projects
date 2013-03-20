<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" webService="False" name="Default" SSLAccess="False" urlType="Relative" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" validateRequest="True" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="328" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="329" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="277" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="25" name="tasks" connection="intranet" dataSource="tasks, statuses, projects, priorities, employees, types" pageSizeLimit="100" pageSize="False" wizardCaption="List of Types, Employees, Priorities, Projects, Statuses, Tasks " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="278" visible="True" name="Sorter_task_name" column="task_name" wizardCaption="Name" wizardSortingType="SimpleDir" wizardControl="task_name" wizardAddNbsp="False" PathID="ContenttasksSorter_task_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_task_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContenttasksSorter_task_name&quot;&gt;Task&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_task_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="279" visible="True" name="Sorter_project_name" column="project_name" wizardCaption="Name" wizardSortingType="SimpleDir" wizardControl="project_name" wizardAddNbsp="False" PathID="ContenttasksSorter_project_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_project_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContenttasksSorter_project_name&quot;&gt;Project&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_project_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="280" visible="True" name="Sorter_priority_name" column="priority_name" wizardCaption="Name" wizardSortingType="SimpleDir" wizardControl="priority_name" wizardAddNbsp="False" PathID="ContenttasksSorter_priority_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_priority_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContenttasksSorter_priority_name&quot;&gt;Priority&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_priority_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="281" visible="True" name="Sorter_status_name" column="status_name" wizardCaption="Status Name" wizardSortingType="SimpleDir" wizardControl="status_name" wizardAddNbsp="False" PathID="ContenttasksSorter_status_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_status_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContenttasksSorter_status_name&quot;&gt;Status&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_status_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="282" visible="True" name="Sorter_type_name" column="type_name" wizardCaption="Name" wizardSortingType="SimpleDir" wizardControl="type_name" wizardAddNbsp="False" PathID="ContenttasksSorter_type_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_type_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContenttasksSorter_type_name&quot;&gt;Type&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_type_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="283" visible="True" name="Sorter_emp_name" column="emp_name" wizardCaption="Emp Name" wizardSortingType="SimpleDir" wizardControl="emp_name" wizardAddNbsp="False" PathID="ContenttasksSorter_emp_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_emp_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContenttasksSorter_emp_name&quot;&gt;Employee&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_emp_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="286" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="GET" name="task_name" fieldSource="task_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="TaskRecord.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;task_name&quot;,&quot;hrefSource&quot;:&quot;TaskRecord.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;task_id&quot;,&quot;parameterName&quot;:&quot;task_id&quot;}}}" wizardAddNbsp="False" PathID="Contenttaskstask_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="287" sourceType="DataField" format="yyyy-mm-dd" name="task_id" source="task_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="288" fieldSourceType="DBColumn" dataType="Text" html="False" name="project_name" fieldSource="project_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contenttasksproject_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="289" fieldSourceType="DBColumn" dataType="Text" html="False" name="priority_name" fieldSource="priority_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contenttaskspriority_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="290" fieldSourceType="DBColumn" dataType="Text" html="False" name="status_name" fieldSource="status_name" wizardCaption="Status Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contenttasksstatus_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="291" fieldSourceType="DBColumn" dataType="Text" html="False" name="type_name" fieldSource="type_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contenttaskstype_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="292" fieldSourceType="DBColumn" dataType="Text" html="False" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contenttasksemp_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="69" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="False" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="False" wizardLastText="Last" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="False" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
      &lt;!-- BEGIN Prev_On --&gt;&lt;a href=&quot;{Prev_URL}&quot;&gt;Prev &lt;/a&gt; &lt;!-- END Prev_On --&gt;
      &lt;!-- BEGIN Prev_Off --&gt;Prev &lt;!-- END Prev_Off --&gt;&amp;nbsp;{Page_Number}&amp;nbsp; 
      &lt;!-- BEGIN Next_On --&gt;&lt;a href=&quot;{Next_URL}&quot;&gt;Next &lt;/a&gt; &lt;!-- END Next_On --&gt;
      &lt;!-- BEGIN Next_Off --&gt;Next &lt;!-- END Next_Off --&gt;&lt;/span&gt;&lt;!-- END Navigator Navigator --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
<Link id="249" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link1" hrefSource="TaskRecord.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="69" PathID="ContenttasksLink1">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="396" conditionType="Parameter" useIsNull="False" dataType="Integer" field="tasks.user_id_assign_to" logicOperator="And" orderNumber="1" parameterSource="s_user_id_assign_to" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="397" conditionType="Parameter" useIsNull="False" dataType="Integer" field="tasks.project_id" logicOperator="And" orderNumber="2" parameterSource="s_project_id" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="398" conditionType="Parameter" useIsNull="False" dataType="Integer" field="tasks.priority_id" logicOperator="And" orderNumber="3" parameterSource="s_priority_id" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="399" conditionType="Parameter" useIsNull="False" dataType="Integer" field="tasks.status_id" logicOperator="And" orderNumber="4" parameterSource="s_status_id" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="400" conditionType="Parameter" useIsNull="False" dataType="Integer" field="tasks.type_id" logicOperator="And" orderNumber="5" parameterSource="s_type_id" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="401" conditionType="Parameter" useIsNull="False" dataType="Boolean" defaultValue="1" field="projects.project_is_active" logicOperator="And" parameterSource="1" parameterType="Expression" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="385" posHeight="313" posLeft="10" posTop="10" posWidth="145" tableName="tasks"/>
						<JoinTable id="386" posHeight="88" posLeft="176" posTop="10" posWidth="95" tableName="statuses"/>
						<JoinTable id="387" posHeight="104" posLeft="214" posTop="234" posWidth="111" tableName="projects"/>
						<JoinTable id="388" posHeight="88" posLeft="424" posTop="10" posWidth="95" tableName="priorities"/>
						<JoinTable id="389" posHeight="356" posLeft="371" posTop="155" posWidth="151" tableName="employees"/>
						<JoinTable id="390" posHeight="88" posLeft="712" posTop="10" posWidth="95" tableName="types"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="391" conditionType="Equal" fieldLeft="tasks.status_id" fieldRight="statuses.status_id" joinType="left" old_temp_id="202" tableLeft="tasks" tableRight="statuses"/>
						<JoinTable2 id="392" conditionType="Equal" fieldLeft="tasks.project_id" fieldRight="projects.project_id" joinType="left" old_temp_id="203" tableLeft="tasks" tableRight="projects"/>
						<JoinTable2 id="393" conditionType="Equal" fieldLeft="tasks.priority_id" fieldRight="priorities.priority_id" joinType="left" old_temp_id="204" tableLeft="tasks" tableRight="priorities"/>
						<JoinTable2 id="394" conditionType="Equal" fieldLeft="tasks.user_id_assign_to" fieldRight="employees.emp_id" joinType="left" old_temp_id="205" tableLeft="tasks" tableRight="employees"/>
						<JoinTable2 id="395" conditionType="Equal" fieldLeft="tasks.type_id" fieldRight="types.type_id" joinType="inner" old_temp_id="206" tableLeft="tasks" tableRight="types"/>
					</JoinLinks>
					<Fields>
						<Field id="402" fieldName="task_id" old_temp_id="188" tableName="tasks"/>
						<Field id="403" fieldName="task_name" old_temp_id="189" tableName="tasks"/>
						<Field id="404" fieldName="task_start_date" old_temp_id="190" tableName="tasks"/>
						<Field id="405" fieldName="task_finish_date" old_temp_id="191" tableName="tasks"/>
						<Field id="406" fieldName="status_name" old_temp_id="193" tableName="statuses"/>
						<Field id="407" fieldName="project_name" old_temp_id="195" tableName="projects"/>
						<Field id="408" fieldName="priority_name" old_temp_id="197" tableName="priorities"/>
						<Field id="409" fieldName="emp_name" old_temp_id="199" tableName="employees"/>
						<Field id="410" fieldName="type_name" old_temp_id="201" tableName="types"/>
					</Fields>
					<PKFields>
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
		<Panel id="330" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="216" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="331" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="384" name="Search" PathID="Sidebar1Search" page="Search.ccp">
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
		<CodeFile id="codeRecord1" language="CFML" name="Default_search.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codeGrid1" language="CFML" name="Default_tasks.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="Default.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="Default.cfm"/>
		<CodeFile id="Code" language="PHPTemplates" name="Default.php" comment="//" forShow="True" url="Default.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="Default.asp" comment="'" forShow="True" url="Default.asp"/>
		<CodeFile id="1" language="C#InMotion" name="Default.aspx" forShow="True" url="Default.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="DefaultEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
