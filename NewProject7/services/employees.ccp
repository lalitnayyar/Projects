<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="employees1" connection="IntranetDB" dataSource="employees" pageSizeLimit="100" wizardCaption="List of Employees1 ">
			<Components>
				<Label id="119" fieldSourceType="DBColumn" dataType="Integer" html="False" name="emp_id" fieldSource="emp_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="120" fieldSourceType="DBColumn" dataType="Text" html="False" name="emp_login" fieldSource="emp_login">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="121" fieldSourceType="DBColumn" dataType="Text" html="False" name="emp_password" fieldSource="emp_password">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="122" fieldSourceType="DBColumn" dataType="Text" html="False" name="emp_name" fieldSource="emp_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="123" fieldSourceType="DBColumn" dataType="Text" html="False" name="title" fieldSource="title">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="124" fieldSourceType="DBColumn" dataType="Integer" html="False" name="group_id" fieldSource="group_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="125" fieldSourceType="DBColumn" dataType="Integer" html="False" name="department_id" fieldSource="department_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="126" fieldSourceType="DBColumn" dataType="Text" html="False" name="email" fieldSource="email">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="127" fieldSourceType="DBColumn" dataType="Text" html="False" name="picture" fieldSource="picture">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="128" fieldSourceType="DBColumn" dataType="Text" html="False" name="phone_home" fieldSource="phone_home">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="129" fieldSourceType="DBColumn" dataType="Text" html="False" name="phone_work" fieldSource="phone_work">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="130" fieldSourceType="DBColumn" dataType="Text" html="False" name="phone_cell" fieldSource="phone_cell">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="131" fieldSourceType="DBColumn" dataType="Text" html="False" name="fax" fieldSource="fax">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="132" fieldSourceType="DBColumn" dataType="Text" html="False" name="city" fieldSource="city">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="133" fieldSourceType="DBColumn" dataType="Text" html="False" name="zip" fieldSource="zip">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="134" fieldSourceType="DBColumn" dataType="Text" html="False" name="address" fieldSource="address">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="118" conditionType="Parameter" useIsNull="False" field="emp_name" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" parameterSource="keyword"/>
			</TableParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="employees.php" forShow="True" url="employees.php" comment="//" codePage="windows-1252"/>
		<CodeFile id="Code" language="ASPTemplates" name="employees.asp" forShow="True" url="employees.asp" comment="'" codePage="windows-1252"/>
</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
