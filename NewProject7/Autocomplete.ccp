<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="Spring" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="120" name="header" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="IntranetDB" name="employees" errorSummator="Error" wizardCaption="Add/Edit Employees " wizardFormMethod="post" activeCollection="UConditions" activeTableType="customUpdate" PathID="employees">
			<Components>
				<TextBox id="5" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" name="emp_name" fieldSource="emp_name" required="False" caption="Emp Name" wizardCaption="Emp Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="employeesemp_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<UpdateDB id="48" enabled="True" name="UpdateDB1" category="Ajax" featureNameChanged="No" connection="IntranetDB" operation="Update" customUpdateType="Table" customUpdate="employees" activeCollection="UConditions" activeTableType="customUpdate" ccsIdsOnly="False" start="Update.OnClick;">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<ISPParameters/>
							<ISQLParameters/>
							<IFormElements/>
							<USPParameters/>
							<USQLParameters/>
							<UConditions>
								<TableParameter id="118" conditionType="Parameter" useIsNull="False" field="emp_id" dataType="Integer" searchConditionType="Equal" parameterType="Control" logicOperator="And" parameterSource="emp_id"/>
							</UConditions>
							<UFormElements>
								<CustomParameter id="49" field="title" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="employeestitle"/>
								<CustomParameter id="92" field="emp_name" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="employeesemp_name"/>
								<CustomParameter id="93" field="department_id" dataType="Integer" parameterType="Control" omitIfEmpty="True" parameterSource="employeesdepartment_id"/>
								<CustomParameter id="94" field="email" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="employeesemail"/>
								<CustomParameter id="95" field="phone_home" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="employeesphone_home"/>
								<CustomParameter id="96" field="phone_work" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="employeesphone_work"/>
								<CustomParameter id="97" field="phone_cell" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="employeesphone_cell"/>
								<CustomParameter id="98" field="fax" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="employeesfax"/>
								<CustomParameter id="99" field="city" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="employeescity"/>
								<CustomParameter id="100" field="zip" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="employeeszip"/>
								<CustomParameter id="101" field="address" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="employeesaddress"/>
							</UFormElements>
							<DSPParameters/>
							<DSQLParameters/>
							<DConditions/>
							<Features/>
							<ControlPoints/>
</UpdateDB>
						<HideShow id="63" enabled="True" name="HideShow1" category="Ajax" featureNameChanged="No" ccsIdsOnly="False" show="employeesemp_namePTAutoFill1.onsuccess;" hide="employees.onload;" controlId="employeespicture1">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Features/>
							<ControlPoints/>
</HideShow>
						<PTAutocomplete id="103" enabled="True" sourceType="Table" name="PTAutocomplete1" servicePage="services/employee_lookup.ccp" category="Prototype" searchField="emp_name" connection="IntranetDB" featureNameChanged="No" dataSource="employees">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Features/>
						</PTAutocomplete>
						<PTAutoFill id="105" enabled="True" valueField="value" sourceType="Table" name="PTAutoFill1" servicePage="services/employees.ccp" searchField="emp_name" connection="IntranetDB" featureNameChanged="No" dataSource="employees" category="Prototype" ccsIdsOnly="False" start="employeesemp_nameCondition2.ontrue;">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Controls>
								<Control id="106" name="title" source="title" propertyValue="value" sourceId="6"/>
								<Control id="107" name="department_id" source="department_id" propertyValue="value" sourceId="7"/>
								<Control id="108" name="email" source="email" propertyValue="value" sourceId="8"/>
								<Control id="109" name="phone_home" source="phone_home" propertyValue="value" sourceId="10"/>
								<Control id="110" name="phone_work" source="phone_work" propertyValue="value" sourceId="11"/>
								<Control id="111" name="phone_cell" source="phone_cell" propertyValue="value" sourceId="12"/>
								<Control id="112" name="fax" source="fax" propertyValue="value" sourceId="13"/>
								<Control id="113" name="city" source="city" propertyValue="value" sourceId="14"/>
								<Control id="114" name="zip" source="zip" propertyValue="value" sourceId="15"/>
								<Control id="115" name="address" source="address" propertyValue="value" sourceId="16"/>
								<Control id="116" name="employeespicture" source="picture" propertyValue="src"/>
								<Control id="117" name="employeesemp_id" source="emp_id" propertyValue="value"/>
							</Controls>
							<Features/>
							<ControlPoints/>
</PTAutoFill>
						<Condition id="119" conditionType="Parameter" dataType="Text" name="Condition2" category="Ajax" featureNameChanged="No" condition="!=" start="employeesemp_name.OnFocus;employeesemp_name.OnKeyUp;" name1="employeesemp_name" sourceType1="Control" sourceType2="Expression" name2="&quot;&quot;">
							<Components/>
							<Events/>
							<Features/>
							<ControlPoints/>
</Condition>
						<HideShow id="122" enabled="True" name="HideShow3" category="Ajax" featureNameChanged="No" controlId="updateindicator" ccsIdsOnly="False" show="employeesemp_nameUpdateDB1.onstart;" hide="employeesemp_nameUpdateDB1.onfailure;employeesemp_nameUpdateDB1.onsuccess;">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Features/>
							<ControlPoints/>
</HideShow>
						<Condition id="123" name="Condition3" category="Ajax" featureNameChanged="No" condition="!=" sourceType1="Control" ccsIdsOnly="False" start="employees.onload;employeesemp_name.onchange;employeestitle.onchange;employeesdepartment_id.onchange;employeesemail.onchange;employeesphone_home.onchange;employeesphone_work.onchange;employeesphone_cell.onchange;employeesfax.onchange;employeescity.onchange;employeeszip.onchange;employeesaddress.onchange;" name1="employeesemp_id" name2="&quot;&quot;" sourceType2="Expression">
							<Components/>
							<Events/>
							<Features/>
							<ControlPoints/>
</Condition>
						<HideShow id="124" enabled="True" name="HideShow4" category="Ajax" featureNameChanged="No" controlId="updatep" ccsIdsOnly="False" show="employeesemp_nameCondition3.ontrue;" hide="employees.onload;employeesemp_nameUpdateDB1.onsuccess;employeesemp_nameUpdateDB1.onfailure;employeesemp_namePTAutoFill1.onfailure;employeesemp_namePTAutoFill1.onsuccess;">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Features/>
							<ControlPoints/>
</HideShow>
					</Features>
				</TextBox>
				<TextBox id="6" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="title" fieldSource="title" required="False" caption="Title" wizardCaption="Title" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="employeestitle">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="department_id" fieldSource="department_id" required="False" caption="Department Id" wizardCaption="Department Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" sourceType="Table" connection="IntranetDB" dataSource="departments" boundColumn="department_id" textColumn="department_name" PathID="employeesdepartment_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</ListBox>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="email" fieldSource="email" required="False" caption="Email" wizardCaption="Email" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="employeesemail">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Image id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="picture" fieldSource="picture" required="False" caption="Picture" wizardCaption="Picture" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="employeespicture">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="phone_home" fieldSource="phone_home" required="False" caption="Phone Home" wizardCaption="Phone Home" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="employeesphone_home">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="phone_work" fieldSource="phone_work" required="False" caption="Phone Work" wizardCaption="Phone Work" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="employeesphone_work">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="phone_cell" fieldSource="phone_cell" required="False" caption="Phone Cell" wizardCaption="Phone Cell" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="employeesphone_cell">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="fax" fieldSource="fax" required="False" caption="Fax" wizardCaption="Fax" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="employeesfax">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="city" fieldSource="city" required="False" caption="City" wizardCaption="City" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="employeescity">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="zip" fieldSource="zip" required="False" caption="Zip" wizardCaption="Zip" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="employeeszip">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="address" fieldSource="address" required="False" caption="Address" wizardCaption="Address" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="employeesaddress">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="77" visible="Yes" fieldSourceType="DBColumn" dataType="Single" name="emp_id" PathID="employeesemp_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events/>
			<TableParameters>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="17" conditionType="Parameter" useIsNull="False" field="emp_id" dataType="Integer" parameterType="Control" searchConditionType="Equal" logicOperator="And" orderNumber="1" parameterSource="emp_id"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="18" field="emp_name" dataType="Text" parameterType="Control" parameterSource="emp_name" omitIfEmpty="True"/>
				<CustomParameter id="19" field="title" dataType="Text" parameterType="Control" parameterSource="title" omitIfEmpty="True"/>
				<CustomParameter id="20" field="department_id" dataType="Integer" parameterType="Control" parameterSource="department_id" omitIfEmpty="True"/>
				<CustomParameter id="21" field="email" dataType="Text" parameterType="Control" parameterSource="email" omitIfEmpty="True"/>
				<CustomParameter id="22" field="picture" dataType="Text" parameterType="Control" parameterSource="picture" omitIfEmpty="True"/>
				<CustomParameter id="23" field="phone_home" dataType="Text" parameterType="Control" parameterSource="phone_home" omitIfEmpty="True"/>
				<CustomParameter id="24" field="phone_work" dataType="Text" parameterType="Control" parameterSource="phone_work" omitIfEmpty="True"/>
				<CustomParameter id="25" field="phone_cell" dataType="Text" parameterType="Control" parameterSource="phone_cell" omitIfEmpty="True"/>
				<CustomParameter id="26" field="fax" dataType="Text" parameterType="Control" parameterSource="fax" omitIfEmpty="True"/>
				<CustomParameter id="27" field="city" dataType="Text" parameterType="Control" parameterSource="city" omitIfEmpty="True"/>
				<CustomParameter id="28" field="zip" dataType="Text" parameterType="Control" parameterSource="zip" omitIfEmpty="True"/>
				<CustomParameter id="29" field="address" dataType="Text" parameterType="Control" parameterSource="address" omitIfEmpty="True"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions>
				<TableParameter id="90" conditionType="Parameter" useIsNull="False" field="emp_id" dataType="Integer" parameterType="Form" parameterSource="emp_id" searchConditionType="Equal" logicOperator="And" orderNumber="1"/>
			</DConditions>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Record>
		<IncludePage id="39" name="footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="85" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="Autocomplete_desc.ccp" visible="Yes" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
<Features/>
</Link>
</Components>
	<CodeFiles>
		<CodeFile id="PTAutocomplete103" language="PHPTemplates" name="Autocompleteemployeesemp_name_style.css" forShow="False" comment="/*" commentEnd="*/" codePage="windows-1252"/>
		<CodeFile id="Events" language="PHPTemplates" name="Autocomplete_events.php" forShow="False" comment="//" codePage="windows-1252"/>
		<CodeFile id="Code" language="PHPTemplates" name="Autocomplete.php" forShow="True" url="Autocomplete.php" comment="//" codePage="windows-1252"/>
		<CodeFile id="PTAutocomplete103" language="ASPTemplates" name="Autocompleteemployeesemp_name_style.css" forShow="False" comment="/*" commentEnd="*/" codePage="windows-1252"/>
		<CodeFile id="Events" language="ASPTemplates" name="Autocomplete_events.asp" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="Code" language="ASPTemplates" name="Autocomplete.asp" forShow="True" url="Autocomplete.asp" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
