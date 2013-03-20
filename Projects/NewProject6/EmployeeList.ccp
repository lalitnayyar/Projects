<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="EmployeeList" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" validateRequest="True" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="75" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="76" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="59" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="25" name="employees" connection="intranet" dataSource="employees, groups" pageSizeLimit="100" pageSize="False" wizardCaption="List of Groups, Employees " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Simple" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="60" visible="True" name="Sorter_emp_name" column="emp_name" wizardCaption="Emp Name" wizardSortingType="Extended" wizardControl="emp_name" wizardAddNbsp="False" PathID="ContentemployeesSorter_emp_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_emp_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentemployeesSorter_emp_name&quot;&gt;Emp Name&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_emp_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="61" visible="True" name="Sorter_emp_login" column="emp_login" wizardCaption="Emp Login" wizardSortingType="Extended" wizardControl="emp_login" wizardAddNbsp="False" PathID="ContentemployeesSorter_emp_login" oldHTML="&lt;!-- BEGIN Sorter Sorter_emp_login --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentemployeesSorter_emp_login&quot;&gt;Emp Login&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_emp_login --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="62" visible="True" name="Sorter_email" column="email" wizardCaption="Email" wizardSortingType="Extended" wizardControl="email" wizardAddNbsp="False" PathID="ContentemployeesSorter_email" oldHTML="&lt;!-- BEGIN Sorter Sorter_email --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentemployeesSorter_email&quot;&gt;Email&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_email --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="63" visible="True" name="Sorter_group_name" column="group_name" wizardCaption="Name" wizardSortingType="Extended" wizardControl="group_name" wizardAddNbsp="False" PathID="ContentemployeesSorter_group_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_group_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentemployeesSorter_group_name&quot;&gt;Name&lt;/a&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_group_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="GET" name="emp_name" fieldSource="emp_name" wizardCaption="Emp Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="EmployeeMaint.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;emp_name&quot;,&quot;hrefSource&quot;:&quot;EmployeeMaint.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;emp_id&quot;,&quot;parameterName&quot;:&quot;emp_id&quot;}}}" wizardAddNbsp="False" PathID="Contentemployeesemp_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="65" sourceType="DataField" format="yyyy-mm-dd" name="emp_id" source="emp_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="66" fieldSourceType="DBColumn" dataType="Text" html="False" name="emp_login" fieldSource="emp_login" wizardCaption="Emp Login" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contentemployeesemp_login">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Link id="67" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" preserveParameters="None" name="email" fieldSource="email" wizardCaption="Email" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="email" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;email&quot;,&quot;hrefSource&quot;:&quot;&quot;,&quot;hrefSourceDB&quot;:&quot;email&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:0,&quot;objectType&quot;:&quot;linkParameters&quot;}}" wizardAddNbsp="False" PathID="Contentemployeesemail" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="68" fieldSourceType="DBColumn" dataType="Text" html="False" name="group_name" fieldSource="group_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contentemployeesgroup_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="69" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
      &lt;!-- BEGIN Prev_On --&gt;&lt;a href=&quot;{Prev_URL}&quot;&gt;Prev &lt;/a&gt; &lt;!-- END Prev_On --&gt;
      &lt;!-- BEGIN Prev_Off --&gt;Prev &lt;!-- END Prev_Off --&gt;&amp;nbsp;{Page_Number}&amp;nbsp; 
      &lt;!-- BEGIN Next_On --&gt;&lt;a href=&quot;{Next_URL}&quot;&gt;Next &lt;/a&gt; &lt;!-- END Next_On --&gt;
      &lt;!-- BEGIN Next_Off --&gt;Next &lt;!-- END Next_Off --&gt;&lt;/span&gt;&lt;!-- END Navigator Navigator --&gt;" wizardImages="Images" wizardUsePageScroller="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
						<Link id="58" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link1" hrefSource="EmployeeMaint.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="14" PathID="ContentemployeesLink1">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
</Components>
					<Events/>
					<TableParameters>
					</TableParameters>
					<JoinTables>
						<JoinTable id="79" posHeight="319" posLeft="10" posTop="10" posWidth="133" tableName="employees"/>
						<JoinTable id="80" posHeight="88" posLeft="182" posTop="10" posWidth="95" tableName="groups"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="81" conditionType="Equal" fieldLeft="employees.group_id" fieldRight="employees.group_id" joinType="inner" old_temp_id="29" tableLeft="employees" tableRight="employees"/>
						<JoinTable2 id="82" conditionType="Equal" fieldLeft="employees.group_id" fieldRight="groups.group_id" joinType="left" old_temp_id="30" tableLeft="employees" tableRight="groups"/>
					</JoinLinks>
					<Fields>
						<Field id="83" fieldName="*"/>
					</Fields>
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
		<Panel id="77" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="38" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="78" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="39" name="Administration" PathID="Sidebar1Administration" page="Administration.ccp">
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
		<CodeFile id="codeGrid1" language="CFML" name="EmployeeList_employees.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="EmployeeList.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="EmployeeList.cfm"/>
		<CodeFile id="Code" language="PHPTemplates" name="EmployeeList.php" comment="//" forShow="True" url="EmployeeList.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="EmployeeList.asp" comment="'" forShow="True" url="EmployeeList.asp"/>
		<CodeFile id="1" language="C#InMotion" name="EmployeeList.aspx" forShow="True" url="EmployeeList.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="EmployeeListEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="24" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
