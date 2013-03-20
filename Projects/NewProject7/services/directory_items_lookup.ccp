<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="directory_items" connection="InternetDB" dataSource="directory_items" pageSizeLimit="100" wizardCaption="List of Directory Items ">
			<Components>
				<Label id="69" fieldSourceType="DBColumn" dataType="Integer" html="False" name="item_id" fieldSource="item_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="70" fieldSourceType="DBColumn" dataType="Text" html="False" name="item_name" fieldSource="item_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="72" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="-1" field="category_id" logicOperator="And" parameterSource="keyword" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="71" posHeight="180" posLeft="10" posTop="10" posWidth="115" tableName="directory_items"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="73" fieldName="*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
				<PKField id="74" dataType="Integer" fieldName="item_id" tableName="directory_items"/>
			</PKFields>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="directory_items_lookup.php" forShow="True" url="directory_items_lookup.php" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" name="directory_items_lookup.asp" forShow="True" url="directory_items_lookup.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
