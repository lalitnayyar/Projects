<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" validateRequest="True" scriptingSupport="Automatic" needGeneration="0" wizardTheme="None" wizardThemeVersion="3.0">
	<Components>
		<Panel id="2" visible="True" name="categoriesTemplatePanel" PathID="CategoriescategoriesTemplatePanel" masterPage="{CCS_PathToMasterPage}/BlockTemplate.ccp">
			<Components>
				<Panel id="3" visible="True" name="categoriesTitle" PathID="CategoriescategoriesTemplatePanelcategoriesTitle" contentPlaceholder="Title">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="4" visible="True" name="categoriesContent" PathID="CategoriescategoriesTemplatePanelcategoriesContent" contentPlaceholder="Content">
					<Components>
						<Grid id="5" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="categories" connection="InternetDB" dataSource="store_categories" pageSizeLimit="100" pageSize="False" wizardCaption="List of Store Categories " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Grid/SimpleColumnar.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
							<Components>
								<Link id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="None" name="category_name" fieldSource="category_name" wizardCaption="Category Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="Products.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;category_name&quot;,&quot;hrefSource&quot;:&quot;Products.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;category_id&quot;,&quot;parameterName&quot;:&quot;category_id&quot;}}}" wizardAddNbsp="False" PathID="CategoriescategoriesTemplatePanelcategoriesContentcategoriescategory_name" urlType="Relative">
									<Components/>
									<Events/>
									<LinkParameters>
										<LinkParameter id="8" sourceType="DataField" format="yyyy-mm-dd" name="category_id" source="category_id"/>
									</LinkParameters>
									<Attributes/>
									<Features/>
								</Link>
							</Components>
							<Events/>
							<TableParameters/>
							<JoinTables>
								<JoinTable id="6" tableName="store_categories"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
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
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="Categories.php" forShow="True" url="Categories.php" comment="//"/>
		<CodeFile id="1" language="C#InMotion" name="Categories.ascx" forShow="True" url="Categories.ascx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="CategoriesEvents.ascx.cs" forShow="False" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" name="Categories.asp" forShow="True" url="Categories.asp" comment="'"/>
</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
