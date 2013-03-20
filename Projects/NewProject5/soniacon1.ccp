<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" useDesign="True" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp" needGeneration="0">
	<Components>
		<Panel id="2" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="3" visible="True" name="Content" contentPlaceholder="Content">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="4" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="5" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Grid id="6" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="saconsult" connection="Connection1" dataSource="saconsult" orderBy="sacon_registration" pageSizeLimit="100" pageSize="True" wizardCaption="List of Clients" wizardTheme="Maple" wizardThemeApplyTo="Component" wizardGridType="Gallery" wizardSortingType="Extended" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Centered" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="GridRecord" wizardGridRecordLinkFieldType="field" wizardGridRecordLinkField="sacon_registration" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" numberOfColumns="1" rowsPerPage="10" recordsNumber="10" wizardThemeVersion="3.0" composition="3" isParent="True">
<Components>
<Link id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="saconsult_Insert" hrefSource="soniacon1.ccp" removeParameters="Pkey" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="saconsultsaconsult_Insert" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<LinkParameters/>
<Attributes/>
<Features/>
</Link>
<Sorter id="12" visible="True" name="Sorter_sacon_registration" column="sacon_registration" wizardCaption="Sacon Registration" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_registration" wizardAddNbsp="False" PathID="saconsultSorter_sacon_registration" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="13" visible="True" name="Sorter_sacon_DTReg" column="sacon_DTReg" wizardCaption="Sacon DTReg" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_DTReg" wizardAddNbsp="False" PathID="saconsultSorter_sacon_DTReg" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="14" visible="True" name="Sorter_sacon_Name" column="sacon_Name" wizardCaption="Sacon Name" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_Name" wizardAddNbsp="False" PathID="saconsultSorter_sacon_Name" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="15" visible="True" name="Sorter_sacon_DOB" column="sacon_DOB" wizardCaption="Sacon DOB" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_DOB" wizardAddNbsp="False" PathID="saconsultSorter_sacon_DOB" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="16" visible="True" name="Sorter_sacon_TOB" column="sacon_TOB" wizardCaption="Sacon TOB" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_TOB" wizardAddNbsp="False" PathID="saconsultSorter_sacon_TOB" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="17" visible="True" name="Sorter_sacon_POB" column="sacon_POB" wizardCaption="Sacon POB" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_POB" wizardAddNbsp="False" PathID="saconsultSorter_sacon_POB" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="18" visible="True" name="Sorter_sacon_phone" column="sacon_phone" wizardCaption="Sacon Phone" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_phone" wizardAddNbsp="False" PathID="saconsultSorter_sacon_phone" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="19" visible="True" name="Sorter_sacon_email" column="sacon_email" wizardCaption="Sacon Email" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_email" wizardAddNbsp="False" PathID="saconsultSorter_sacon_email" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="20" visible="True" name="Sorter_sacon_address1" column="sacon_address1" wizardCaption="Sacon Address1" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_address1" wizardAddNbsp="False" PathID="saconsultSorter_sacon_address1" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="21" visible="True" name="Sorter_sacon_address2" column="sacon_address2" wizardCaption="Sacon Address2" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_address2" wizardAddNbsp="False" PathID="saconsultSorter_sacon_address2" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="22" visible="True" name="Sorter_sacon_DateOfMarriage" column="sacon_DateOfMarriage" wizardCaption="Sacon Date Of Marriage" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_DateOfMarriage" wizardAddNbsp="False" PathID="saconsultSorter_sacon_DateOfMarriage" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="23" visible="True" name="Sorter_sacon_noChildB" column="sacon_noChildB" wizardCaption="Sacon No Child B" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_noChildB" wizardAddNbsp="False" PathID="saconsultSorter_sacon_noChildB" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="24" visible="True" name="Sorter_sacon_noChildG" column="sacon_noChildG" wizardCaption="Sacon No Child G" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_noChildG" wizardAddNbsp="False" PathID="saconsultSorter_sacon_noChildG" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="25" visible="True" name="Sorter_sacon_education" column="sacon_education" wizardCaption="Sacon Education" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_education" wizardAddNbsp="False" PathID="saconsultSorter_sacon_education" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="26" visible="True" name="Sorter_sacon_profession" column="sacon_profession" wizardCaption="Sacon Profession" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_profession" wizardAddNbsp="False" PathID="saconsultSorter_sacon_profession" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="27" visible="True" name="Sorter_sacon_reference" column="sacon_reference" wizardCaption="Sacon Reference" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_reference" wizardAddNbsp="False" PathID="saconsultSorter_sacon_reference" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="28" visible="True" name="Sorter_sacon_question" column="sacon_question" wizardCaption="Sacon Question" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_question" wizardAddNbsp="False" PathID="saconsultSorter_sacon_question" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="29" visible="True" name="Sorter_sacon_notes" column="sacon_notes" wizardCaption="Sacon Notes" wizardTheme="Maple" wizardSortingType="Extended" wizardControl="sacon_notes" wizardAddNbsp="False" PathID="saconsultSorter_sacon_notes" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Panel id="30" visible="True" name="RowOpenTag" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="31" visible="True" name="RowComponents" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components>
<Link id="33" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" preserveParameters="GET" name="sacon_registration" fieldSource="sacon_registration" wizardCaption="Sacon Registration" wizardIsPassword="False" wizardUseTemplateBlock="False" linkProperties="''" wizardAddNbsp="True" wizardThemeItem="GridA" PathID="saconsultRowComponentssacon_registration" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<LinkParameters>
<LinkParameter id="34" sourceType="DataField" format="yyyy-mm-dd" name="Pkey" source="Pkey"/>
</LinkParameters>
<Attributes/>
<Features/>
</Link>
<Label id="36" fieldSourceType="DBColumn" dataType="Date" html="False" name="sacon_DTReg" fieldSource="sacon_DTReg" wizardCaption="Sacon DTReg" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_DTReg" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="38" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_Name" fieldSource="sacon_Name" wizardCaption="Sacon Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_Name" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="40" fieldSourceType="DBColumn" dataType="Date" html="False" name="sacon_DOB" fieldSource="sacon_DOB" wizardCaption="Sacon DOB" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_DOB" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="42" fieldSourceType="DBColumn" dataType="Date" html="False" name="sacon_TOB" fieldSource="sacon_TOB" wizardCaption="Sacon TOB" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_TOB" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_POB" fieldSource="sacon_POB" wizardCaption="Sacon POB" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_POB" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_phone" fieldSource="sacon_phone" wizardCaption="Sacon Phone" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_phone" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="48" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_email" fieldSource="sacon_email" wizardCaption="Sacon Email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_email" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="50" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_address1" fieldSource="sacon_address1" wizardCaption="Sacon Address1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_address1" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="52" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_address2" fieldSource="sacon_address2" wizardCaption="Sacon Address2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_address2" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="54" fieldSourceType="DBColumn" dataType="Date" html="False" name="sacon_DateOfMarriage" fieldSource="sacon_DateOfMarriage" wizardCaption="Sacon Date Of Marriage" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_DateOfMarriage" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="56" fieldSourceType="DBColumn" dataType="Integer" html="False" name="sacon_noChildB" fieldSource="sacon_noChildB" wizardCaption="Sacon No Child B" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_noChildB" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="58" fieldSourceType="DBColumn" dataType="Integer" html="False" name="sacon_noChildG" fieldSource="sacon_noChildG" wizardCaption="Sacon No Child G" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_noChildG" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="60" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_education" fieldSource="sacon_education" wizardCaption="Sacon Education" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_education" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="62" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_profession" fieldSource="sacon_profession" wizardCaption="Sacon Profession" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_profession" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="64" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_reference" fieldSource="sacon_reference" wizardCaption="Sacon Reference" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_reference" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="66" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_question" fieldSource="sacon_question" wizardCaption="Sacon Question" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_question" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="68" fieldSourceType="DBColumn" dataType="Text" html="False" name="sacon_notes" fieldSource="sacon_notes" wizardCaption="Sacon Notes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="saconsultRowComponentssacon_notes" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="69" visible="True" name="RowCloseTag" wizardTheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Navigator id="70" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="True" wizardTheme="Maple" wizardImagesScheme="Maple" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Navigator>
</Components>
<Events>
<Event name="BeforeShowRow" type="Server">
<Actions>
<Action actionName="Gallery Layout" actionCategory="General" id="9"/>
</Actions>
</Event>
</Events>
<TableParameters/>
<JoinTables>
<JoinTable id="7" tableName="saconsult"/>
</JoinTables>
<JoinLinks/>
<Fields>
<Field id="10" tableName="saconsult" fieldName="Pkey"/>
<Field id="32" tableName="saconsult" fieldName="sacon_registration"/>
<Field id="35" tableName="saconsult" fieldName="sacon_DTReg"/>
<Field id="37" tableName="saconsult" fieldName="sacon_Name"/>
<Field id="39" tableName="saconsult" fieldName="sacon_DOB"/>
<Field id="41" tableName="saconsult" fieldName="sacon_TOB"/>
<Field id="43" tableName="saconsult" fieldName="sacon_POB"/>
<Field id="45" tableName="saconsult" fieldName="sacon_phone"/>
<Field id="47" tableName="saconsult" fieldName="sacon_email"/>
<Field id="49" tableName="saconsult" fieldName="sacon_address1"/>
<Field id="51" tableName="saconsult" fieldName="sacon_address2"/>
<Field id="53" tableName="saconsult" fieldName="sacon_DateOfMarriage"/>
<Field id="55" tableName="saconsult" fieldName="sacon_noChildB"/>
<Field id="57" tableName="saconsult" fieldName="sacon_noChildG"/>
<Field id="59" tableName="saconsult" fieldName="sacon_education"/>
<Field id="61" tableName="saconsult" fieldName="sacon_profession"/>
<Field id="63" tableName="saconsult" fieldName="sacon_reference"/>
<Field id="65" tableName="saconsult" fieldName="sacon_question"/>
<Field id="67" tableName="saconsult" fieldName="sacon_notes"/>
</Fields>
<PKFields/>
<SPParameters/>
<SQLParameters/>
<SecurityGroups/>
<Attributes>
<Attribute id="8" name="numberOfColumns" sourceType="Expression" source="1"/>
</Attributes>
<Features/>
</Grid>
<Record id="71" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="saconsult1" connection="Connection1" dataSource="saconsult" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="True" buttonsType="button" wizardRecordKey="Pkey" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Client" wizardTheme="Maple" wizardThemeApplyTo="Component" wizardFormMethod="post" wizardType="GridRecord" changedCaptionRecord="True" recordDirection="Vertical" templatePageRecord="C:/Program Files/CodeChargeStudio5/Templates/Record/DivRecord.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="saconsult1" wizardThemeVersion="3.0" composition="3">
<Components>
<Button id="73" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardTheme="Maple" wizardCaption="Add" PathID="saconsult1Button_Insert" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="74" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardTheme="Maple" wizardCaption="Submit" PathID="saconsult1Button_Update" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="75" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardTheme="Maple" wizardCaption="Delete" PathID="saconsult1Button_Delete" wizardThemeVersion="3.0">
<Components/>
<Events>
<Event name="OnClick" type="Client">
<Actions>
<Action actionName="Confirmation Message" actionCategory="General" id="76" message="Delete record?"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Button>
<Button id="77" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardTheme="Maple" wizardCaption="Cancel" PathID="saconsult1Button_Cancel" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<TextBox id="79" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="sacon_registration" fieldSource="sacon_registration" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Registration" caption="Sacon Registration" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="saconsult1sacon_registration" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="80" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="sacon_DTReg" fieldSource="sacon_DTReg" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Sacon DTReg" caption="Sacon DTReg" required="False" format="ShortDate" unique="False" wizardSize="8" wizardMaxLength="100" PathID="saconsult1sacon_DTReg" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features>
<InlineDatePicker id="81" enabled="Yes" name="InlineDatePicker1" category="YahooUI">
<Components/>
<Events/>
<ControlPoints/>
<Features/>
</InlineDatePicker>
</Features>
</TextBox>
<TextBox id="82" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_Name" fieldSource="sacon_Name" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Name" caption="Sacon Name" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_Name" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="83" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="sacon_DOB" fieldSource="sacon_DOB" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Sacon DOB" caption="Sacon DOB" required="True" format="ShortDate" unique="False" wizardSize="8" wizardMaxLength="100" PathID="saconsult1sacon_DOB" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features>
<InlineDatePicker id="84" enabled="Yes" name="InlineDatePicker2" category="YahooUI">
<Components/>
<Events/>
<ControlPoints/>
<Features/>
</InlineDatePicker>
</Features>
</TextBox>
<TextBox id="85" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="sacon_TOB" fieldSource="sacon_TOB" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Sacon TOB" caption="Sacon TOB" required="True" format="ShortDate" unique="False" wizardSize="8" wizardMaxLength="100" PathID="saconsult1sacon_TOB" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features>
<InlineDatePicker id="86" enabled="Yes" name="InlineDatePicker3" category="YahooUI">
<Components/>
<Events/>
<ControlPoints/>
<Features/>
</InlineDatePicker>
</Features>
</TextBox>
<TextBox id="87" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_POB" fieldSource="sacon_POB" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon POB" caption="Sacon POB" required="True" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_POB" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="88" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_phone" fieldSource="sacon_phone" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Phone" caption="Sacon Phone" required="True" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_phone" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="89" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_email" fieldSource="sacon_email" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Email" caption="Sacon Email" required="True" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_email" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="90" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_address1" fieldSource="sacon_address1" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Address1" caption="Sacon Address1" required="True" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_address1" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="91" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_address2" fieldSource="sacon_address2" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Address2" caption="Sacon Address2" required="True" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_address2" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="92" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="sacon_DateOfMarriage" fieldSource="sacon_DateOfMarriage" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Sacon Date Of Marriage" caption="Sacon Date Of Marriage" required="True" format="ShortDate" unique="False" wizardSize="8" wizardMaxLength="100" PathID="saconsult1sacon_DateOfMarriage" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features>
<InlineDatePicker id="93" enabled="Yes" name="InlineDatePicker4" category="YahooUI">
<Components/>
<Events/>
<ControlPoints/>
<Features/>
</InlineDatePicker>
</Features>
</TextBox>
<TextBox id="94" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="sacon_noChildB" fieldSource="sacon_noChildB" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon No Child B" caption="Sacon No Child B" required="True" unique="False" wizardSize="10" wizardMaxLength="10" PathID="saconsult1sacon_noChildB" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="95" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="sacon_noChildG" fieldSource="sacon_noChildG" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon No Child G" caption="Sacon No Child G" required="True" unique="False" wizardSize="10" wizardMaxLength="10" PathID="saconsult1sacon_noChildG" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="96" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_education" fieldSource="sacon_education" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Education" caption="Sacon Education" required="True" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_education" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="97" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_profession" fieldSource="sacon_profession" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Profession" caption="Sacon Profession" required="True" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_profession" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="98" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_reference" fieldSource="sacon_reference" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Reference" caption="Sacon Reference" required="True" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsult1sacon_reference" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextArea id="99" visible="Yes" fieldSourceType="DBColumn" dataType="Memo" name="sacon_laganChart" fieldSource="sacon_laganChart" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Lagan Chart" caption="Sacon Lagan Chart" required="True" unique="False" wizardSize="50" wizardRows="3" PathID="saconsult1sacon_laganChart" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextArea>
<TextBox id="100" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_question" fieldSource="sacon_question" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Question" caption="Sacon Question" required="True" unique="False" wizardSize="50" wizardMaxLength="250" PathID="saconsult1sacon_question" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="101" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_notes" fieldSource="sacon_notes" wizardTheme="Maple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Notes" caption="Sacon Notes" required="True" unique="False" wizardSize="50" wizardMaxLength="250" PathID="saconsult1sacon_notes" wizardThemeVersion="3.0">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
</Components>
<Events/>
<TableParameters>
<TableParameter id="78" conditionType="Parameter" useIsNull="False" field="Pkey" parameterSource="Pkey" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
</TableParameters>
<SPParameters/>
<SQLParameters/>
<JoinTables>
<JoinTable id="72" tableName="saconsult"/>
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
		<CodeFile id="Events" language="PHPTemplates" name="soniacon1_events.php" forShow="False" comment="//" codePage="windows-1252"/>
<CodeFile id="Code" language="PHPTemplates" name="soniacon1.php" forShow="True" url="soniacon1.php" comment="//" codePage="windows-1252"/>
</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
