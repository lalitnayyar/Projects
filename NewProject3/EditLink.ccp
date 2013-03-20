<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="EditLink" SSLAccess="False" urlType="Relative" accessDeniedPage="Login.ccp" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="Innovation" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="60" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="61" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Record id="43" sourceType="Table" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="None" debugMode="False" returnValueType="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" returnValueTypeForDelete="Number" connection="internet" name="links" dataSource="links" errorSummator="Error" returnPage="AdminLinks.ccp" activeCollection="TableParameters" activeTableType="dataSource" urlType="Relative" old_temp_id="2">
					<Components>
						<ListBox id="44" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="category_id" fieldSource="category_id" primaryKey="False" sourceType="Table" connection="internet" dataSource="event_categories" boundColumn="category_id" textColumn="category_name" orderBy="category_name" caption="Category" required="True" visible="Yes" old_temp_id="15">
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
						<TextBox id="45" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="link_name" fieldSource="link_name" primaryKey="False" caption="Link Title" required="True" visible="Yes" old_temp_id="8">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="46" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="link_url" fieldSource="link_url" primaryKey="False" caption="URL" required="True" visible="Yes" old_temp_id="9">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextArea id="47" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="True" hasErrorCollection="True" name="address" fieldSource="address" primaryKey="False" required="True" caption="Address" visible="Yes" old_temp_id="11">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
						<CheckBox id="48" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="approved" fieldSource="is_approve" primaryKey="False" checkedValue="1" uncheckedValue="0" visible="Yes" defaultValue="Unchecked" old_temp_id="12">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</CheckBox>
						<TextBox id="49" fieldSourceType="DBColumn" dataType="Date" html="False" editable="True" hasErrorCollection="True" name="date_approved" fieldSource="date_approve" primaryKey="False" caption="Date Approved" defaultValue="CurrentDate" format="mm/dd/yyyy" visible="Dynamic" old_temp_id="16" PathID="Contentlinksdate_approved" features="(assigned)">
							<Components/>
							<Events/>
							<Attributes/>
							<Features>
								<InlineDatePicker id="50" enabled="True" name="InlineDatePicker2" category="YahooUI" featureNameChanged="No">
									<Components/>
									<Events/>
									<ControlPoints/>
									<Features/>
								</InlineDatePicker>
							</Features>
						</TextBox>
						<TextArea id="51" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="True" hasErrorCollection="True" name="link_desc" fieldSource="link_desc" primaryKey="False" visible="Yes" old_temp_id="17">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
						<Hidden id="52" fieldSourceType="DBColumn" dataType="Date" html="False" editable="True" hasErrorCollection="True" name="date_added" fieldSource="date_add" primaryKey="False" defaultValue="CurrentDate" format="mm/dd/yyyy" old_temp_id="25">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Hidden>
						<Button id="53" name="portal_Insert" operation="Insert" urlType="Relative" enableValidation="True" old_temp_id="5">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="54" name="portal_Update" operation="Update" urlType="Relative" enableValidation="True" old_temp_id="6">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="55" name="portal_Delete" operation="Delete" urlType="Relative" enableValidation="False" old_temp_id="35">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="56" name="portal_Cancel" operation="Cancel" enableValidation="False" urlType="Relative" old_temp_id="37">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events>
						<Event name="BeforeShow">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="57" old_temp_id="20"/>
							</Actions>
						</Event>
						<Event name="AfterExecuteDelete">
							<Actions/>
						</Event>
						<Event name="BeforeUpdate">
							<Actions/>
						</Event>
						<Event name="AfterUpdate">
							<Actions/>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="58" field="link_id" parameterSource="link_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" conditionType="Parameter" useIsNull="False" old_temp_id="7"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="59" tableName="links" posWidth="100" posHeight="100" posLeft="0" posTop="0" old_temp_id="24">
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
<Panel id="62" visible="True" name="Menu" contentPlaceholder="Menu">
<Components>
<IncludePage id="38" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="63" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components>
<IncludePage id="39" name="AdminMenu" PathID="Sidebar1AdminMenu" page="AdminMenu.ccp">
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
		<CodeFile id="Events" language="PHPTemplates" name="EditLink_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="EditLink.php" comment="//" forShow="True" url="EditLink.php"/>
		<CodeFile id="3" language="C#" name="EditLink.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="EditLink.aspx"/>
		<CodeFile id="1" language="C#" name="EditLink.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="EditLinkDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Events" language="ASPTemplates" name="EditLink_events.asp" comment="'" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="EditLink.asp" comment="'" forShow="True" url="EditLink.asp"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="23" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
