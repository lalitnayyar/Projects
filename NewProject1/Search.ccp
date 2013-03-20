<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="School" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<Panel id="2" visible="True" name="usersSearchTemplatePanel" PathID="SearchusersSearchTemplatePanel" masterPage="{CCS_PathToMasterPage}/BlockTemplate.ccp">
			<Components>
				<Panel id="3" visible="True" name="usersSearchTitle" PathID="SearchusersSearchTemplatePanelusersSearchTitle" contentPlaceholder="Title">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="4" visible="True" name="usersSearchContent" PathID="SearchusersSearchTemplatePanelusersSearchContent" contentPlaceholder="Content">
					<Components>
						<Record id="8" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="usersSearch" searchIds="8" fictitiousConnection="internet" fictitiousDataSource="users" wizardCaption="Search  " changedCaptionSearch="False" wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="Or" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardSpecifyResultsForm="True" wizardResultsForm="users" returnPage="Default.ccp" PathID="SearchusersSearchTemplatePanelusersSearchContentusersSearch">
							<Components>
								<Button id="9" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="SearchusersSearchTemplatePanelusersSearchContentusersSearchButton_DoSearch">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" fieldSource="user_login,first_name,last_name" wizardIsPassword="False" wizardCaption="Keyword" caption="Keyword" required="False" unique="False" wizardSize="20" wizardMaxLength="20" PathID="SearchusersSearchTemplatePanelusersSearchContentusersSearchs_keyword">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
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
		<CodeFile id="Code" language="ASPTemplates" name="Search.asp" forShow="True" url="Search.asp" comment="'"/>
		<CodeFile id="Code" language="PHPTemplates" name="Search.php" forShow="True" url="Search.php" comment="//"/>
</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
