<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="Spring" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<Menu id="2" secured="False" sourceType="Table" returnValueType="Number" name="Menu1" menuType="Horizontal" menuSourceType="Static" PathID="headerMenu1">
			<Components>
				<Link id="3" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" urlType="Relative" preserveParameters="GET" name="ItemLink" PathID="headerMenu1ItemLink">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes>
				<Attribute id="9" name="Target" sourceType="DataField"/>
			</Attributes>
			<MenuItems>
				<MenuItem id="10" name="MenuItem3" caption="Autocomplete &amp; data retrieval" url="Autocomplete.ccp"/>
<MenuItem id="11" name="MenuItem4" caption="Database interaction" url="DatabaseInteraction.ccp"/>
<MenuItem id="12" name="MenuItem1" caption="Two dependent listboxes" url="DependentListBox2.ccp"/>
<MenuItem id="13" name="MenuItem2" caption="Three dependent listboxes" url="DependentListBox3.ccp"/>
<MenuItem id="14" name="MenuItem5" caption="Modal window" url="ModalWindow.ccp"/>
</MenuItems>
			<Features/>
		</Menu>
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="ASPTemplates" name="header.asp" forShow="True" url="header.asp" comment="'"/>
		<CodeFile id="Code" language="PHPTemplates" name="header.php" forShow="True" url="header.php" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
