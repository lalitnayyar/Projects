<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="EditOfficer" SSLAccess="False" urlType="Relative" accessDeniedPage="Login.ccp" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="44" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="45" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="33" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="officers" connection="internet" dataSource="officers" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="officer_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Officers " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject6/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentofficers" returnPage="AdminOfficers.ccp">
					<Components>
						<Button id="34" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="ContentofficersButton_Insert">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="35" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ContentofficersButton_Update">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="36" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="ContentofficersButton_Delete">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="37" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ContentofficersButton_Cancel">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="officer_name" fieldSource="officer_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Name" caption="Name" wizardSize="50" wizardMaxLength="50" PathID="Contentofficersofficer_name" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="39" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="officer_position" fieldSource="officer_position" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Position" caption="Position" wizardSize="50" wizardMaxLength="50" PathID="Contentofficersofficer_position" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="officer_email" fieldSource="officer_email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Email" caption="Email" wizardSize="30" wizardMaxLength="30" PathID="Contentofficersofficer_email" required="True">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="41" conditionType="Parameter" useIsNull="False" field="officer_id" parameterSource="officer_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" old_temp_id="7"/>
						<TableParameter id="42" conditionType="Parameter" useIsNull="False" field="officer_id" parameterSource="officer_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="43" tableName="officers" posWidth="100" posHeight="100" posLeft="0" posTop="0" old_temp_id="14"/>
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
		<Panel id="46" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="28" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="47" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="29" name="AdminMenu" PathID="Sidebar1AdminMenu" page="AdminMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="EditOfficer.php" comment="//" forShow="True" url="EditOfficer.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="EditOfficer.asp" comment="'" forShow="True" url="EditOfficer.asp"/>
		<CodeFile id="3" language="C#" name="EditOfficer.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="EditOfficer.aspx"/>
		<CodeFile id="1" language="C#" name="EditOfficer.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="EditOfficerDataProvider.cs" path="\components" comment="//" forShow="False"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="13" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
