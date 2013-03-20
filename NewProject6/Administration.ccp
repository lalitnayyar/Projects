<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" isIncluded="True" webService="False" name="Administration" SSLAccess="False" urlType="Relative" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" wizardTheme="Simple" wizardThemeVersion="3.0" isService="False" validateRequest="True" scriptingSupport="Automatic">
	<Components>
		<Panel id="12" visible="True" name="AdminPanel" PathID="AdministrationAdminPanel" parentType="Page" masterPage="{CCS_PathToMasterPage}/VerticalMenu.ccp">
			<Components>
				<Panel id="13" visible="True" name="AdminTitle" contentPlaceholder="Title">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="14" visible="True" name="AdminContent" contentPlaceholder="MenuItems">
					<Components>
						<Link id="15" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link1" hrefSource="EmployeeList.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="3">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Features/>
							<Attributes/>
						</Link>
						<Link id="16" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link2" hrefSource="PriorityList.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="4">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Features/>
							<Attributes/>
						</Link>
						<Link id="17" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link3" hrefSource="ProjectList.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="5">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Features/>
							<Attributes/>
						</Link>
						<Link id="18" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link4" hrefSource="StatusesList.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="6">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Features/>
							<Attributes/>
						</Link>
						<Link id="19" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link5" hrefSource="TypesList.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="11">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Features/>
							<Attributes/>
						</Link>
						<Link id="20" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" urlType="Relative" html="False" preserveParameters="None" editable="False" name="Logout" hrefSource="Login.ccp" wizardDefaultValue="Logout" visible="Dynamic" old_temp_id="8">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Hide-Show Component" actionCategory="General" id="22" action="Hide" conditionType="Parameter" dataType="Text" componentName="Logout" condition="Equal" name1="UserLogin" sourceType1="Session" sourceType2="Expression" name2="&quot;&quot;"/>
									</Actions>
								</Event>
							</Events>
							<LinkParameters>
								<LinkParameter id="21" sourceType="Expression" name="Logout" source="&quot;True&quot;" old_temp_id="9"/>
							</LinkParameters>
							<Features/>
							<Attributes/>
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
		<CodeFile id="codePage" language="CFML" name="Administration.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="Administration.cfm"/>
		<CodeFile id="Code" language="PHPTemplates" name="Administration.php" comment="//" forShow="True" url="Administration.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="Administration.asp" comment="'" forShow="True" url="Administration.asp"/>
		<CodeFile id="1" language="C#InMotion" name="Administration.ascx" forShow="True" url="Administration.ascx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="AdministrationEvents.ascx.cs" forShow="False" comment="//"/>
		<CodeFile id="Events" language="PHPTemplates" name="Administration_events.php" forShow="False" comment="//"/>
		<CodeFile id="Events" language="ASPTemplates" name="Administration_events.asp" forShow="False" comment="'"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="10" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Features/>
	<Attributes/>
</Page>
