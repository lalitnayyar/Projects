<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" validateRequest="True" scriptingSupport="Automatic" wizardTheme="None" wizardThemeVersion="3.0">
	<Components>
		<Panel id="2" visible="True" name="searchPanel" wizardInnerHTML="	Search
	&lt;!-- BEGIN Record search --&gt;
      &lt;form name=&quot;{HTMLFormName}&quot; action=&quot;{Action}&quot; method=&quot;post&quot;&gt;
        &lt;table class=&quot;Record&quot;&gt;
          &lt;!-- BEGIN Error --&gt;
          &lt;tr class=&quot;Error&quot;&gt;
            &lt;td colspan=&quot;2&quot;&gt;{Error}&lt;/td&gt; 
          &lt;/tr&gt;
 &lt;!-- END Error --&gt;
          &lt;tr class=&quot;Controls&quot;&gt;
            &lt;td class=&quot;th&quot;&gt;&lt;label for=&quot;Contentsearchassign_to&quot;&gt;Assigned To&lt;/label&gt;&lt;/td&gt; 
            &lt;td&gt;
              &lt;select name=&quot;assign_to&quot; id=&quot;Contentsearchassign_to&quot;&gt;
                &lt;option value=&quot;&quot; selected&gt;All&lt;/option&gt;
 {assign_to_Options} 
              &lt;/select&gt;
 &lt;/td&gt; 
          &lt;/tr&gt;
			
          &lt;tr class=&quot;Controls&quot;&gt;
            &lt;td class=&quot;th&quot;&gt;&lt;label for=&quot;Contentsearchproject_id&quot;&gt;Project&lt;/label&gt;&lt;/td&gt; 
            &lt;td&gt;
              &lt;select name=&quot;project_id&quot; id=&quot;Contentsearchproject_id&quot;&gt;
                &lt;option value=&quot;&quot; selected&gt;All&lt;/option&gt;
 {project_id_Options} 
              &lt;/select&gt;
 &lt;/td&gt; 
          &lt;/tr&gt;
			
          &lt;tr class=&quot;Controls&quot;&gt;
            &lt;td class=&quot;th&quot;&gt;&lt;label for=&quot;Contentsearchpriority_id&quot;&gt;Priority&lt;/label&gt;&lt;/td&gt; 
            &lt;td&gt;
              &lt;select name=&quot;priority_id&quot; id=&quot;Contentsearchpriority_id&quot;&gt;
                &lt;option value=&quot;&quot; selected&gt;All&lt;/option&gt;
 {priority_id_Options} 
              &lt;/select&gt;
 &lt;/td&gt; 
          &lt;/tr&gt;
			
          &lt;tr class=&quot;Controls&quot;&gt;
            &lt;td class=&quot;th&quot;&gt;&lt;label for=&quot;Contentsearchstatus_id&quot;&gt;Priority&lt;/label&gt;&lt;/td&gt; 
            &lt;td&gt;
              &lt;select name=&quot;status_id&quot; id=&quot;Contentsearchstatus_id&quot;&gt;
                &lt;option value=&quot;&quot; selected&gt;All&lt;/option&gt;
 {status_id_Options} 
              &lt;/select&gt;
 &lt;/td&gt; 
          &lt;/tr&gt;
			
          &lt;tr class=&quot;Controls&quot;&gt;
            &lt;td class=&quot;th&quot;&gt;&lt;label for=&quot;Contentsearchtype_id&quot;&gt;Type&lt;/label&gt;&lt;/td&gt; 
            &lt;td&gt;
              &lt;select name=&quot;type_id&quot; id=&quot;Contentsearchtype_id&quot;&gt;
                &lt;option value=&quot;&quot; selected&gt;All&lt;/option&gt;
 {type_id_Options} 
              &lt;/select&gt;
 &lt;/td&gt; 
          &lt;/tr&gt;
			
          &lt;tr class=&quot;Bottom&quot;&gt;
            &lt;td align=&quot;right&quot; colspan=&quot;2&quot;&gt;
              &lt;!-- BEGIN Button DoSearch --&gt;&lt;input type=&quot;submit&quot; class=&quot;Button&quot; name=&quot;DoSearch&quot; alt=&quot;{res:CCS_Search}&quot; value=&quot;{res:CCS_Search}&quot;&gt;&lt;!-- END Button DoSearch --&gt;&lt;/td&gt; 
          &lt;/tr&gt;
			
        &lt;/table&gt; 
      &lt;/form&gt;
	&lt;!-- END Record search --&gt;&lt;br&gt;" PathID="SearchsearchPanel" masterPage="{CCS_PathToMasterPage}/BlockTemplate.ccp">
			<Components>
				<Panel id="3" visible="True" name="searchTitle" contentPlaceholder="Title">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="4" visible="True" name="searchContent" contentPlaceholder="Content">
					<Components>
						<Record id="5" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="tasks" fictitiousConnection="intranet" fictitiousDataSource="tasks" wizardCaption="Search  " changedCaptionSearch="False" wizardOrientation="Custom" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" templatePageSearch="Templates/Search/SimpleSearch.ccp|ccsTemplate" wizardSpecifyResultsForm="True" wizardResultsForm="tasks" returnPage="Default.ccp" PathID="SearchsearchPanelsearchContenttasks">
							<Components>
								<Button id="6" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="SearchsearchPanelsearchContenttasksButton_DoSearch">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<ListBox id="7" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="s_user_id_assign_to" wizardIsPassword="False" wizardEmptyCaption="Select Value" wizardCaption="User Id Assign To" caption="User Id Assign To" required="False" unique="False" connection="intranet" dataSource="employees" boundColumn="emp_id" textColumn="emp_name" PathID="SearchsearchPanelsearchContenttaskss_user_id_assign_to" orderBy="emp_login">
									<Components/>
									<Events/>
									<TableParameters>
									</TableParameters>
									<SPParameters/>
									<SQLParameters/>
									<JoinTables>
										<JoinTable id="40" posHeight="180" posLeft="10" posTop="10" posWidth="151" tableName="employees"/>
									</JoinTables>
									<JoinLinks/>
									<Fields>
										<Field id="41" fieldName="*"/>
									</Fields>
									<PKFields>
										<PKField id="42" dataType="Integer" fieldName="emp_id" tableName="employees"/>
									</PKFields>
									<Attributes/>
									<Features/>
								</ListBox>
								<ListBox id="8" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="s_project_id" wizardIsPassword="False" wizardEmptyCaption="Select Value" wizardCaption="Project Id" caption="Project Id" required="False" unique="False" connection="intranet" dataSource="projects" boundColumn="project_id" textColumn="project_name" PathID="SearchsearchPanelsearchContenttaskss_project_id" orderBy="project_name">
									<Components/>
									<Events/>
									<TableParameters>
										<TableParameter id="44" conditionType="Parameter" useIsNull="False" dataType="Boolean" field="project_is_active" logicOperator="And" parameterSource="1" parameterType="Expression" searchConditionType="Equal"/>
</TableParameters>
									<SPParameters/>
									<SQLParameters/>
									<JoinTables>
										<JoinTable id="43" posHeight="104" posLeft="10" posTop="10" posWidth="111" tableName="projects"/>
</JoinTables>
									<JoinLinks/>
									<Fields>
										<Field id="45" fieldName="*"/>
</Fields>
									<PKFields>
										<PKField id="46" dataType="Integer" fieldName="project_id" tableName="projects"/>
</PKFields>
									<Attributes/>
									<Features/>
								</ListBox>
								<ListBox id="9" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="s_priority_id" wizardIsPassword="False" wizardEmptyCaption="Select Value" wizardCaption="Priority Id" caption="Priority Id" required="False" unique="False" connection="intranet" dataSource="priorities" boundColumn="priority_id" textColumn="priority_name" PathID="SearchsearchPanelsearchContenttaskss_priority_id">
									<Components/>
									<Events/>
									<TableParameters/>
									<SPParameters/>
									<SQLParameters/>
									<JoinTables>
										<JoinTable id="30" tableName="priorities"/>
									</JoinTables>
									<JoinLinks/>
									<Fields>
										<Field id="21" fieldName="*"/>
									</Fields>
									<PKFields>
										<PKField id="22" dataType="Integer" fieldName="priority_id" tableName="priorities"/>
									</PKFields>
									<Attributes/>
									<Features/>
								</ListBox>
								<ListBox id="10" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="s_status_id" wizardIsPassword="False" wizardEmptyCaption="Select Value" wizardCaption="Status Id" caption="Status Id" required="False" unique="False" connection="intranet" dataSource="statuses" boundColumn="status_id" textColumn="status_name" PathID="SearchsearchPanelsearchContenttaskss_status_id">
									<Components/>
									<Events/>
									<TableParameters/>
									<SPParameters/>
									<SQLParameters/>
									<JoinTables>
										<JoinTable id="23" posHeight="88" posLeft="10" posTop="10" posWidth="95" tableName="statuses"/>
									</JoinTables>
									<JoinLinks/>
									<Fields>
										<Field id="24" fieldName="*"/>
									</Fields>
									<PKFields>
										<PKField id="25" dataType="Integer" fieldName="status_id" tableName="statuses"/>
									</PKFields>
									<Attributes/>
									<Features/>
								</ListBox>
								<ListBox id="11" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="s_type_id" wizardIsPassword="False" wizardEmptyCaption="Select Value" wizardCaption="Type Id" caption="Type Id" required="False" unique="False" connection="intranet" dataSource="types" boundColumn="type_id" textColumn="type_name" PathID="SearchsearchPanelsearchContenttaskss_type_id">
									<Components/>
									<Events/>
									<TableParameters/>
									<SPParameters/>
									<SQLParameters/>
									<JoinTables>
										<JoinTable id="26" posHeight="88" posLeft="10" posTop="10" posWidth="95" tableName="types"/>
									</JoinTables>
									<JoinLinks/>
									<Fields>
										<Field id="27" fieldName="*"/>
									</Fields>
									<PKFields>
										<PKField id="28" dataType="Integer" fieldName="type_id" tableName="types"/>
									</PKFields>
									<Attributes/>
									<Features/>
								</ListBox>
							</Components>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
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
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="Search.php" forShow="True" url="Search.php" comment="//"/>
		<CodeFile id="1" language="C#InMotion" name="Search.ascx" forShow="True" url="Search.ascx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="SearchEvents.ascx.cs" forShow="False" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" name="Search.asp" forShow="True" url="Search.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
