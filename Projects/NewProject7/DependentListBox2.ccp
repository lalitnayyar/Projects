<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="Spring" wizardThemeVersion="3.0" needGeneration="0" isService="False" pasteActions="pasteActions">
	<Components>
		<IncludePage id="35" name="header" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="store_productsSearch" actionPage="NewPage2" errorSummator="Error" wizardFormMethod="post" PathID="store_productsSearch">
			<Components>
				<ListBox id="3" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Single" returnValueType="Number" name="s_category_id" wizardEmptyCaption="Select Value" connection="InternetDB" dataSource="store_categories" boundColumn="category_id" textColumn="category_name" PathID="store_productsSearchs_category_id">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
</ListBox>
				<ListBox id="4" visible="Dynamic" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="s_product_id" wizardEmptyCaption="Select Value" connection="InternetDB" dataSource="store_products" boundColumn="product_id" textColumn="product_name" activeCollection="TableParameters" PathID="store_productsSearchs_product_id">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="44" conditionType="Parameter" useIsNull="False" field="product_id" dataType="Integer" searchConditionType="Equal" parameterType="Expression" logicOperator="And" parameterSource="0"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="43" tableName="store_products" posLeft="10" posTop="10" posWidth="132" posHeight="168"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features>
						<PTDependentListBox id="24" enabled="True" name="PTDependentListBox_s_product_id" servicePage="services/products_by_category.ccp" masterListbox="s_category_id" category="Prototype" featureNameChanged="No">
							<Components/>
							<Events/>
							<Features/>
						</PTDependentListBox>
						<PTAutoFill id="31" enabled="True" valueField="value" sourceType="Table" name="PTAutoFill1" servicePage="services/products.ccp" searchField="product_id" connection="InternetDB" featureNameChanged="No" dataSource="store_products" category="Prototype" start="store_productsSearchs_product_id.onchange;">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Controls>
								<Control id="38" name="store_productsprice" source="price" propertyValue="innerHTML"/>
								<Control id="39" name="store_productsimage_url" source="image_url" propertyValue="src"/>
								<Control id="40" name="store_productsdescription" source="description" propertyValue="innerHTML"/>
								<Control id="42" name="store_productsproduct_name" source="product_name" propertyValue="innerHTML"/>
							</Controls>
							<Features/>
							<ControlPoints/>
						</PTAutoFill>
						<Condition id="36" conditionType="Parameter" dataType="Text" name="Condition1" category="Ajax" featureNameChanged="No" condition="==" sourceType1="Control" name1="store_productsSearchs_product_id" sourceType2="Expression" name2="&quot;&quot;" ccsIdsOnly="False" start="store_productsSearch.onload;store_productsSearchs_product_id.onchange;store_productsSearchs_product_idPTDependentListBox_s_product_id.onsuccess;">
							<Components/>
							<Events/>
							<Features/>
							<ControlPoints/>
						</Condition>
						<HideShow id="37" enabled="True" name="HideShow1" category="Ajax" featureNameChanged="No" controlId="store_products" ccsIdsOnly="False" show="store_productsSearchs_product_idCondition1.onfalse;" hide="store_productsSearchs_product_idCondition1.ontrue;">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Features/>
							<ControlPoints/>
						</HideShow>
					</Features>
					<PKFields/>
</ListBox>
			</Components>
			<Events/>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions/>
			<UFormElements/>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
</Record>
		<Record id="6" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="store_products" actionPage="NewPage2" errorSummator="Error" wizardFormMethod="post" PathID="store_products">
			<Components>
				<Label id="13" fieldSourceType="DBColumn" dataType="Text" html="False" name="product_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" name="price">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="image_url" PathID="store_productsimage_url">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="15" fieldSourceType="DBColumn" dataType="Text" html="False" name="description">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions/>
			<UFormElements/>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
</Record>
		<IncludePage id="41" name="footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="45" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="DependentListBox2_desc.ccp" visible="Yes" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="PHPTemplates" name="DependentListBox2_events.php" forShow="False" comment="//"/>
		<CodeFile id="Code" language="PHPTemplates" name="DependentListBox2.php" forShow="True" url="DependentListBox2.php" comment="//"/>
		<CodeFile id="Events" language="ASPTemplates" name="DependentListBox2_events.asp" forShow="False" comment="'"/>
		<CodeFile id="Code" language="ASPTemplates" name="DependentListBox2.asp" forShow="True" url="DependentListBox2.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
