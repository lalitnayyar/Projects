<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" wizardTheme="Basic" wizardThemeVersion="3.0">
	<Components>
		<Link id="2" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Home" hrefSource="../Default.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
<Link id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Logout" hrefSource="../Login.ccp" wizardDefaultValue="Logout" PathID="AdmHeaderLogout" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Logout','textSourceDB':'','hrefSource':'../Login.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'0':{'sourceType':'Expression','parameterSource':'\'True\'','parameterName':'Logout'},'length':1,'objectType':'linkParameters'}}">
			<Components/>
			<Events/>
			<LinkParameters>
				<LinkParameter id="10" sourceType="Expression" format="yyyy-mm-dd" name="Logout" source="&quot;True&quot;"/>
			</LinkParameters>
			<Attributes/>
			<Features/>
		</Link>
</Components>
	<CodeFiles>
		<CodeFile id="Code" language="ASPTemplates" name="AdmHeader.asp" comment="'" forShow="True" url="AdmHeader.asp"/>
		<CodeFile id="Events" language="ASPTemplates" name="AdmHeader_events.asp" forShow="False" comment="'"/>
		<CodeFile id="Events" language="PHPTemplates" name="AdmHeader_events.php" forShow="False" comment="//"/>
		<CodeFile id="Code" language="PHPTemplates" name="AdmHeader.php" forShow="True" url="AdmHeader.php" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events>
		<Event name="AfterInitialize" type="Server">
			<Actions>
				<Action actionName="Logout" actionCategory="Security" id="7" pageRedirects="True" parameterName="Logout" returnPage="../Login.ccp"/>
			</Actions>
		</Event>
	</Events>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
