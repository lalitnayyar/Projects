<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" useDesign="True" needGeneration="0">
	<Components>
		<Record id="6" sourceType="Table" urlType="Absolute" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="saconsult" connection="Connection1" dataSource="saconsult" errorSummator="Error" allowCancel="False" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="Pkey" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Contact Form" wizardTheme="Simple" wizardThemeApplyTo="Component" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="True" recordDirection="Vertical" templatePageRecord="C:/Users/Lalit/Documents/CodeChargeStudio5/Projects/NewProject5/Templates/Record/Horizontal.ccp|userTemplate" recordAddTemplatePanel="False" PathID="saconsult" wizardThemeVersion="3.0">
			<Components>
				<TextBox id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="sacon_DOB" fieldSource="sacon_DOB" wizardTheme="Simple" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Sacon DOB" caption="Sacon DOB" required="False" format="yyyy-mm-dd" unique="False" wizardSize="8" wizardMaxLength="100" PathID="saconsultsacon_DOB" wizardThemeVersion="3.0" defaultValue="CurrentDate" DBFormat="yyyy-mm-dd">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<InlineDatePicker id="14" enabled="Yes" name="InlineDatePicker1" category="YahooUI">
							<Components/>
							<Events/>
							<ControlPoints/>
							<Features/>
						</InlineDatePicker>
					</Features>
				</TextBox>
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="sacon_TOB" fieldSource="sacon_TOB" wizardTheme="Simple" wizardIsPassword="False" wizardUseTemplateBlock="False" features="(assigned)" wizardCaption="Sacon TOB" caption="Sacon TOB" required="False" format="HH:nn:ss" unique="False" wizardSize="8" wizardMaxLength="100" PathID="saconsultsacon_TOB" wizardThemeVersion="3.0" defaultValue="CurrentTime" DBFormat="HH:nn:ss">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<InlineDatePicker id="18" enabled="Yes" name="InlineDatePicker2" category="YahooUI">
							<Components/>
							<Events/>
							<ControlPoints/>
							<Features/>
						</InlineDatePicker>
					</Features>
				</TextBox>
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_POB" fieldSource="sacon_POB" wizardTheme="Simple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon POB" caption="Sacon POB" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsultsacon_POB" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_email" fieldSource="sacon_email" wizardTheme="Simple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Email" caption="Sacon Email" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="saconsultsacon_email" wizardThemeVersion="3.0" inputMask="^[\w\.-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="19" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_question" fieldSource="sacon_question" wizardTheme="Simple" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Sacon Question" caption="Sacon Question" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="saconsultsacon_question" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sacon_Name" caption="sacon_Name" fieldSource="sacon_Name" required="True" unique="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="9" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" PathID="saconsultButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="8" urlType="Absolute" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" returnPage="thankyou.ccp" PathID="saconsultButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="10" conditionType="Parameter" useIsNull="False" field="Pkey" parameterSource="Pkey" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="7" tableName="saconsult"/>
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
		<CodeFile id="Code" language="PHPTemplates" name="contactForm.php" forShow="True" url="contactForm.php" comment="//" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
