<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="Spring" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<IncludePage id="40" name="header" page="header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Panel id="2" visible="True" name="Panel1" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" PathID="Panel1">
			<Components>
				<Grid id="4" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="InternetDB" dataSource="officers" name="officers" pageSizeLimit="100" wizardCaption="List of Officers " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" PathID="Panel1officers">
					<Components>
						<Sorter id="13" visible="True" name="Sorter_officer_name" column="officer_name" wizardCaption="Name" wizardSortingType="SimpleDir" wizardControl="officer_name" wizardAddNbsp="False" PathID="Panel1officersSorter_officer_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="officer_name" fieldSource="officer_name" wizardCaption="Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" hrefSource="DatabaseInteraction.ccp" wizardThemeItem="GridA" PathID="Panel1officersofficer_name">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="16" sourceType="DataField" format="yyyy-mm-dd" name="officer_id" source="officer_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Link id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="officers_Insert" hrefSource="DatabaseInteraction.ccp" removeParameters="officer_id" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="Panel1officersofficers_Insert">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Navigator id="17" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="True" wizardImagesScheme="Spring" PathID="Panel1officersNavigator">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
					</Components>
					<Events/>
					<TableParameters/>
					<JoinTables>
						<JoinTable id="5" tableName="officers" posLeft="10" posTop="10" posWidth="100" posHeight="120"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="10" fieldName="*"/>
						<Field id="11" tableName="officers" fieldName="officer_id"/>
						<Field id="14" tableName="officers" fieldName="officer_name"/>
					</Fields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
					<PKFields/>
</Grid>
				<Panel id="26" visible="Dynamic" name="Panel2" PathID="Panel1Panel2">
					<Components>
						<Panel id="27" visible="Dynamic" name="Panel3" pasteActions="pasteActions" PathID="Panel1Panel2Panel3">
							<Components>
								<Record id="32" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="InternetDB" name="officers2" dataSource="officers" errorSummator="Error" wizardCaption="Add/Edit Officers " wizardFormMethod="post" PathID="Panel1Panel2Panel3officers2">
									<Components>
										<Label id="33" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="officer_name" fieldSource="officer_name" required="False" caption="Name" wizardCaption="Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" html="False">
											<Components/>
											<Events/>
											<Attributes/>
											<Features/>
										</Label>
										<Label id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="officer_position" fieldSource="officer_position" required="False" caption="Position" wizardCaption="Position" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" html="False">
											<Components/>
											<Events/>
											<Attributes/>
											<Features/>
										</Label>
										<Label id="35" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="officer_email" fieldSource="officer_email" required="False" caption="Email" wizardCaption="Email" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" html="False">
											<Components/>
											<Events/>
											<Attributes/>
											<Features/>
										</Label>
									</Components>
									<Events/>
									<TableParameters>
										<TableParameter id="39" conditionType="Parameter" useIsNull="False" field="officer_id" parameterSource="officer_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
									</TableParameters>
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
							</Components>
							<Events/>
							<Attributes/>
							<Features>
								<YahooTabbedTab id="30" name="YahooTabbedTab1" category="YahooUI" featureNameChanged="No" caption="View">
									<Components/>
									<Events/>
									<TableParameters/>
									<SPParameters/>
									<SQLParameters/>
									<JoinTables/>
									<JoinLinks/>
									<Fields/>
									<Features/>
								</YahooTabbedTab>
							</Features>
						</Panel>
						<Panel id="28" visible="Dynamic" name="Panel4" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" PathID="Panel1Panel2Panel4">
							<Components>
								<Record id="18" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="InternetDB" name="officers1" dataSource="officers" errorSummator="Error" wizardCaption="Add/Edit Officers " wizardFormMethod="post" PathID="Panel1Panel2Panel4officers1">
									<Components>
										<TextBox id="23" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="officer_name" fieldSource="officer_name" required="False" caption="Name" wizardCaption="Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="Panel1Panel2Panel4officers1officer_name">
											<Components/>
											<Events/>
											<Attributes/>
											<Features/>
										</TextBox>
										<TextBox id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="officer_position" fieldSource="officer_position" required="False" caption="Position" wizardCaption="Position" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="Panel1Panel2Panel4officers1officer_position">
											<Components/>
											<Events/>
											<Attributes/>
											<Features/>
										</TextBox>
										<TextBox id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="officer_email" fieldSource="officer_email" required="False" caption="Email" wizardCaption="Email" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="Panel1Panel2Panel4officers1officer_email">
											<Components/>
											<Events/>
											<Attributes/>
											<Features/>
										</TextBox>
										<Button id="19" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="Panel1Panel2Panel4officers1Button_Insert">
											<Components/>
											<Events/>
											<Attributes/>
											<Features/>
										</Button>
										<Button id="20" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="Panel1Panel2Panel4officers1Button_Update">
											<Components/>
											<Events/>
											<Attributes/>
											<Features/>
										</Button>
										<Button id="21" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="Panel1Panel2Panel4officers1Button_Delete">
											<Components/>
											<Events/>
											<Attributes/>
											<Features/>
										</Button>
									</Components>
									<Events/>
									<TableParameters>
										<TableParameter id="25" conditionType="Parameter" useIsNull="False" field="officer_id" parameterSource="officer_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
									</TableParameters>
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
							</Components>
							<Events/>
							<Attributes/>
							<Features>
								<YahooTabbedTab id="31" name="YahooTabbedTab1" category="YahooUI" featureNameChanged="No" caption="Edit">
									<Components/>
									<Events/>
									<TableParameters/>
									<SPParameters/>
									<SQLParameters/>
									<JoinTables/>
									<JoinLinks/>
									<Fields/>
									<Features/>
								</YahooTabbedTab>
							</Features>
						</Panel>
					</Components>
					<Events/>
					<Attributes/>
					<Features>
						<YahooTabbedView id="29" name="YahooTabbedView1" category="YahooUI" featureNameChanged="No">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Features/>
						</YahooTabbedView>
					</Features>
				</Panel>
			</Components>
			<Events/>
			<Attributes/>
			<Features>
				<UpdatePanel id="3" enabled="True" childrenAsTriggers="True" name="UpdatePanel" category="Ajax">
					<Components/>
					<Events/>
					<Features/>
					<ControlPoints/>
				</UpdatePanel>
			</Features>
		</Panel>
		<IncludePage id="41" name="footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="43" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="DatabaseInteraction_desc.ccp" visible="Yes" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="PHPTemplates" name="DatabaseInteraction_events.php" forShow="False" comment="//"/>
		<CodeFile id="Code" language="PHPTemplates" name="DatabaseInteraction.php" forShow="True" url="DatabaseInteraction.php" comment="//"/>
		<CodeFile id="Events" language="ASPTemplates" name="DatabaseInteraction_events.asp" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="Code" language="ASPTemplates" name="DatabaseInteraction.asp" forShow="True" url="DatabaseInteraction.asp" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
