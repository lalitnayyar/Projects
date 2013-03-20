<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="5" name="employees1" connection="IntranetDB" dataSource="employees" pageSizeLimit="100" orderBy="emp_name">
			<Components>
				<Label id="106" fieldSourceType="DBColumn" dataType="Text" html="False" name="emp_name" fieldSource="emp_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="109" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Image1" fieldSource="picture">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="105" conditionType="Parameter" useIsNull="False" field="emp_name" dataType="Text" searchConditionType="BeginsWith" parameterType="Form" parameterSource="emp_name" logicOperator="And"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="107" tableName="employees" posWidth="119" posHeight="339" posLeft="10" posTop="10"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="104" tableName="employees" fieldName="emp_name"/>
				<Field id="108" tableName="employees" fieldName="picture"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="employee_lookup.php" forShow="True" url="employee_lookup.php" comment="//" codePage="windows-1252"/>
		<CodeFile id="Code" language="ASPTemplates" name="employee_lookup.asp" forShow="True" url="employee_lookup.asp" comment="'" codePage="windows-1252"/>
</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
