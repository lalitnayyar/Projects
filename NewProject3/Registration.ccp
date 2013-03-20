<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" name="Registration" webService="False" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="Innovation" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="86" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="87" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="59" sourceType="Table" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="None" debugMode="False" returnValueType="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" returnValueTypeForDelete="Number" connection="internet" name="members" dataSource="users" errorSummator="Error" returnPage="Default.ccp" activeCollection="TableParameters" activeTableType="dataSource" urlType="Relative" old_temp_id="9">
					<Components>
						<TextBox id="60" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="member_login" fieldSource="user_login" primaryKey="False" required="True" unique="True" caption="Login" visible="Yes" old_temp_id="13">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="61" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="member_password" fieldSource="user_password" primaryKey="False" required="True" caption="Password" visible="Yes" old_temp_id="14">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="62" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="first_name" fieldSource="first_name" primaryKey="False" required="True" caption="First Name" visible="Yes" old_temp_id="15">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="63" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="last_name" fieldSource="last_name" primaryKey="False" required="True" caption="Last Name" visible="Yes" old_temp_id="16">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="64" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="email" fieldSource="email" primaryKey="False" required="True" caption="Email" visible="Yes" old_temp_id="17">
							<Components/>
							<Events>
								<Event name="OnValidate" type="Server">
									<Actions>
										<Action actionName="Validate Email" actionCategory="Validation" id="65" name="email" errorMessage="Invalid Email" old_temp_id="38" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="66" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="address1" fieldSource="address1" primaryKey="False" visible="Yes" old_temp_id="18">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="67" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="address2" fieldSource="address2" primaryKey="False" visible="Yes" old_temp_id="19">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="68" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="address3" fieldSource="address3" primaryKey="False" visible="Yes" old_temp_id="20">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="69" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="city" fieldSource="city" primaryKey="False" visible="Yes" old_temp_id="21">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="70" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="state_id" fieldSource="state_id" primaryKey="False" sourceType="Table" connection="internet" dataSource="states" boundColumn="state_id" textColumn="state_name" visible="Yes" old_temp_id="22">
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
						<TextBox id="71" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="zip" fieldSource="zip" primaryKey="False" visible="Yes" old_temp_id="23">
							<Components/>
							<Events>
								<Event name="OnValidate" type="Server">
									<Actions>
										<Action actionName="Validate Zip" actionCategory="Validation" id="72" name="zip" errorMessage="Invalid Zip Code" old_temp_id="41" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="73" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="country_id" fieldSource="country_id" primaryKey="False" sourceType="Table" connection="internet" dataSource="countries" boundColumn="country_id" textColumn="country_name" visible="Yes" old_temp_id="24">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="74" tableName="countries" posWidth="100" posHeight="100" posLeft="0" posTop="0" old_temp_id="33">
									<JoinConditions/>
								</JoinTable>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<TextBox id="75" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="phone_day" fieldSource="phone_day" primaryKey="False" visible="Yes" old_temp_id="25">
							<Components/>
							<Events>
								<Event name="OnLoad" type="Client">
									<Actions>
										<Action actionName="Validate Entry" actionCategory="Validation" id="96" required="False" minimumLength="14" maximumLength="14" inputMask="(000) 000-0000"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="76" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="phone_evn" fieldSource="phone_evening" primaryKey="False" visible="Yes" old_temp_id="26">
							<Components/>
							<Events>
								<Event name="OnLoad" type="Client">
									<Actions>
										<Action actionName="Validate Entry" actionCategory="Validation" id="97" required="False" minimumLength="14" maximumLength="14" inputMask="(000) 000-0000"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="77" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="fax" fieldSource="fax" primaryKey="False" visible="Yes" old_temp_id="27">
							<Components/>
							<Events>
								<Event name="OnLoad" type="Client">
									<Actions>
										<Action actionName="Validate Entry" actionCategory="Validation" id="98" required="False" minimumLength="14" maximumLength="14" inputMask="(000) 000-0000"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</TextBox>
						<Hidden id="78" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="group_id" fieldSource="group_id" defaultValue="1" old_temp_id="42">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Hidden>
						<Button id="79" name="portal_Insert" operation="Insert" urlType="Relative" enableValidation="True" old_temp_id="5">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="80" name="portal_Update" operation="Update" urlType="Relative" enableValidation="True" old_temp_id="6">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="81" name="portal_Delete" operation="Delete" urlType="Relative" enableValidation="False" old_temp_id="52">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="82" name="portal_Cancel" operation="Cancel" enableValidation="False" urlType="Relative" old_temp_id="54">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events>
						<Event name="BeforeInsert" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="83" name="group_id" sourceType="Expression" sourceName="1" old_temp_id="36" eventType="Server"/>
							</Actions>
						</Event>
						<Event name="OnSubmit" type="Client">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="93" regExp="/^[\d()\- ]+$/g" errorMessage="Incorrect format for 'Phone Day'" name="phone_day"/>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="94" name="phone_evn" regExp="/^[\d()\- ]+$/g" errorMessage="Incorrect format for 'Phone Evening'"/>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="95" name="fax" regExp="/^[\d()\- ]+$/g" errorMessage="Incorrect format for 'Fax'"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="84" field="user_id" dataType="Integer" searchConditionType="Equal" parameterType="Session" logicOperator="And" parameterSource="PortalUserID" orderNumber="1" conditionType="Parameter" useIsNull="False" old_temp_id="31"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="85" tableName="users" posWidth="100" posHeight="100" posLeft="0" posTop="0" old_temp_id="35">
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
		<Panel id="88" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="55" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="89" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="C#" name="Registration.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Registration.aspx"/>
		<CodeFile id="1" language="C#" name="Registration.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="RegistrationDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Events" language="ASPTemplates" name="Registration_events.asp" comment="'" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="Registration.asp" comment="'" forShow="True" url="Registration.asp"/>
		<CodeFile id="Events" language="PHPTemplates" name="Registration_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="Registration.php" comment="//" forShow="True" url="Registration.php"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
