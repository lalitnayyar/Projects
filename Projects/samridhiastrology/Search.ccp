<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" validateRequest="True" scriptingSupport="Automatic" needGeneration="0">
	<Components>
		<Panel id="2" visible="True" name="products_searchTemplatePanel" PathID="Searchproducts_searchTemplatePanel" masterPage="{CCS_PathToMasterPage}/BlockTemplate.ccp">
			<Components>
				<Panel id="3" visible="True" name="products_searchTitle" PathID="Searchproducts_searchTemplatePanelproducts_searchTitle" contentPlaceholder="Title">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="4" visible="True" name="products_searchContent" PathID="Searchproducts_searchTemplatePanelproducts_searchContent" contentPlaceholder="Content">
					<Components>
						<Record id="5" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="products_search" returnPage="Products.ccp">
							<Components>
								<ListBox id="6" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="category_id" connection="InternetDB" dataSource="store_categories" boundColumn="category_id" textColumn="category_name">
									<Components/>
									<Events/>
									<TableParameters/>
									<SPParameters/>
									<SQLParameters/>
									<JoinTables/>
									<JoinLinks/>
									<Fields/>
									<PKFields/>
									<Attributes/>
									<Features/>
								</ListBox>
								<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
								<Button id="8" urlType="Relative" enableValidation="True" isDefault="False" name="DoSearch" operation="Search">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
							</Components>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
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
						</Record>
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
		<CodeFile id="Code" language="PHPTemplates" name="Search.php" forShow="True" url="Search.php" comment="//"/>
		<CodeFile id="1" language="C#InMotion" name="Search.ascx" forShow="True" url="Search.ascx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="SearchEvents.ascx.cs" forShow="False" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" name="Search.asp" forShow="True" url="Search.asp" comment="'"/>
</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
