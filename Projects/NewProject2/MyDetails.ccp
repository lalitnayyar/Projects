<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" webService="False" SSLAccess="False" accessDeniedPage="Login.ccp" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="89" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="90" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="53" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="users" connection="internet" dataSource="users" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="user_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Users " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject8/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentusers" returnPage="Default.ccp">
					<Components>
						<Button id="54" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ContentusersButton_Update">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="55" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="ContentusersButton_Delete">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="56" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ContentusersButton_Cancel">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Label id="57" fieldSourceType="DBColumn" dataType="Text" html="False" name="user_login" fieldSource="user_login" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Login" wizardAddNbsp="True" PathID="Contentusersuser_login">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<TextBox id="58" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="user_password" fieldSource="user_password" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Password" caption="Password" wizardSize="20" wizardMaxLength="20" PathID="Contentusersuser_password" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="first_name" fieldSource="first_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="First Name" caption="First Name" wizardSize="50" wizardMaxLength="50" PathID="Contentusersfirst_name" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="60" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="last_name" fieldSource="last_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Last Name" caption="Last Name" wizardSize="50" wizardMaxLength="50" PathID="Contentuserslast_name" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="61" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="email" fieldSource="email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Email" caption="Email" wizardSize="50" wizardMaxLength="50" PathID="Contentusersemail" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="62" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="address1" fieldSource="address1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Address1" caption="Address1" required="False" wizardSize="50" wizardMaxLength="250" PathID="Contentusersaddress1">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="address2" fieldSource="address2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Address2" caption="Address2" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentusersaddress2">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="address3" fieldSource="address3" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Address3" caption="Address3" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentusersaddress3">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="65" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="city" fieldSource="city" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="City" caption="City" required="False" unique="False" wizardSize="30" wizardMaxLength="30" PathID="Contentuserscity">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="66" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="state_id" fieldSource="state_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="State Id" caption="State Id" required="False" unique="False" connection="internet" wizardEmptyCaption="Select Value" dataSource="states" boundColumn="state_id" textColumn="state_name" PathID="Contentusersstate_id">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="67" tableName="states"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<TextBox id="68" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="zip" fieldSource="zip" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Zip" caption="Zip" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="Contentuserszip">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="69" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="country_id" fieldSource="country_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Country Id" caption="Country Id" connection="internet" wizardEmptyCaption="Select Value" dataSource="countries" boundColumn="country_id" textColumn="country_name" PathID="Contentuserscountry_id" required="True">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="70" tableName="countries"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<TextBox id="71" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="phone_home" fieldSource="phone_home" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Phone Home" caption="Phone Home" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentusersphone_home">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="72" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="phone_work" fieldSource="phone_work" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Phone Work" caption="Phone Work" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentusersphone_work">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="73" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="language_id" fieldSource="language_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Language Id" caption="Language Id" required="False" unique="False" connection="internet" wizardEmptyCaption="Select Value" dataSource="languages" boundColumn="language_id" textColumn="language_name" PathID="Contentuserslanguage_id">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="74" tableName="languages"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<ListBox id="75" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="age_id" fieldSource="age_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Age Id" caption="Age Id" required="False" unique="False" connection="internet" wizardEmptyCaption="Select Value" dataSource="ages" boundColumn="age_id" textColumn="age_name" PathID="Contentusersage_id">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="76" tableName="ages"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<ListBox id="77" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="gender_id" fieldSource="gender_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Gender Id" caption="Gender Id" connection="internet" wizardEmptyCaption="Select Value" dataSource="genders" boundColumn="gender_id" textColumn="gender_name" PathID="Contentusersgender_id" required="True">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="78" tableName="genders"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<ListBox id="79" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="education_id" fieldSource="education_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Education Id" caption="Education Id" required="False" unique="False" connection="internet" wizardEmptyCaption="Select Value" dataSource="educations" boundColumn="education_id" textColumn="education_name" PathID="Contentuserseducation_id">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="80" tableName="educations"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<ListBox id="81" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="income_id" fieldSource="income_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Income Id" caption="Income Id" required="False" unique="False" connection="internet" wizardEmptyCaption="Select Value" dataSource="incomes" boundColumn="income_id" textColumn="income_name" PathID="Contentusersincome_id">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="82" tableName="incomes"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<TextArea id="83" visible="Yes" fieldSourceType="DBColumn" dataType="Memo" name="notes" fieldSource="notes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Notes" caption="Notes" required="False" unique="False" wizardSize="50" wizardRows="3" PathID="Contentusersnotes">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
					</Components>
					<Events>
						<Event name="AfterDelete" type="Server">
							<Actions>
								<Action actionName="Logout" actionCategory="Security" id="84" pageRedirects="True" returnPage="Default.ccp" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="85" conditionType="Parameter" useIsNull="False" dataType="Integer" field="user_id" logicOperator="And" orderNumber="1" parameterSource="UserID" parameterType="Session" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="86" posHeight="180" posLeft="10" posTop="10" posWidth="133" tableName="users"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="87" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="88" dataType="Integer" fieldName="user_id" tableName="users"/>
					</PKFields>
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
		<Panel id="91" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="49" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="92" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="93" name="Search" PathID="Sidebar1Search" page="Search.ccp">
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
		<CodeFile id="3" language="C#" name="MyDetails.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="MyDetails.aspx"/>
		<CodeFile id="1" language="C#" name="MyDetails.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="MyDetailsDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="MyDetails.asp" forShow="True" url="MyDetails.asp" comment="'"/>
		<CodeFile id="Events" language="ASPTemplates" name="MyDetails_events.asp" forShow="False" comment="'"/>
		<CodeFile id="Events" language="PHPTemplates" name="MyDetails_events.php" forShow="False" comment="//"/>
		<CodeFile id="Code" language="PHPTemplates" name="MyDetails.php" forShow="True" url="MyDetails.php" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="35" groupID="1"/>
		<Group id="36" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
