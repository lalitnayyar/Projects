<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0">
	<Components>
		<Panel id="2" visible="True" name="AdmMenuTemplatePanel" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" PathID="AdmMenusAdmMenuTemplatePanel" masterPage="{CCS_PathToMasterPage}/BlockTemplate.ccp">
			<Components>
				<Panel id="3" visible="True" name="AdmMenuTitle" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" PathID="AdmMenusAdmMenuTemplatePanelAdmMenuTitle" contentPlaceholder="Title">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="4" visible="True" name="AdmMenuContent" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" PathID="AdmMenusAdmMenuTemplatePanelAdmMenuContent" contentPlaceholder="Content">
					<Components>
						<Link id="5" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="AdmUsers" hrefSource="AdmUsers.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="6" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="AdmOrderStatuses" hrefSource="AdmOrderStatuses.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="7" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="AdmProducts" hrefSource="AdmProducts.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="8" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="AdmOrders" hrefSource="AdmOrders.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="9" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="AdmEditProducts" hrefSource="AdmEditProducts.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="10" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="AdmEditCategories" hrefSource="AdmEditCategories.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="11" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="AdmCategories" hrefSource="AdmCategories.ccp" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
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
		<CodeFile id="Code" language="ASPTemplates" name="AdmMenu.asp" forShow="True" url="AdmMenu.asp" comment="'"/>
		<CodeFile id="Code" language="PHPTemplates" name="AdmMenu.php" forShow="True" url="AdmMenu.php" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
