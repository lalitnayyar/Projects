<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" webService="False" name="Login" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" scriptingSupport="Automatic" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="32" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="33" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Record id="27" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Login" wizardCaption="Login" wizardOrientation="Vertical" wizardFormMethod="post" wizardRememberMe="False" wizardFocusOnLogin="False" buttonsType="button" wizardTypeComponent="Authentication" recordDirection="Custom" templatePageRecord="Templates/Authentication/SimpleVertical.ccp|userTemplate" changedCaptionLogin="False" PathID="ContentLogin" returnPage="EmployeeList.ccp">
					<Components>
						<Button id="28" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoLogin" wizardCaption="Login" PathID="ContentLoginButton_DoLogin">
							<Components/>
							<Events>
								<Event name="OnClick" type="Server">
									<Actions>
										<Action actionName="Login" actionCategory="Security" id="29" redirectToPreviousPage="True" loginParameter="login" passwordParameter="password" autoLoginParameter="autoLogin" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="30" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="login" fieldSource="emp_login" required="True" wizardCaption="Login" wizardSize="20" wizardMaxLength="100" wizardIsPassword="False" PathID="ContentLoginlogin">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="password" fieldSource="emp_password" required="True" wizardCaption="Password" wizardSize="20" wizardMaxLength="100" wizardIsPassword="True" PathID="ContentLoginpassword">
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
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="34" visible="True" name="Menu" contentPlaceholder="Menu">
<Components>
<IncludePage id="17" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="35" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components>
<IncludePage id="26" name="Administration" PathID="Sidebar1Administration" page="Administration.ccp">
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
		<CodeFile id="codeRecord1" language="CFML" name="Login_Login.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="False"/>
		<CodeFile id="codePage" language="CFML" name="Login.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="Login.cfm"/>
		<CodeFile id="Events" language="PHPTemplates" name="Login_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="Login.php" comment="//" forShow="True" url="Login.php"/>
		<CodeFile id="Events" language="ASPTemplates" name="Login_events.asp" comment="'" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="Login.asp" comment="'" forShow="True" url="Login.asp"/>
		<CodeFile id="3" language="C#" name="Login.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Login.aspx"/>
		<CodeFile id="1" language="C#" name="Login.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="LoginDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="1" language="C#InMotion" name="Login.aspx" forShow="True" url="Login.aspx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="LoginEvents.aspx.cs" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="8" name="login" form="Login"/>
			</Actions>
		</Event>
		<Event name="AfterInitialize" type="Server">
			<Actions>
				<Action actionName="Logout" actionCategory="Security" id="9" pageRedirects="True"/>
			</Actions>
		</Event>
	</Events>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
