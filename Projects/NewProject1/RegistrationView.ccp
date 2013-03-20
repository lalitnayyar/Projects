<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" webService="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="60" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="61" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="38" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="users" connection="internet" dataSource="users, countries, states, genders" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="user_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Users, Countries, States, Genders " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject8/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentusers" returnPage="Default.ccp">
					<Components>
						<Button id="39" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ContentusersButton_Cancel">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Label id="40" fieldSourceType="DBColumn" dataType="Text" html="False" name="user_login" fieldSource="user_login" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="User Login" wizardAddNbsp="True" PathID="Contentusersuser_login">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="41" fieldSourceType="DBColumn" dataType="Text" html="False" name="first_name" fieldSource="first_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="First Name" wizardAddNbsp="True" PathID="Contentusersfirst_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="42" fieldSourceType="DBColumn" dataType="Text" html="False" name="last_name" fieldSource="last_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Last Name" wizardAddNbsp="True" PathID="Contentuserslast_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Link id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" preserveParameters="None" name="email" fieldSource="email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Email" hrefSource="email" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;email&quot;,&quot;hrefSource&quot;:&quot;&quot;,&quot;hrefSourceDB&quot;:&quot;email&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:0,&quot;objectType&quot;:&quot;linkParameters&quot;}}" PathID="Contentusersemail" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" name="phone_home" fieldSource="phone_home" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Phone Home" wizardAddNbsp="True" PathID="Contentusersphone_home">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="45" fieldSourceType="DBColumn" dataType="Text" html="False" name="phone_work" fieldSource="phone_work" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Phone Work" wizardAddNbsp="True" PathID="Contentusersphone_work">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" name="city" fieldSource="city" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="City" wizardAddNbsp="True" PathID="Contentuserscity">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="False" name="country_name" fieldSource="country_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Country Name" wizardAddNbsp="True" PathID="Contentuserscountry_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="48" fieldSourceType="DBColumn" dataType="Text" html="False" name="state_name" fieldSource="state_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="State Name" wizardAddNbsp="True" PathID="Contentusersstate_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="gender_name" fieldSource="gender_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Gender Name" wizardAddNbsp="True" PathID="Contentusersgender_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="50" fieldSourceType="DBColumn" dataType="Memo" html="False" name="notes" fieldSource="notes" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Notes" wizardAddNbsp="True" PathID="Contentusersnotes">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="51" conditionType="Parameter" useIsNull="False" dataType="Integer" field="user_id" logicOperator="And" orderNumber="1" parameterSource="user_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="52" posHeight="588" posLeft="10" posTop="10" posWidth="133" tableName="users"/>
						<JoinTable id="53" posHeight="88" posLeft="164" posTop="10" posWidth="95" tableName="countries"/>
						<JoinTable id="54" posHeight="88" posLeft="280" posTop="10" posWidth="95" tableName="states"/>
						<JoinTable id="55" posHeight="88" posLeft="396" posTop="10" posWidth="95" tableName="genders"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="56" fieldLeft="users.country_id" fieldRight="countries.country_id" joinType="left" tableLeft="users" tableRight="countries"/>
						<JoinTable2 id="57" fieldLeft="users.state_id" fieldRight="states.state_id" joinType="left" tableLeft="users" tableRight="states"/>
						<JoinTable2 id="58" fieldLeft="users.gender_id" fieldRight="genders.gender_id" joinType="left" tableLeft="users" tableRight="genders"/>
					</JoinLinks>
					<Fields>
						<Field id="59" fieldName="*"/>
					</Fields>
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
		<Panel id="62" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="34" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="63" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
<IncludePage id="64" name="Search" PathID="Sidebar1Search" page="Search.ccp">
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
		<CodeFile id="Code" language="ASPTemplates" name="RegistrationView.asp" comment="'" forShow="True" url="RegistrationView.asp"/>
		<CodeFile id="3" language="C#" name="RegistrationView.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="RegistrationView.aspx"/>
		<CodeFile id="1" language="C#" name="RegistrationView.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="RegistrationViewDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="RegistrationView.php" forShow="True" url="RegistrationView.php" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
