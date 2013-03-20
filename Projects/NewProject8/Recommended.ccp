<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" validateRequest="True" scriptingSupport="Automatic">
	<Components>
		<Panel id="2" visible="True" name="recommendTemplatePanel" PathID="RecommendedrecommendTemplatePanel" masterPage="{CCS_PathToMasterPage}/BlockTemplate.ccp">
			<Components>
				<Panel id="3" visible="True" name="recommendTitle" PathID="RecommendedrecommendTemplatePanelrecommendTitle" contentPlaceholder="Title">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="4" visible="True" name="recommendContent" PathID="RecommendedrecommendTemplatePanelrecommendContent" contentPlaceholder="Content">
					<Components>
						<Grid id="5" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="3" name="recommend" connection="InternetDB" dataSource="store_products" pageSizeLimit="100" wizardCaption="List of Store Editorial Products " wizardGridType="Justified" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" activeCollection="TableParameters" activeTableType="dataSource" wizardChangedThroughVQB="True">
							<Components>
								<Link id="6" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="article_title" fieldSource="product_name" wizardCaption="Article Title" wizardSize="50" wizardMaxLength="200" wizardIsPassword="False" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="ProductDetail.ccp" visible="Yes">
									<Components/>
									<Events/>
									<LinkParameters>
										<LinkParameter id="7" sourceType="DataField" name="product_id" source="product_id"/>
									</LinkParameters>
									<Attributes/>
									<Features/>
								</Link>
								<ImageLink id="8" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="image_url" fieldSource="image_url" wizardCaption="Product Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="ProductDetail.ccp" visible="Yes">
									<Components/>
									<Events>
									</Events>
									<LinkParameters>
										<LinkParameter id="9" sourceType="DataField" name="product_id" source="product_id"/>
									</LinkParameters>
									<Attributes/>
									<Features/>
								</ImageLink>
								<Label id="10" fieldSourceType="DBColumn" dataType="Float" html="False" editable="False" name="Price" fieldSource="price" format="$0.00">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Label>
							</Components>
							<Events/>
							<TableParameters>
								<TableParameter id="11" conditionType="Expression" useIsNull="False" field="is_recommended" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" defaultValue="5" parameterSource="editorial_cat_id" orderNumber="1" expression="is_recommended=1"/>
							</TableParameters>
							<JoinTables>
								<JoinTable id="12" tableName="store_products" posWidth="102" posHeight="183" posLeft="264" posTop="45"/>
							</JoinTables>
							<JoinLinks>
							</JoinLinks>
							<Fields>
								<Field id="13" tableName="store_products" fieldName="*"/>
							</Fields>
							<SPParameters/>
							<SQLParameters/>
							<SecurityGroups/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</Grid>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="Recommended.php" forShow="True" url="Recommended.php" comment="//"/>
		<CodeFile id="1" language="C#InMotion" name="Recommended.ascx" forShow="True" url="Recommended.ascx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="RecommendedEvents.ascx.cs" forShow="False" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" name="Recommended.asp" forShow="True" url="Recommended.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
