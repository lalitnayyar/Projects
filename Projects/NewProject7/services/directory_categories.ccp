<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="directory_categories" connection="InternetDB" dataSource="directory_categories" pageSizeLimit="100" wizardCaption="List of Directory Categories ">
			<Components>
				<Label id="67" fieldSourceType="DBColumn" dataType="Integer" html="False" name="category_id" fieldSource="category_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="68" fieldSourceType="DBColumn" dataType="Text" html="False" name="category_name" fieldSource="category_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="70" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="-1" field="category_id_parent" logicOperator="And" parameterSource="keyword" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="69" posHeight="104" posLeft="10" posTop="10" posWidth="125" tableName="directory_categories"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="71" fieldName="*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
				<PKField id="72" dataType="Integer" fieldName="category_id" tableName="directory_categories"/>
			</PKFields>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="directory_categories.php" forShow="True" url="directory_categories.php" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" name="directory_categories.asp" forShow="True" url="directory_categories.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
