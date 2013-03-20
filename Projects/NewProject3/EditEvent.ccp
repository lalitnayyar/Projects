<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="EditEvent" SSLAccess="False" urlType="Relative" accessDeniedPage="Login.ccp" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="Innovation" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="55" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="56" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Record id="39" sourceType="Table" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="None" debugMode="False" returnValueType="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" returnValueTypeForDelete="Number" connection="internet" name="events" dataSource="events" errorSummator="Error" returnPage="AdminEvents.ccp" urlType="Relative" whereOperation="And" old_temp_id="2">
					<Components>
						<TextBox id="40" fieldSourceType="DBColumn" dataType="Date" html="False" editable="True" hasErrorCollection="True" name="date_start" fieldSource="date_start" primaryKey="False" format="mm/dd/yyyy" visible="Dynamic" caption="Date" old_temp_id="8" PathID="Contenteventsdate_start" features="(assigned)">
							<Components/>
							<Events/>
							<Attributes/>
							<Features>
								<InlineDatePicker id="41" enabled="True" name="InlineDatePicker2" category="YahooUI" featureNameChanged="No">
									<Components/>
									<Events/>
									<ControlPoints/>
									<Features/>
								</InlineDatePicker>
							</Features>
						</TextBox>
						<TextArea id="42" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="True" hasErrorCollection="True" name="event_name" fieldSource="event_name" primaryKey="False" required="True" caption="Title" visible="Yes" old_temp_id="9">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
						<TextArea id="43" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="True" hasErrorCollection="True" name="event_desc" fieldSource="event_desc" primaryKey="False" caption="Description" required="False" visible="Yes" old_temp_id="10">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
						<TextArea id="44" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="True" hasErrorCollection="True" name="location" fieldSource="location" primaryKey="False" caption="Location" required="True" visible="Yes" old_temp_id="11">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
						<TextBox id="45" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="presenter" fieldSource="presenter" primaryKey="False" caption="Presenter" required="True" visible="Yes" old_temp_id="12">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<Hidden id="46" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="user_added" fieldSource="user_id_add" primaryKey="False" sourceType="Table" connection="internet" dataSource="user_users" boundColumn="user_id" textColumn="login" orderBy="login" visible="Yes" old_temp_id="20">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Retrieve Value for Control" actionCategory="General" id="47" name="user_added" sourceType="Session" sourceName="PortalUserID" old_temp_id="21" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<Attributes/>
							<Features/>
						</Hidden>
						<Button id="48" name="portal_Insert" operation="Insert" urlType="Relative" enableValidation="True" old_temp_id="5">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="49" name="portal_Update" operation="Update" urlType="Relative" enableValidation="True" old_temp_id="6">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="50" name="portal_Delete" operation="Delete" urlType="Relative" enableValidation="False" old_temp_id="31">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="51" name="portal_Cancel" operation="Cancel" enableValidation="False" urlType="Relative" old_temp_id="33">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events>
						<Event name="BeforeShow">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="52" old_temp_id="16"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="53" field="event_id" parameterSource="event_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" conditionType="Parameter" useIsNull="False" old_temp_id="7"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="54" tableName="events" posWidth="100" posHeight="100" posLeft="0" posTop="0" old_temp_id="19">
							<JoinConditions/>
						</JoinTable>
					</JoinTables>
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
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</Record>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="57" visible="True" name="Menu" contentPlaceholder="Menu">
<Components>
<IncludePage id="34" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="58" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components>
<IncludePage id="35" name="AdminMenu" PathID="Sidebar1AdminMenu" page="AdminMenu.ccp">
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
		<CodeFile id="Events" language="PHPTemplates" name="EditEvent_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="EditEvent.php" comment="//" forShow="True" url="EditEvent.php"/>
		<CodeFile id="Events" language="ASPTemplates" name="EditEvent_events.asp" comment="'" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="EditEvent.asp" comment="'" forShow="True" url="EditEvent.asp"/>
		<CodeFile id="3" language="C#" name="EditEvent.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="EditEvent.aspx"/>
		<CodeFile id="1" language="C#" name="EditEvent.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="EditEventDataProvider.cs" path="\components" comment="//" forShow="False"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="17" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
