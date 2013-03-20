<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="Simple" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="saconsult" connection="Connection1" dataSource="saconsult" orderBy="sacon_registration" pageSizeLimit="100" pageSize="True" wizardCaption="List of Saconsult " wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Centered" wizardUseSearch="True" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="GridRecord" wizardGridRecordLinkFieldType="field" wizardGridRecordLinkField="sacon_Name" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="False" gridExtendedHTML="False" composition="2" isParent="True">
			<Components>
				<Link id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="saconsult_Insert" hrefSource="soniacon.ccp" removeParameters="Pkey" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="saconsultsaconsult_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="11" visible="True" name="Sorter_sacon_Name" column="sacon_Name" wizardCaption="Sacon Name" wizardSortingType="SimpleDir" wizardControl="sacon_Name" wizardAddNbsp="False" PathID="saconsultSorter_sacon_Name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="12" visible="True" name="Sorter_sacon_DOB" column="sacon_DOB" wizardCaption="Sacon DOB" wizardSortingType="SimpleDir" wizardControl="sacon_DOB" wizardAddNbsp="False" PathID="saconsultSorter_sacon_DOB">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="13" visible="True" name="Sorter_sacon_phone" column="sacon_phone" wizardCaption="Sacon Phone" wizardSortingType="SimpleDir" wizardControl="sacon_phone" wizardAddNbsp="False" PathID="saconsultSorter_sacon_phone">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="14" visible="True" name="Sorter_sacon_email" column="sacon_email" wizardCaption="Sacon Email" wizardSortingType="SimpleDir" wizardControl="sacon_email" wizardAddNbsp="False" PathID="saconsultSorter_sacon_email">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="15" visible="True" name="Sorter_sacon_registration" column="sacon_registration" wizardCaption="Sacon Registration" wizardSortingType="SimpleDir" wizardControl="sacon_registration" wizardAddNbsp="False" PathID="saconsultSorter_sacon_registration">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="GET" name="sacon_Name" fieldSource="sacon_Name" wizardCaption="Sacon Name" wizardIsPassword="False" wizardUseTemplateBlock="False" linkProperties="''" wizardAddNbsp="True" wizardThemeItem="GridA" PathID="saconsultsacon_Name" urlType="Relative">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="18" sourceType="DataField" format="yyyy-mm-dd" name="Pkey" source="Pkey"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="20" fieldSourceType="DBColumn" dataType="Date" html="False" name="sacon_DOB" fieldSource="sacon_DOB" wizardCaption="Sacon DOB" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultsacon_DOB" format="yyyy-mm-dd" DBFormat="yyyy-mm-dd">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_phone" fieldSource="sacon_phone" wizardCaption="Sacon Phone" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultsacon_phone">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_email" fieldSource="sacon_email" wizardCaption="Sacon Email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultsacon_email">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Integer" html="False" name="sacon_registration" fieldSource="sacon_registration" wizardCaption="Sacon Registration" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="saconsultsacon_registration">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="27" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="True" wizardImagesScheme="Simple">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="sacon_Name" parameterSource="s_sacon_Name" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="1" searchFormParameter="True"/>
				<TableParameter id="7" conditionType="Parameter" useIsNull="False" field="sacon_DOB" parameterSource="s_sacon_DOB" dataType="Date" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="2" searchFormParameter="True"/>
				<TableParameter id="8" conditionType="Parameter" useIsNull="False" field="sacon_POB" parameterSource="s_sacon_POB" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="3" searchFormParameter="True"/>
				<TableParameter id="9" conditionType="Parameter" useIsNull="False" field="sacon_phone" parameterSource="s_sacon_phone" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="4" searchFormParameter="True"/>
				<TableParameter id="10" conditionType="Parameter" useIsNull="False" field="sacon_email" parameterSource="s_sacon_email" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="5" searchFormParameter="True"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="3" tableName="saconsult"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="4" tableName="saconsult" fieldName="Pkey"/>
				<Field id="16" tableName="saconsult" fieldName="sacon_Name"/>
				<Field id="19" tableName="saconsult" fieldName="sacon_DOB"/>
				<Field id="21" tableName="saconsult" fieldName="sacon_phone"/>
				<Field id="23" tableName="saconsult" fieldName="sacon_email"/>
				<Field id="25" tableName="saconsult" fieldName="sacon_registration"/>
			</Fields>
			<PKFields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Record id="28" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="saconsultSearch" searchIds="28" fictitiousConnection="Connection1" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="GridRecord" returnPage="soniacon.ccp" PathID="saconsultSearch" composition="2">
			<Components>
				<Button id="29" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="saconsultSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="30" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_sacon_Name" fieldSource="sacon_Name" wizardIsPassword="False" wizardCaption="Sacon Name" caption="Sacon Name" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsultSearchs_sacon_Name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="s_sacon_DOB" fieldSource="sacon_DOB" wizardIsPassword="False" features="(assigned)" wizardCaption="Sacon DOB" caption="Sacon DOB" required="False" format="yyyy-mm-dd" unique="False" wizardSize="8" wizardMaxLength="100" PathID="saconsultSearchs_sacon_DOB" DBFormat="yyyy-mm-dd">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<InlineDatePicker id="32" enabled="Yes" name="InlineDatePicker1" category="YahooUI">
							<Components/>
							<Events/>
							<ControlPoints/>
							<Features/>
						</InlineDatePicker>
					</Features>
				</TextBox>
				<TextBox id="33" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_sacon_POB" fieldSource="sacon_POB" wizardIsPassword="False" wizardCaption="Sacon POB" caption="Sacon POB" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsultSearchs_sacon_POB">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_sacon_phone" fieldSource="sacon_phone" wizardIsPassword="False" wizardCaption="Sacon Phone" caption="Sacon Phone" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsultSearchs_sacon_phone">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="35" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_sacon_email" fieldSource="sacon_email" wizardIsPassword="False" wizardCaption="Sacon Email" caption="Sacon Email" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsultSearchs_sacon_email">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
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
		<Record id="36" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="saconsult1" connection="Connection1" dataSource="saconsult" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="True" buttonsType="button" wizardRecordKey="Pkey" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Saconsult " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="GridRecord" changedCaptionRecord="False" recordDirection="Vertical" templatePageRecord="C:/Program Files/CodeChargeStudio5/Templates/Record/DivRecord.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="saconsult1" composition="2">
			<Components>
				<Button id="38" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="saconsult1Button_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="39" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="saconsult1Button_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="40" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="saconsult1Button_Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="41" message="Delete record?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="42" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="saconsult1Button_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="44" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="sacon_registration" fieldSource="sacon_registration" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Registration" caption="Sacon Registration" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="saconsult1sacon_registration">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="45" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="sacon_DTReg" fieldSource="sacon_DTReg" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Sacon DTReg" caption="Sacon DTReg" required="False" format="yyyy-mm-dd H:nn:ss" unique="False" wizardSize="8" wizardMaxLength="100" PathID="saconsult1sacon_DTReg" defaultValue="CurrentDateTime" DBFormat="yyyy-mm-dd H:nn:ss">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<InlineDatePicker id="46" enabled="Yes" name="InlineDatePicker1" category="YahooUI">
							<Components/>
							<Events/>
							<ControlPoints/>
							<Features/>
						</InlineDatePicker>
					</Features>
				</TextBox>
				<TextBox id="47" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_Name" fieldSource="sacon_Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Name" caption="Sacon Name" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_Name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="48" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="sacon_DOB" fieldSource="sacon_DOB" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Sacon DOB" caption="Sacon DOB" required="False" format="yyyy-mm-dd" unique="False" wizardSize="8" wizardMaxLength="100" PathID="saconsult1sacon_DOB" defaultValue="CurrentDate" DBFormat="yyyy-mm-dd">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<InlineDatePicker id="49" enabled="Yes" name="InlineDatePicker2" category="YahooUI">
							<Components/>
							<Events/>
							<ControlPoints/>
							<Features/>
						</InlineDatePicker>
					</Features>
				</TextBox>
				<TextBox id="50" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="sacon_TOB" fieldSource="sacon_TOB" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Sacon TOB" caption="Sacon TOB" required="True" format="H:nn:ss" unique="False" wizardSize="8" wizardMaxLength="100" PathID="saconsult1sacon_TOB" defaultValue="CurrentTime" DBFormat="HH:nn:ss">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<InlineDatePicker id="51" enabled="False" name="InlineDatePicker3" category="YahooUI">
							<Components/>
							<Events/>
							<ControlPoints/>
							<Features/>
						</InlineDatePicker>
					</Features>
				</TextBox>
				<TextBox id="52" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_POB" fieldSource="sacon_POB" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon POB" caption="Sacon POB" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_POB">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_phone" fieldSource="sacon_phone" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Phone" caption="Sacon Phone" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_phone">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="54" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_email" fieldSource="sacon_email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Email" caption="Sacon Email" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_email">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_address1" fieldSource="sacon_address1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Address1" caption="Sacon Address1" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_address1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_address2" caption="Sacon Address2" fieldSource="sacon_address2" required="False" unique="False" PathID="saconsult1sacon_address2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="57" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="sacon_DateOfMarriage" fieldSource="sacon_DateOfMarriage" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Sacon Date Of Marriage" caption="Sacon Date Of Marriage" required="False" format="yyyy-mm-dd" unique="False" wizardSize="8" wizardMaxLength="100" PathID="saconsult1sacon_DateOfMarriage">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<InlineDatePicker id="58" enabled="Yes" name="InlineDatePicker4" category="YahooUI">
							<Components/>
							<Events/>
							<ControlPoints/>
							<Features/>
						</InlineDatePicker>
					</Features>
				</TextBox>
				<TextBox id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="sacon_noChildB" fieldSource="sacon_noChildB" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon No Child B" caption="Sacon No Child B" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="saconsult1sacon_noChildB">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="60" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="sacon_noChildG" fieldSource="sacon_noChildG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon No Child G" caption="Sacon No Child G" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="saconsult1sacon_noChildG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="61" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_education" fieldSource="sacon_education" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Education" caption="Sacon Education" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_education">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="62" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_profession" fieldSource="sacon_profession" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Profession" caption="Sacon Profession" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_profession">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_reference" fieldSource="sacon_reference" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Reference" caption="Sacon Reference" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_reference">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Memo" name="sacon_question" fieldSource="sacon_question" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Question" caption="Sacon Question" required="True" unique="False" wizardSize="50" wizardMaxLength="250" PathID="saconsult1sacon_question">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="65" visible="Yes" fieldSourceType="DBColumn" dataType="Memo" name="sacon_notes" fieldSource="sacon_notes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Notes" caption="Sacon Notes" required="True" unique="False" wizardSize="50" wizardMaxLength="250" PathID="saconsult1sacon_notes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="43" conditionType="Parameter" useIsNull="False" field="Pkey" parameterSource="Pkey" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="37" tableName="saconsult"/>
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
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="soniacon.php" forShow="True" url="soniacon.php" comment="//" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
