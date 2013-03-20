<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="Spring" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<Panel id="2" visible="Dynamic" name="Panel1" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" PathID="Panel1" features="(assigned)">
			<Components>
				<Grid id="4" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="wishes" connection="InternetDB" dataSource="wishes" orderBy="wish_date" pageSizeLimit="100" pageSize="True" wizardCaption="List of Wishes " wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Centered" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" changedCaptionGrid="False" gridExtendedHTML="False" wizardChangedThroughVQB="True" PathID="Panel1wishes" visible="Dynamic">
					<Components>
						<Sorter id="6" visible="True" name="Sorter_wish_email" column="wish_name" wizardCaption="Wish Email" wizardSortingType="SimpleDir" wizardControl="wish_email" wizardAddNbsp="False" PathID="Panel1wishesSorter_wish_email">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="7" visible="True" name="Sorter_wish_date" column="wish_date" wizardCaption="Wish Date" wizardSortingType="SimpleDir" wizardControl="wish_date" wizardAddNbsp="False" PathID="Panel1wishesSorter_wish_date">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Label id="8" fieldSourceType="DBColumn" dataType="Text" html="False" name="wish_name" fieldSource="wish_name" originalFieldSource="wish_email" wizardCaption="Wish Email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1wisheswish_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="9" fieldSourceType="DBColumn" dataType="Memo" html="False" name="wish_desc" fieldSource="wish_desc" originalFieldSource="wish_desc" wizardCaption="Wish Desc" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1wisheswish_desc">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="10" fieldSourceType="DBColumn" dataType="Date" html="False" name="wish_date" fieldSource="wish_date" originalFieldSource="wish_date" wizardCaption="Wish Date" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1wisheswish_date" format="mm/dd/yyyy H:nn">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="11" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="True" wizardImagesScheme="Spring">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
						<Link id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" PathID="Panel1wishesLink1" wizardUseTemplateBlock="False">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
					</Components>
					<Events/>
					<TableParameters/>
					<JoinTables>
						<JoinTable id="30" tableName="wishes"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
			</Components>
			<Events/>
			<Attributes/>
			<Features>
				<UpdatePanel id="3" enabled="True" childrenAsTriggers="True" name="UpdatePanel" category="Ajax" ccsIdsOnly="False" refresh="Panel2Panel3UpdatePanel.onrefresh;" UpdateMode="Conditional">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="33" name="Panel2Panel3UpdatePanel.onrefresh" relProperty="refresh">
							<Items>
								<ControlPointItem id="34" name="NewPage1" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="35" name="Panel2" ccpId="12" type="Panel" isFeature="False" PathID="Panel2"/>
								<ControlPointItem id="36" name="Panel3" ccpId="31" type="Panel" isFeature="False" PathID="Panel2Panel3"/>
								<ControlPointItem id="37" name="UpdatePanel" ccpId="32" type="UpdatePanel" isFeature="True" PathID="Panel2Panel3UpdatePanel"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</UpdatePanel>
				<Condition id="38" name="Condition1" category="Ajax" featureNameChanged="No" sourceType1="Expression" Parameter_name1="document.getElementById(&quot;Panel2Panel3wishes1Error&quot;)" condition="==" sourceType2="Expression" Parameter_name2="null" ccsIdsOnly="False" start="Panel2Panel3UpdatePanel.onrefresh;" name1="document.getElementById(&quot;Panel2Panel3wishes1Error&quot;)" name2="null">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="39" name="Panel2Panel3UpdatePanel.onrefresh" relProperty="start">
							<Items>
								<ControlPointItem id="40" name="NewPage1" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="41" name="Panel2" ccpId="12" type="Panel" isFeature="False" PathID="Panel2"/>
								<ControlPointItem id="42" name="Panel3" ccpId="31" type="Panel" isFeature="False" PathID="Panel2Panel3"/>
								<ControlPointItem id="43" name="UpdatePanel" ccpId="32" type="UpdatePanel" isFeature="True" PathID="Panel2Panel3UpdatePanel"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
			</Features>
		</Panel>
		<Panel id="12" visible="True" name="Panel2" PathID="Panel2" features="(assigned)">
			<Components>
				<Panel id="31" visible="True" name="Panel3" PathID="Panel2Panel3" features="(assigned)">
					<Components>
						<Record id="20" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="wishes1" connection="InternetDB" dataSource="wishes" PathID="Panel2Panel3wishes1">
							<Components>
								<Button id="22" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" PathID="Panel2Panel3wishes1Button_Insert">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<Hidden id="26" fieldSourceType="DBColumn" dataType="Date" name="wish_date" caption="Wish Date" fieldSource="wish_date" format="mm/dd/yyyy h:nn AM/PM" defaultValue="CurrentDateTime" required="False" unique="False" PathID="Panel2Panel3wishes1wish_date">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Hidden>
								<TextArea id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Memo" name="wish_desc" caption="Description" fieldSource="wish_desc" unique="False" PathID="Panel2Panel3wishes1wish_desc" required="False">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextArea>
								<TextBox id="29" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="wish_email" caption="E-mail" fieldSource="wish_email" unique="False" PathID="Panel2Panel3wishes1wish_email" required="False">
									<Components/>
									<Events>
										<Event name="OnValidate" type="Server">
											<Actions>
												<Action actionName="Validate Email" actionCategory="Validation" id="52" name="wish_email"/>
											</Actions>
										</Event>
									</Events>
									<Attributes/>
									<Features/>
								</TextBox>
								<TextBox id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="wish_name" PathID="Panel2Panel3wishes1wish_name" fieldSource="wish_name">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
							</Components>
							<Events/>
							<TableParameters>
								<TableParameter id="25" conditionType="Parameter" useIsNull="False" field="wish_id" dataType="Integer" searchConditionType="Equal" parameterType="URL" parameterSource="wish_id" logicOperator="And" orderNumber="1"/>
							</TableParameters>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="21" tableName="wishes"/>
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
					<Features>
						<UpdatePanel id="32" enabled="True" childrenAsTriggers="True" name="UpdatePanel" category="Ajax" ccsIdsOnly="False" refresh="Panel2YahooPanel1.onhide;" UpdateMode="Conditional">
							<Components/>
							<Events/>
							<ControlPoints>
								<ControlPoint id="48" name="Panel2YahooPanel1.onhide" relProperty="refresh">
									<Items>
										<ControlPointItem id="49" name="NewPage1" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="50" name="Panel2" ccpId="12" type="Panel" isFeature="False" PathID="Panel2"/>
										<ControlPointItem id="51" name="YahooPanel1" ccpId="13" type="YahooPanel" isFeature="True" PathID="Panel2YahooPanel1"/>
									</Items>
								</ControlPoint>
							</ControlPoints>
							<Features/>
						</UpdatePanel>
					</Features>
				</Panel>
			</Components>
			<Events/>
			<Attributes/>
			<Features>
				<YahooPanel id="13" enabled="True" modal="Yes" fixedcenter="True" visible="No" constraintoviewport="Yes" name="YahooPanel1" category="YahooUI" title="New Wish" ccsIdsOnly="False" show="Panel1wishesLink1.onclick;" hide="Panel1Condition1.ontrue;">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<ControlPoints>
						<ControlPoint id="15" name="Panel1wishesLink1.onclick" relProperty="show">
							<Items>
								<ControlPointItem id="16" name="NewPage1" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="17" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="18" name="wishes" ccpId="4" type="Grid" isFeature="False" PathID="Panel1wishes"/>
								<ControlPointItem id="19" name="Link1" ccpId="14" type="Link" isFeature="False" PathID="Panel1wishesLink1"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="44" name="Panel1Condition1.ontrue" relProperty="hide">
							<Items>
								<ControlPointItem id="45" name="NewPage1" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="46" name="Panel1" ccpId="2" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="47" name="Condition1" ccpId="38" type="Condition" isFeature="True" PathID="Panel1Condition1"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</YahooPanel>
			</Features>
		</Panel>
		<IncludePage id="53" name="header" page="header.ccp" PathID="header">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="54" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="ModalWindow_desc.ccp" visible="Yes" wizardUseTemplateBlock="False" PathID="Link1">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<IncludePage id="55" name="footer" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" page="footer.ccp" PathID="footer">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" name="ModalWindow_events.asp" forShow="False" comment="'"/>
		<CodeFile id="Code" language="ASPTemplates" name="ModalWindow.asp" forShow="True" url="ModalWindow.asp" comment="'"/>
		<CodeFile id="Events" language="PHPTemplates" name="ModalWindow_events.php" forShow="False" comment="//"/>
<CodeFile id="Code" language="PHPTemplates" name="ModalWindow.php" forShow="True" url="ModalWindow.php" comment="//"/>
</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
