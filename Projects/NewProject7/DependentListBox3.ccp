<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="Spring" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="80" name="header" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="directory_items_statesSearch" actionPage="DependentListBox3" errorSummator="Error" wizardFormMethod="post" PathID="directory_items_statesSearch">
			<Components>
				<ListBox id="8" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Single" returnValueType="Number" name="s_category_id" wizardEmptyCaption="Select Value" connection="InternetDB" dataSource="directory_categories" boundColumn="category_id" textColumn="category_name" activeCollection="TableParameters" PathID="directory_items_statesSearchs_category_id">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="12" conditionType="Parameter" useIsNull="False" field="category_id_parent" dataType="Integer" searchConditionType="IsNull" parameterType="Expression" logicOperator="Or" parameterSource="1"/>
						<TableParameter id="13" conditionType="Parameter" useIsNull="False" field="category_id_parent" dataType="Integer" searchConditionType="Equal" parameterType="Expression" logicOperator="And" parameterSource="0"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="11" tableName="directory_categories" posLeft="10" posTop="10" posWidth="125" posHeight="104"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
</ListBox>
				<ListBox id="9" visible="Dynamic" fieldSourceType="DBColumn" sourceType="Table" dataType="Single" returnValueType="Number" name="s_subcategory_id" wizardEmptyCaption="Select Value" connection="InternetDB" dataSource="directory_categories" boundColumn="category_id" textColumn="category_name" activeCollection="TableParameters" PathID="directory_items_statesSearchs_subcategory_id">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="15" conditionType="Parameter" useIsNull="False" field="category_id" dataType="Integer" searchConditionType="Equal" parameterType="Expression" logicOperator="And" parameterSource="0"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="14" tableName="directory_categories" posLeft="10" posTop="10" posWidth="125" posHeight="104"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features>
						<PTDependentListBox id="65" enabled="True" name="PTDependantListBox2" servicePage="services/directory_categories.ccp" masterListbox="s_category_id" category="Prototype" featureNameChanged="No">
							<Components/>
							<Events/>
							<Features/>
						</PTDependentListBox>
						<ClientCustomCode id="91" enabled="True" name="ClientCustomCode1" category="Ajax" featureNameChanged="No" ccsIdsOnly="False" start="directory_items_statesSearchs_subcategory_idPTDependantListBox2.onstart;">
							<Components/>
							<Events/>
							<Features/>
							<ControlPoints/>
						</ClientCustomCode>
						<ClientCustomCode id="92" enabled="True" name="ClientCustomCode2" category="Ajax" featureNameChanged="No" ccsIdsOnly="False" start="directory_items_statesSearchs_subcategory_idPTDependantListBox2.onsuccess;directory_items_statesSearchs_subcategory_idPTDependantListBox2.onfailure;">
							<Components/>
							<Events/>
							<Features/>
							<ControlPoints/>
						</ClientCustomCode>
					</Features>
					<PKFields/>
</ListBox>
				<ListBox id="10" visible="Dynamic" fieldSourceType="DBColumn" sourceType="Table" dataType="Single" returnValueType="Number" name="s_item_id" wizardEmptyCaption="Select Value" connection="InternetDB" dataSource="directory_items" boundColumn="item_id" textColumn="item_name" activeCollection="TableParameters" PathID="directory_items_statesSearchs_item_id">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="96" conditionType="Parameter" useIsNull="False" field="category_id" dataType="Integer" searchConditionType="Equal" parameterType="Expression" logicOperator="And" parameterSource="0"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="95" tableName="directory_items" posLeft="10" posTop="10" posWidth="115" posHeight="180"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features>
						<PTDependentListBox id="67" enabled="True" name="PTDependentListBox3" servicePage="services/directory_items_lookup.ccp" masterListbox="s_subcategory_id" category="Prototype">
							<Components/>
							<Events/>
							<Features/>
						</PTDependentListBox>
						<PTAutoFill id="69" enabled="True" valueField="value" sourceType="Table" name="PTAutoFill1" servicePage="services/directory_items.ccp" searchField="item_id" connection="InternetDB" featureNameChanged="No" dataSource="directory_items" category="Prototype" start="directory_items_statesSearchs_item_id.onchange;directory_items_statesSearchs_item_idPTDependentListBox3.onsuccess;directory_items_statesSearchs_item_idPTDependentListBox3.onfailure;" ccsIdsOnly="False">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Controls>
								<Control id="81" name="directory_items_statesitem_name" source="item_name" propertyValue="innerHTML"/>
								<Control id="82" name="directory_items_statesaddress" source="address" propertyValue="innerHTML"/>
								<Control id="83" name="directory_items_statescity" source="city" propertyValue="innerHTML"/>
								<Control id="84" name="directory_items_stateszip" source="zip" propertyValue="innerHTML"/>
								<Control id="85" name="directory_items_statesstate_name" source="state_name" propertyValue="innerHTML"/>
								<Control id="86" name="directory_items_statesphone" source="phone" propertyValue="innerHTML"/>
								<Control id="87" name="directory_items_statesnote" source="note" propertyValue="innerHTML"/>
								<Control id="88" name="directory_items_statesemail" source="email" propertyValue="innerHTML"/>
								<Control id="89" name="directory_items_statesurl" source="url" propertyValue="innerHTML"/>
								<Control id="90" name="directory_items_statesurl" source="url" propertyValue="href"/>
							</Controls>
							<Features/>
							<ControlPoints/>
						</PTAutoFill>
						<ClientCustomCode id="93" enabled="True" name="ClientCustomCode1" category="Ajax" featureNameChanged="No" ccsIdsOnly="False" start="directory_items_statesSearchs_item_idPTDependentListBox3.onstart;">
							<Components/>
							<Events/>
							<Features/>
							<ControlPoints/>
						</ClientCustomCode>
						<ClientCustomCode id="94" enabled="True" name="ClientCustomCode2" category="Ajax" featureNameChanged="No" ccsIdsOnly="False" start="directory_items_statesSearchs_item_idPTDependentListBox3.onfailure;directory_items_statesSearchs_item_idPTDependentListBox3.onsuccess;">
							<Components/>
							<Events/>
							<Features/>
							<ControlPoints/>
						</ClientCustomCode>
					</Features>
					<PKFields/>
</ListBox>
			</Components>
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
			<UConditions/>
			<UFormElements/>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
</Record>
		<Record id="18" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="directory_items_states" actionPage="DependentListBox3" errorSummator="Error" wizardFormMethod="post" pasteActions="pasteActions" PathID="directory_items_states">
			<Components>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="item_name" fieldSource="item_name" wizardCaption="Item Name" wizardSize="50" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="address" fieldSource="address" wizardCaption="Address" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="city" fieldSource="city" wizardCaption="City" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="zip" fieldSource="zip" wizardCaption="Zip" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="state_name" fieldSource="state_name" wizardCaption="State Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="phone" fieldSource="phone" wizardCaption="Phone" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="31" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="False" name="note" fieldSource="note" wizardCaption="Note" wizardSize="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="email" fieldSource="email" wizardCaption="Email" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="35" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="url" fieldSource="url" wizardCaption="Url" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefType="Page" urlType="Relative" preserveParameters="GET" visible="Yes" PathID="directory_items_statesurl">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
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
			<UConditions/>
			<UFormElements/>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
</Record>
		<IncludePage id="39" name="footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="97" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="DependentListBox3_desc.ccp" visible="Yes" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="PHPTemplates" name="DependentListBox3_events.php" forShow="False" comment="//"/>
		<CodeFile id="Code" language="PHPTemplates" name="DependentListBox3.php" forShow="True" url="DependentListBox3.php" comment="//"/>
		<CodeFile id="Events" language="ASPTemplates" name="DependentListBox3_events.asp" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="Code" language="ASPTemplates" name="DependentListBox3.asp" forShow="True" url="DependentListBox3.asp" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
