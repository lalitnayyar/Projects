<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="100" name="store_products1" connection="InternetDB" dataSource="store_products" pageSizeLimit="100" wizardCaption="List of Store Products1 ">
			<Components>
				<Label id="26" fieldSourceType="DBColumn" dataType="Integer" html="False" name="product_id" fieldSource="product_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="True" name="product_name" fieldSource="product_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="25" conditionType="Parameter" useIsNull="False" field="category_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" parameterSource="keyword"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="28" tableName="store_products" posLeft="10" posTop="10" posWidth="132" posHeight="172"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="products_by_category.php" forShow="True" url="products_by_category.php" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" name="products_by_category.asp" forShow="True" url="products_by_category.asp" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
