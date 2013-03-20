<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="EditMembers" SSLAccess="False" urlType="Relative" accessDeniedPage="Login.ccp" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="119" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="120" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="88" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="members" connection="internet" dataSource="users" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="user_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Users " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject6/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentmembers" returnPage="AdminMembers.ccp">
					<Components>
						<Button id="89" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="ContentmembersButton_Insert">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="90" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ContentmembersButton_Update">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="91" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="ContentmembersButton_Delete">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="92" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ContentmembersButton_Cancel">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="93" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="user_login" fieldSource="user_login" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Login" caption="Login" wizardSize="20" wizardMaxLength="20" PathID="Contentmembersuser_login" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="94" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="user_password" fieldSource="user_password" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Password" caption="Password" wizardSize="20" wizardMaxLength="20" PathID="Contentmembersuser_password" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="95" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="group_id" fieldSource="group_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Group Id" caption="Group Id" connection="internet" wizardEmptyCaption="Select Value" dataSource="user_groups" boundColumn="group_id" textColumn="group_name" PathID="Contentmembersgroup_id" required="True">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="96" tableName="user_groups" posWidth="100" posHeight="100" posLeft="34" posTop="30" old_temp_id="59"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<TextBox id="97" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="first_name" fieldSource="first_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="First Name" caption="First Name" wizardSize="50" wizardMaxLength="50" PathID="Contentmembersfirst_name" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="98" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="last_name" fieldSource="last_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Last Name" caption="Last Name" wizardSize="50" wizardMaxLength="50" PathID="Contentmemberslast_name" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="99" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="address1" fieldSource="address1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Address1" caption="Address1" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="Contentmembersaddress1">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="100" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="address2" fieldSource="address2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Address2" caption="Address2" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentmembersaddress2">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="101" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="address3" fieldSource="address3" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Address3" caption="Address3" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentmembersaddress3">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="102" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="city" fieldSource="city" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="City" caption="City" required="False" unique="False" wizardSize="30" wizardMaxLength="30" PathID="Contentmemberscity">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="103" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="state_id" fieldSource="state_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="State Id" caption="State Id" required="False" unique="False" connection="internet" wizardEmptyCaption="Select Value" dataSource="states" boundColumn="state_id" textColumn="state_name" orderBy="state_name" PathID="Contentmembersstate_id">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="104" tableName="states"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<TextBox id="105" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="zip" fieldSource="zip" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Zip" caption="Zip" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="Contentmemberszip">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<ListBox id="106" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="country_id" fieldSource="country_id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Country Id" caption="Country Id" required="False" unique="False" connection="internet" wizardEmptyCaption="Select Value" dataSource="countries" boundColumn="country_id" textColumn="country_name" PathID="Contentmemberscountry_id">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="107" tableName="countries"/>
							</JoinTables>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<TextBox id="108" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="phone_day" fieldSource="phone_day" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Phone Day" caption="Phone Day" required="False" unique="False" wizardSize="20" wizardMaxLength="20" PathID="Contentmembersphone_day">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="109" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="phone_evening" fieldSource="phone_evening" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Phone Evening" caption="Phone Evening" required="False" unique="False" wizardSize="20" wizardMaxLength="20" PathID="Contentmembersphone_evening">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="110" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="fax" fieldSource="fax" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Fax" caption="Fax" required="False" unique="False" wizardSize="20" wizardMaxLength="20" PathID="Contentmembersfax">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="111" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="email" fieldSource="email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Email" caption="Email" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Contentmembersemail">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<Hidden id="112" fieldSourceType="DBColumn" dataType="Text" name="ip_add" fieldSource="ip_add" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="Ip Add" caption="Ip Add" required="False" unique="False" PathID="Contentmembersip_add">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Hidden>
						<Hidden id="113" fieldSourceType="DBColumn" dataType="Text" name="ip_update" fieldSource="ip_update" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="Ip Update" caption="Ip Update" required="False" unique="False" PathID="Contentmembersip_update">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Hidden>
						<Hidden id="114" fieldSourceType="DBColumn" dataType="Date" name="date_add" fieldSource="date_add" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="Date Add" caption="Date Add" required="False" format="mm/dd/yyyy" unique="False" PathID="Contentmembersdate_add">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Hidden>
						<Hidden id="115" fieldSourceType="DBColumn" dataType="Date" name="date_last_login" fieldSource="date_last_login" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="Date Last Login" caption="Date Last Login" required="False" format="mm/dd/yyyy" unique="False" PathID="Contentmembersdate_last_login">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Hidden>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="116" conditionType="Parameter" useIsNull="False" field="user_id" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="user_id" orderNumber="1" old_temp_id="83"/>
						<TableParameter id="117" conditionType="Parameter" useIsNull="False" field="user_id" parameterSource="user_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="118" tableName="users" posWidth="100" posHeight="100" posLeft="0" posTop="0" old_temp_id="84"/>
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
		<Panel id="121" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="52" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="122" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="53" name="AdminMenu" PathID="Sidebar1AdminMenu" page="AdminMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="EditMembers.php" comment="//" forShow="True" url="EditMembers.php"/>
		<CodeFile id="Events" language="ASPTemplates" name="EditMembers_events.asp" comment="'" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="EditMembers.asp" comment="'" forShow="True" url="EditMembers.asp"/>
		<CodeFile id="3" language="C#" name="EditMembers.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="EditMembers.aspx"/>
		<CodeFile id="1" language="C#" name="EditMembers.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="EditMembersDataProvider.cs" path="\components" comment="//" forShow="False"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="41" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
