<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="63" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="64" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="39" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="users" connection="InternetDB" dataSource="users" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="user_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Users " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentusers" returnPage="AdmUsers.ccp" removeParameters="user_id" editableComponentTypeString="Record">
					<Components>
						<Button id="40" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="ContentusersButton_Insert">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="41" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ContentusersButton_Update">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="42" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="ContentusersButton_Delete">
							<Components/>
							<Events>
								<Event name="OnClick" type="Client">
									<Actions>
										<Action actionName="Confirmation Message" actionCategory="General" id="43" message="Delete record?" eventType="Client"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="44" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ContentusersButton_Cancel">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="45" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="user_login" fieldSource="user_login" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Login" caption="Login" wizardSize="20" wizardMaxLength="20" PathID="Contentusersuser_login" required="True">
							<Components/>
							<Events>
								<Event name="OnValidate" type="Server">
									<Actions>
										<Action actionName="Regular Expression Validation" actionCategory="Validation" id="46" name="user_login" regExp="^\w+$" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="47" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="user_password" fieldSource="user_password" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Password" caption="Password" wizardSize="20" wizardMaxLength="20" PathID="Contentusersuser_password" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="48" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="first_name" fieldSource="first_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="First Name" caption="First Name" wizardSize="50" wizardMaxLength="50" PathID="Contentusersfirst_name" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="49" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="last_name" fieldSource="last_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Last Name" caption="Last Name" wizardSize="50" wizardMaxLength="50" PathID="Contentuserslast_name" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="50" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="group_id" fieldSource="group_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Group Id" caption="Group Id" connection="InternetDB" wizardEmptyCaption="Select Value" dataSource="user_groups" boundColumn="group_id" textColumn="group_name" PathID="Contentusersgroup_id" required="True">
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
						<TextBox id="51" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="phone_home" fieldSource="phone_home" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Phone Home" caption="Phone Home" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentusersphone_home">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="52" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="phone_work" fieldSource="phone_work" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Phone Work" caption="Phone Work" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentusersphone_work">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="email" fieldSource="email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Email" caption="Email" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentusersemail">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="54" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="card_number" fieldSource="card_number" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Card Number" caption="Card Number" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentuserscard_number">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="card_expire_date" fieldSource="card_expire_date" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Card Expire Date" caption="Card Expire Date" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="Contentuserscard_expire_date">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="56" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="country_id" fieldSource="country_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Country Id" caption="Country Id" required="False" unique="False" connection="InternetDB" wizardEmptyCaption="Select Value" dataSource="countries" boundColumn="country_id" textColumn="country_name" PathID="Contentuserscountry_id">
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
						<ListBox id="57" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="state_id" fieldSource="state_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="State Id" caption="State Id" required="False" unique="False" connection="InternetDB" wizardEmptyCaption="Select Value" dataSource="states" boundColumn="state_id" textColumn="state_name" PathID="Contentusersstate_id">
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
						<TextBox id="58" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="city" fieldSource="city" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="City" caption="City" required="False" unique="False" wizardSize="30" wizardMaxLength="30" PathID="Contentuserscity">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="zip" fieldSource="zip" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Zip" caption="Zip" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="Contentuserszip">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="60" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="address1" fieldSource="address1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Address1" caption="Address1" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="Contentusersaddress1">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="61" conditionType="Parameter" useIsNull="False" field="user_id" parameterSource="user_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="62" tableName="users"/>
					</JoinTables>
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
		<Panel id="65" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="37" name="AdmHeader" PathID="MenuAdmHeader" page="AdmHeader.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="66" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="38" name="AdmMenu" PathID="SidebarAdmMenu" page="AdmMenu.ccp">
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
		<CodeFile id="Code" language="PerlTemplates" name="AdmUserRecord.cgi" comment="#" forShow="True" url="AdmUserRecord.cgi"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdmUserRecord.asp" comment="'" forShow="True" url="AdmUserRecord.asp"/>
		<CodeFile id="3" language="C#" name="AdmUserRecord.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="AdmUserRecord.aspx"/>
		<CodeFile id="1" language="C#" name="AdmUserRecord.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AdmUserRecordDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Events" language="PHPTemplates" name="AdmUserRecord_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="AdmUserRecord.php" comment="//" forShow="True" url="AdmUserRecord.php"/>
		<CodeFile id="Events" language="ASPTemplates" name="AdmUserRecord_events.asp" forShow="False" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
