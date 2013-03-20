<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="TaskRecord" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="85" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="86" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="80" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="task" connection="intranet" dataSource="tasks" errorSummator="Error" allowCancel="0" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="task_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Tasks " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contenttask" editableComponentTypeString="Record" returnPage="Default.ccp">
					<Components>
						<TextBox id="61" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="task_name" fieldSource="task_name" primaryKey="False" required="True" caption="Task" visible="Yes" old_temp_id="9">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextArea id="62" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="True" hasErrorCollection="True" name="task_desc" fieldSource="task_desc" primaryKey="False" visible="Yes" old_temp_id="10">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
						<ListBox id="63" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="project_id" fieldSource="project_id" primaryKey="False" sourceType="Table" connection="intranet" dataSource="projects" boundColumn="project_id" textColumn="project_name" required="True" orderBy="project_name" caption="Project" visible="Yes" old_temp_id="11">
							<Components/>
							<Events/>
							<TableParameters>
<TableParameter id="90" conditionType="Parameter" useIsNull="False" dataType="Boolean" field="project_is_active" logicOperator="And" parameterSource="1" parameterType="Expression" searchConditionType="Equal"/>
</TableParameters>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
<JoinTable id="89" posHeight="104" posLeft="10" posTop="10" posWidth="111" tableName="projects"/>
</JoinTables>
							<JoinLinks/>
							<Fields>
<Field id="91" fieldName="*"/>
</Fields>
							<PKFields>
<PKField id="92" dataType="Integer" fieldName="project_id" tableName="projects"/>
</PKFields>
							<Attributes/>
							<Features/>
						</ListBox>
						<Hidden id="64" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="user_assign_by" primaryKey="False" sourceType="Table" connection="intranet" dataSource="user_users" boundColumn="user_id" textColumn="full_name" required="False" fieldSource="user_id_assign_by" old_temp_id="13">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<Attributes/>
							<Features/>
						</Hidden>
						<ListBox id="65" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="priority_id" fieldSource="priority_id" primaryKey="False" sourceType="Table" connection="intranet" dataSource="priorities" boundColumn="priority_id" textColumn="priority_name" required="True" orderBy="priority_name" caption="Priority" visible="Yes" old_temp_id="12">
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
						<ListBox id="66" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="status_id" fieldSource="status_id" primaryKey="False" sourceType="Table" connection="intranet" dataSource="statuses" boundColumn="status_id" textColumn="status_name" required="True" orderBy="status_name" caption="Status" visible="Yes" old_temp_id="16">
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
						<ListBox id="67" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="type_id" fieldSource="type_id" primaryKey="False" sourceType="Table" connection="intranet" dataSource="types" boundColumn="type_id" textColumn="type_name" required="True" orderBy="type_name" caption="Type" visible="Yes" old_temp_id="41">
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
						<ListBox id="68" fieldSourceType="DBColumn" dataType="Integer" html="False" editable="True" hasErrorCollection="True" name="user_id_assign_to" fieldSource="user_id_assign_to" primaryKey="False" sourceType="Table" connection="intranet" dataSource="employees" boundColumn="emp_id" textColumn="emp_name" required="True" caption="Assigned To" orderBy="emp_name" visible="Yes" old_temp_id="14">
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
						<TextBox id="69" fieldSourceType="DBColumn" dataType="Date" html="False" editable="True" hasErrorCollection="True" name="task_start_date" fieldSource="task_start_date" caption="Start Date" format="mm/dd/yy" visible="Dynamic" PathID="Contenttasktask_start_date" features="(assigned)" old_temp_id="42">
							<Components/>
							<Events/>
							<Attributes/>
							<Features>
								<InlineDatePicker id="70" enabled="True" name="InlineDatePicker2" category="YahooUI" featureNameChanged="No" old_temp_id="54">
									<Components/>
									<Events/>
									<ControlPoints/>
									<Features/>
								</InlineDatePicker>
							</Features>
						</TextBox>
						<TextBox id="71" fieldSourceType="DBColumn" dataType="Date" html="False" editable="True" hasErrorCollection="True" name="task_finish_date" fieldSource="task_finish_date" caption="Finish Date" format="mm/dd/yy" visible="Dynamic" PathID="Contenttasktask_finish_date" features="(assigned)" old_temp_id="43">
							<Components/>
							<Events/>
							<Attributes/>
							<Features>
								<InlineDatePicker id="72" enabled="True" name="InlineDatePicker1" category="YahooUI" featureNameChanged="No" old_temp_id="53">
									<Components/>
									<Events/>
									<ControlPoints/>
									<Features/>
								</InlineDatePicker>
							</Features>
						</TextBox>
						<Button id="73" name="taskman_Insert" operation="Insert" urlType="Relative" enableValidation="True" old_temp_id="5">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="74" name="taskman_Update" operation="Update" urlType="Relative" enableValidation="True" old_temp_id="6">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="75" name="taskman_Delete" operation="Delete" urlType="Relative" enableValidation="False" old_temp_id="7">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="76" name="taskman_Cancel" operation="Cancel" enableValidation="False" urlType="Relative" old_temp_id="8">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="81" conditionType="Parameter" useIsNull="False" dataType="Integer" field="task_id" logicOperator="And" old_temp_id="23" orderNumber="1" parameterSource="task_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="82" tableName="tasks"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="83" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="84" dataType="Integer" fieldName="task_id" tableName="tasks"/>
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
		<Panel id="87" visible="True" name="Menu" contentPlaceholder="Menu">
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
		<Panel id="88" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="79" name="Search" PathID="Sidebar1Search" page="Search.ccp">
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
		<CodeFile id="codeRecord1" language="CFML" name="TaskRecord_task.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="TaskRecord.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="TaskRecord.cfm"/>
		<CodeFile id="Code" language="PHPTemplates" name="TaskRecord.php" comment="//" forShow="True" url="TaskRecord.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="TaskRecord.asp" comment="'" forShow="True" url="TaskRecord.asp"/>
		<CodeFile id="3" language="C#" name="TaskRecord.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="TaskRecord.aspx"/>
		<CodeFile id="1" language="C#" name="TaskRecord.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="TaskRecordDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="1" language="C#InMotion" name="TaskRecord.aspx" forShow="True" url="TaskRecord.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="TaskRecordEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="24" groupID="1"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
