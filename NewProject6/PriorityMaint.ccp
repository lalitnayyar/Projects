<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="PriorityMaint" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="35" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="36" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="28" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="priorities" connection="intranet" dataSource="priorities" errorSummator="Error" allowCancel="0" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="priority_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Priorities " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentpriorities">
					<Components>
						<Button id="29" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="ContentprioritiesButton_Insert" returnPage="PriorityList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="30" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ContentprioritiesButton_Update" returnPage="PriorityList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="priority_name" fieldSource="priority_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Name" caption="Name" required="False" unique="False" wizardSize="30" wizardMaxLength="30" PathID="Contentprioritiespriority_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<Button id="7" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ContentprioritiesButton_Cancel" returnPage="PriorityList.ccp">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="32" conditionType="Parameter" useIsNull="False" field="priority_id" parameterSource="priority_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" old_temp_id="8"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="34" tableName="priorities"/>
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
		<Panel id="37" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="23" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="38" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="24" name="Administration" PathID="Sidebar1Administration" page="Administration.ccp">
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
		<CodeFile id="codeRecord1" language="CFML" name="PriorityMaint_priority.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="PriorityMaint.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="PriorityMaint.cfm"/>
		<CodeFile id="Code" language="PHPTemplates" name="PriorityMaint.php" comment="//" forShow="True" url="PriorityMaint.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="PriorityMaint.asp" comment="'" forShow="True" url="PriorityMaint.asp"/>
		<CodeFile id="3" language="C#" name="PriorityMaint.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="PriorityMaint.aspx"/>
		<CodeFile id="1" language="C#" name="PriorityMaint.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="PriorityMaintDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="1" language="C#InMotion" name="PriorityMaint.aspx" forShow="True" url="PriorityMaint.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="PriorityMaintEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="11" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
