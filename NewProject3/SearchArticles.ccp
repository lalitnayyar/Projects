<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" useDesign="True" wizardTheme="None" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<Panel id="2" visible="True" name="TemplatePanel" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" PathID="NewIncludablePage1TemplatePanel" masterPage="{CCS_PathToMasterPage}/BlockTemplate.ccp">
			<Components>
				<Panel id="3" visible="True" name="Title" contentPlaceholder="Title">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="4" visible="True" name="Content" contentPlaceholder="Content">
					<Components>
						<Record id="5" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="articles" searchIds="5" fictitiousConnection="internet" fictitiousDataSource="articles" wizardCaption="Search  " changedCaptionSearch="False" wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardSpecifyResultsForm="False" PathID="NewIncludablePage1TemplatePanelContentarticles" returnPage="Articles.ccp">
							<Components>
								<Button id="6" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="NewIncludablePage1TemplatePanelContentarticlesButton_DoSearch">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_article_title" fieldSource="article_title" wizardIsPassword="False" wizardCaption="Title" caption="Title" required="False" unique="False" wizardSize="50" wizardMaxLength="125" PathID="NewIncludablePage1TemplatePanelContentarticless_article_title">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
								<ListBox id="8" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="s_category_id" fieldSource="category_id" wizardIsPassword="False" wizardEmptyCaption="Select Value" wizardCaption="Category Id" caption="Category Id" required="False" unique="False" PathID="NewIncludablePage1TemplatePanelContentarticless_category_id" connection="internet" dataSource="event_categories" boundColumn="category_id" textColumn="category_name">
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
		<CodeFile id="Code" language="PHPTemplates" name="SearchArticles.php" forShow="True" url="SearchArticles.php" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
