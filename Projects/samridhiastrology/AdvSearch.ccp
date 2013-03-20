<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="Basic" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="24" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="25" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" debugMode="False" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="products_search" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="Products.ccp">
					<Components>
						<ListBox id="6" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="category_id" wizardCaption="Category Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" sourceType="Table" connection="InternetDB" dataSource="store_categories" boundColumn="category_id" textColumn="category_name" visible="Yes">
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
						<TextBox id="7" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="s_keyword" wizardCaption="Product Name" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" visible="Yes">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="8" fieldSourceType="DBColumn" dataType="Float" html="False" editable="True" hasErrorCollection="True" name="price_from" wizardCaption="Price" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" visible="Yes">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="9" fieldSourceType="DBColumn" dataType="Float" html="False" editable="True" hasErrorCollection="True" name="price_to" wizardCaption="Price" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" visible="Yes">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="10" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" editable="True" hasErrorCollection="True" returnValueType="Number" name="productsOrder" wizardEmptyCaption="Select Value" dataSource="sorter_product_name;Product;sorter_price;Price" _valueOfList="sorter_price" _nameOfList="Price" visible="Yes">
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
						<ListBox id="12" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" editable="True" hasErrorCollection="True" returnValueType="Number" name="productsDir" wizardEmptyCaption="Select Value" dataSource="ASC;Ascending;DESC;Descending" visible="Yes">
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
						<ListBox id="11" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="productsPageSize" wizardEmptyCaption="Select Value" dataSource="10;10;25;25;50;50" visible="Yes">
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
						<Button id="5" urlType="Relative" enableValidation="True" isDefault="False" name="DoSearch" operation="Search" wizardCaption="Search">
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
					<PKFields/>
					<Attributes/>
					<Features/>
				</Record>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="26" visible="True" name="Menu" contentPlaceholder="Menu">
<Components>
<IncludePage id="23" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="27" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
<IncludePage id="28" name="Recommended" PathID="SidebarRecommended" page="Recommended.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
<IncludePage id="30" name="Categories" PathID="SidebarCategories" page="Categories.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdvSearch.php" comment="//" forShow="True" url="AdvSearch.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="Search.cgi" comment="#" forShow="True" url="Search.cgi"/>
		<CodeFile id="3" language="C#" name="Search.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Search.aspx"/>
		<CodeFile id="1" language="C#" name="Search.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AdvSearchDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdvSearch.asp" forShow="True" url="AdvSearch.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="AdvSearch.aspx" forShow="True" url="AdvSearch.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="AdvSearchEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
