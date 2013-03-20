<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" webService="False" SSLAccess="False" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" wizardTheme="School" wizardThemeVersion="3.0" isService="False">
	<Components>
		<Link id="3" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" urlType="Relative" html="True" preserveParameters="None" editable="False" name="Link2" hrefSource="Default.ccp" visible="Yes" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
<Link id="4" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" urlType="Relative" html="True" preserveParameters="None" editable="False" name="Link3" hrefSource="Registration.ccp" visible="Yes" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
<Panel id="20" visible="True" name="RestrictedPanel" wizardInnerHTML="
&lt;li&gt;&lt;a href=&quot;{Link4_Src}&quot;&gt;My Details&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;!-- BEGIN Link Logout1 --&gt;&lt;a href=&quot;{Logout1_Src}&quot; id=&quot;LogoutPageLogoutTemplatePanelContentLogout1&quot;&gt;Logout&lt;/a&gt;&lt;!-- END Link Logout1 --&gt;&lt;/li&gt;
" PathID="HeaderRestrictedPanel">
			<Components>
				<Link id="5" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" urlType="Relative" html="True" preserveParameters="None" editable="False" name="Link4" hrefSource="MyDetails.ccp" visible="Yes" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="2" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Logout1" hrefSource="Default.ccp" wizardDefaultValue="Logout" PathID="HeaderRestrictedPanelLogout1" wizardUseTemplateBlock="False" linkProperties="{&quot;textSource&quot;:&quot;Logout&quot;,&quot;textSourceDB&quot;:&quot;&quot;,&quot;hrefSource&quot;:&quot;Default.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:6,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;Expression&quot;,&quot;parameterSource&quot;:&quot;\&quot;True\&quot;&quot;,&quot;parameterName&quot;:&quot;Logout&quot;},&quot;1&quot;:{&quot;sourceType&quot;:&quot;Expression&quot;,&quot;parameterSource&quot;:&quot;\&quot;True\&quot;&quot;,&quot;parameterName&quot;:&quot;Logout&quot;},&quot;2&quot;:{&quot;sourceType&quot;:&quot;Expression&quot;,&quot;parameterSource&quot;:&quot;\&quot;True\&quot;&quot;,&quot;parameterName&quot;:&quot;Logout&quot;},&quot;3&quot;:{&quot;sourceType&quot;:&quot;Expression&quot;,&quot;parameterSource&quot;:&quot;\&quot;True\&quot;&quot;,&quot;parameterName&quot;:&quot;Logout&quot;},&quot;4&quot;:{&quot;sourceType&quot;:&quot;Expression&quot;,&quot;parameterSource&quot;:&quot;\&quot;True\&quot;&quot;,&quot;parameterName&quot;:&quot;Logout&quot;},&quot;5&quot;:{&quot;sourceType&quot;:&quot;Expression&quot;,&quot;parameterSource&quot;:&quot;\&quot;True\&quot;&quot;,&quot;parameterName&quot;:&quot;Logout&quot;}}}">
					<Components/>
					<Events>
					</Events>
					<LinkParameters>
						<LinkParameter id="21" sourceType="Expression" format="yyyy-mm-dd" name="Logout" old_temp_id="9" source="&quot;True&quot;"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="22" action="Hide" conditionType="Parameter" dataType="Text" componentName="RestrictedPanel" condition="Equal" sourceType1="Session" sourceType2="Expression" name2="&quot;&quot;" name1="UserID"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Panel>
<Link id="28" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Login" hrefSource="MyDetails.ccp" wizardDefaultValue="Logout" PathID="HeaderLogin" wizardUseTemplateBlock="True" linkProperties="{'textSource':'Login','textSourceDB':'','hrefSource':'MyDetails.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'0':{'sourceType':'Expression','parameterSource':'\'True\'','parameterName':'Logout'},'1':{'sourceType':'Expression','parameterSource':'\'True\'','parameterName':'Logout'},'2':{'sourceType':'Expression','parameterSource':'\'True\'','parameterName':'Logout'},'3':{'sourceType':'Expression','parameterSource':'\'True\'','parameterName':'Logout'},'4':{'sourceType':'Expression','parameterSource':'\'True\'','parameterName':'Logout'},'5':{'sourceType':'Expression','parameterSource':'\'True\'','parameterName':'Logout'},'6':{'sourceType':'Expression','parameterSource':'\'True\'','parameterName':'Logout'},'length':7,'objectType':'linkParameters'}}">
			<Components/>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="29" action="Hide" conditionType="Parameter" dataType="Text" componentName="Login" sourceType1="Session" name1="UserID" condition="NotEqual" sourceType2="Expression" name2="&quot;&quot;" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<LinkParameters>
				<LinkParameter id="30" sourceType="Expression" format="yyyy-mm-dd" name="Logout" old_temp_id="9" source="&quot;True&quot;"/>
			</LinkParameters>
			<Attributes/>
			<Features/>
		</Link>
</Components>
	<CodeFiles>
		<CodeFile id="Code" language="ASPTemplates" name="Header.asp" comment="'" forShow="True" url="Header.asp"/>
		<CodeFile id="Code" language="PHPTemplates" name="Header.php" forShow="True" url="Header.php" comment="//"/>
		<CodeFile id="Events" language="PHPTemplates" name="Header_events.php" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
