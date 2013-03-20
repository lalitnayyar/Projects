<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" name="MemberInfo" webService="False" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="75" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="76" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="61" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="users_countries_states" connection="internet" dataSource="users, countries, states" errorSummator="Error" allowCancel="False" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="user_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Users, Countries, States " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentusers_countries_states">
					<Components>
						<Label id="62" fieldSourceType="DBColumn" dataType="Text" html="False" name="user_login" fieldSource="user_login" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="User Login" wizardAddNbsp="True" PathID="Contentusers_countries_statesuser_login">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="63" fieldSourceType="DBColumn" dataType="Text" html="False" name="first_name" fieldSource="first_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="First Name" wizardAddNbsp="True" PathID="Contentusers_countries_statesfirst_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="64" fieldSourceType="DBColumn" dataType="Text" html="False" name="last_name" fieldSource="last_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Last Name" wizardAddNbsp="True" PathID="Contentusers_countries_stateslast_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Link id="65" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" name="email" fieldSource="email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Email" hrefSource="email" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;email&quot;,&quot;hrefSource&quot;:&quot;&quot;,&quot;hrefSourceDB&quot;:&quot;email&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:0,&quot;objectType&quot;:&quot;linkParameters&quot;}}" PathID="Contentusers_countries_statesemail" preserveParameters="None" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="66" fieldSourceType="DBColumn" dataType="Text" html="False" name="city" fieldSource="city" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="City" wizardAddNbsp="True" PathID="Contentusers_countries_statescity">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="67" fieldSourceType="DBColumn" dataType="Text" html="False" name="state_name" fieldSource="state_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="State Name" wizardAddNbsp="True" PathID="Contentusers_countries_statesstate_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="68" fieldSourceType="DBColumn" dataType="Text" html="False" name="country_name" fieldSource="country_name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Country Name" wizardAddNbsp="True" PathID="Contentusers_countries_statescountry_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="69" fieldSourceType="DBColumn" dataType="Text" html="False" name="phone_day" fieldSource="phone_day" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Phone Day" wizardAddNbsp="True" PathID="Contentusers_countries_statesphone_day">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="70" fieldSourceType="DBColumn" dataType="Text" html="False" name="phone_evening" fieldSource="phone_evening" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="Phone Evening" wizardAddNbsp="True" PathID="Contentusers_countries_statesphone_evening">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="71" conditionType="Parameter" useIsNull="False" field="user_id" parameterSource="user_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="72" tableName="users"/>
						<JoinTable id="73" tableName="countries"/>
						<JoinTable id="74" tableName="states"/>
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
			<Features/>
		</Panel>
		<Panel id="77" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="57" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="78" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="MemberInfo.php" forShow="True" url="MemberInfo.php" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
