<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="Basic" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="279" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="280" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="87" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="notable" connection="InternetDB" dataSource="store_editorial_products, store_products" pageSizeLimit="100" wizardCaption="List of Store Editorial Products " wizardGridType="Justified" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" activeCollection="TableParameters" activeTableType="dataSource" editableComponentTypeString="Grid" wizardChangedThroughVQB="True">
					<Components>
						<ImageLink id="91" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="image_url" fieldSource="image_url" wizardCaption="Product Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="ProductDetail.ccp" visible="Yes">
							<Components/>
							<Events>
							</Events>
							<LinkParameters>
								<LinkParameter id="114" sourceType="DataField" name="product_id" source="product_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</ImageLink>
						<Link id="88" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="article_title" fieldSource="article_title" wizardCaption="Article Title" wizardSize="50" wizardMaxLength="200" wizardIsPassword="False" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="ProductDetail.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="89" sourceType="DataField" name="product_id" source="product_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="90" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="False" name="article_desc" fieldSource="article_desc" wizardCaption="Article Desc" wizardSize="50" wizardIsPassword="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="252" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="2" field="editorial_cat_id" logicOperator="And" orderNumber="1" parameterSource="editorial_cat_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="249" posHeight="152" posLeft="10" posTop="10" posWidth="120" tableName="store_editorial_products"/>
						<JoinTable id="250" posHeight="180" posLeft="151" posTop="10" posWidth="132" tableName="store_products"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="251" conditionType="Equal" fieldLeft="store_products.product_id" fieldRight="store_editorial_products.product_id" joinType="inner" tableLeft="store_products" tableRight="store_editorial_products"/>
					</JoinLinks>
					<Fields>
						<Field id="254" fieldName="store_editorial_products.*" tableName="store_editorial_products"/>
						<Field id="255" fieldName="image_url" tableName="store_products"/>
					</Fields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<PKFields>
					</PKFields>
					<Attributes/>
					<Features/>
				</Grid>
				<Grid id="99" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="week" connection="InternetDB" dataSource="store_editorial_products, store_products" pageSizeLimit="100" wizardCaption="List of Store Editorial Products " wizardGridType="Justified" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" activeCollection="TableParameters" activeTableType="dataSource" wizardChangedThroughVQB="True">
					<Components>
						<ImageLink id="103" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="image_url" fieldSource="image_url" wizardCaption="Product Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="ProductDetail.ccp" visible="Yes">
							<Components/>
							<Events>
							</Events>
							<LinkParameters>
								<LinkParameter id="115" sourceType="DataField" name="product_id" source="product_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</ImageLink>
						<Link id="100" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="article_title" fieldSource="article_title" wizardCaption="Article Title" wizardSize="50" wizardMaxLength="200" wizardIsPassword="False" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="ProductDetail.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="101" sourceType="DataField" name="product_id" source="product_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="102" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="False" name="article_desc" fieldSource="article_desc" wizardCaption="Article Desc" wizardSize="50" wizardIsPassword="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="261" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="3" field="editorial_cat_id" logicOperator="And" orderNumber="1" parameterSource="editorial_cat_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="258" posHeight="152" posLeft="10" posTop="10" posWidth="120" tableName="store_editorial_products"/>
						<JoinTable id="259" posHeight="180" posLeft="151" posTop="10" posWidth="132" tableName="store_products"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="260" conditionType="Equal" fieldLeft="store_products.product_id" fieldRight="store_editorial_products.product_id" joinType="inner" tableLeft="store_products" tableRight="store_editorial_products"/>
					</JoinLinks>
					<Fields>
						<Field id="263" fieldName="store_editorial_products.*" tableName="store_editorial_products"/>
						<Field id="264" fieldName="image_url" tableName="store_products"/>
					</Fields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<PKFields>
					</PKFields>
					<Attributes/>
					<Features/>
				</Grid>
				<Grid id="32" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="reading" connection="InternetDB" dataSource="store_editorial_products, store_products" pageSizeLimit="100" wizardCaption="List of Store Editorial Products " wizardGridType="Justified" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" activeCollection="TableParameters" activeTableType="dataSource" wizardChangedThroughVQB="True">
					<Components>
						<ImageLink id="111" fieldSourceType="DBColumn" dataType="Text" editable="False" name="Image1" fieldSource="image_url" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="ProductDetail.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="113" sourceType="DataField" name="product_id" source="product_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</ImageLink>
						<Link id="33" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="article_title" fieldSource="article_title" wizardCaption="Article Title" wizardSize="50" wizardMaxLength="200" wizardIsPassword="False" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="ProductDetail.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="37" sourceType="DataField" name="product_id" source="product_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="34" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="False" name="article_desc" fieldSource="article_desc" wizardCaption="Article Desc" wizardSize="50" wizardIsPassword="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="272" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="1" field="editorial_cat_id" logicOperator="And" orderNumber="1" parameterSource="editorial_cat_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="269" posHeight="152" posLeft="10" posTop="10" posWidth="120" tableName="store_editorial_products"/>
						<JoinTable id="270" posHeight="180" posLeft="151" posTop="10" posWidth="132" tableName="store_products"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="271" conditionType="Equal" fieldLeft="store_products.product_id" fieldRight="store_editorial_products.product_id" joinType="inner" tableLeft="store_products" tableRight="store_editorial_products"/>
					</JoinLinks>
					<Fields>
						<Field id="274" fieldName="store_editorial_products.*" tableName="store_editorial_products"/>
						<Field id="275" fieldName="image_url" tableName="store_products"/>
					</Fields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<PKFields>
					</PKFields>
					<Attributes/>
					<Features/>
				</Grid>
				<Grid id="75" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="weekly" connection="InternetDB" dataSource="store_editorial_products" pageSizeLimit="100" wizardCaption="List of Store Editorial Products " wizardGridType="Justified" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" activeCollection="TableParameters" activeTableType="dataSource" wizardChangedThroughVQB="True">
					<Components>
						<Label id="76" fieldSourceType="DBColumn" dataType="Text" html="True" editable="False" name="article_title" fieldSource="article_title" wizardCaption="Article Title" wizardSize="50" wizardMaxLength="200" wizardIsPassword="False" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="ProductDetail.ccp">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="77" sourceType="DataField" name="product_id" source="product_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="78" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="False" name="article_desc" fieldSource="article_desc" wizardCaption="Article Desc" wizardSize="50" wizardIsPassword="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
					</TableParameters>
					<JoinTables>
						<JoinTable id="276" posHeight="152" posLeft="10" posTop="10" posWidth="120" tableName="store_editorial_products"/>
					</JoinTables>
					<JoinLinks>
					</JoinLinks>
					<Fields>
					</Fields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<PKFields>
						<PKField id="278" dataType="Integer" fieldName="article_id" tableName="store_editorial_products"/>
					</PKFields>
					<Attributes/>
					<Features/>
				</Grid>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="281" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="126" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="282" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="204" name="Recommended" PathID="SidebarRecommended" page="Recommended.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
				<IncludePage id="203" name="Categories" PathID="SidebarCategories" page="Categories.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
				<IncludePage id="202" name="Search" PathID="SidebarSearch" page="Search.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="Default.php" comment="//" forShow="True" url="Default.php"/>
		<CodeFile id="Events" language="PerlTemplates" name="Default_events.pl" comment="#" forShow="False"/>
		<CodeFile id="Code" language="PerlTemplates" forShow="True" url="Default.cgi" name="Default.cgi" comment="#"/>
		<CodeFile id="3" language="C#" name="Default.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Default.aspx"/>
		<CodeFile id="1" language="C#" name="Default.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="DefaultDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="Default.asp" forShow="True" url="Default.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="Default.aspx" forShow="True" url="Default.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="DefaultEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
