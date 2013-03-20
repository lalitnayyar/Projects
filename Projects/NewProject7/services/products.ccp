<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="store_products1" connection="InternetDB" dataSource="store_products" pageSizeLimit="100" wizardCaption="List of Store Products1 ">
			<Components>
				<Label id="33" fieldSourceType="DBColumn" dataType="Integer" html="False" name="product_id" fieldSource="product_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="34" fieldSourceType="DBColumn" dataType="Integer" html="False" name="category_id" fieldSource="category_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="35" fieldSourceType="DBColumn" dataType="Text" html="False" name="product_name" fieldSource="product_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="36" fieldSourceType="DBColumn" dataType="Float" html="False" name="price" fieldSource="price">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="37" fieldSourceType="DBColumn" dataType="Text" html="False" name="image_url" fieldSource="image_url">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="38" fieldSourceType="DBColumn" dataType="Memo" html="False" name="description" fieldSource="description">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="39" fieldSourceType="DBColumn" dataType="Integer" html="False" name="is_recommended" fieldSource="is_recommended">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="32" conditionType="Parameter" useIsNull="False" field="product_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" parameterSource="keyword"/>
			</TableParameters>
			<JoinTables/>
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
		<CodeFile id="Code" language="PHPTemplates" name="products.php" forShow="True" url="products.php" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" name="products.asp" forShow="True" url="products.asp" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
