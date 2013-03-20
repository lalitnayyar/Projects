<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" webService="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="27" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="28" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="22" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Login" wizardCaption="Login" wizardOrientation="Vertical" wizardFormMethod="post" wizardRememberMe="False" wizardFocusOnLogin="False" buttonsType="button" wizardTypeComponent="Authentication" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject8/Templates/Authentication/SimpleVertical.ccp|userTemplate" changedCaptionLogin="False" PathID="ContentLogin" returnPage="Default.ccp">
					<Components>
						<Button id="23" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoLogin" wizardCaption="Login" PathID="ContentLoginButton_DoLogin">
							<Components/>
							<Events>
								<Event name="OnClick" type="Server">
									<Actions>
										<Action actionName="Login" actionCategory="Security" id="24" redirectToPreviousPage="True" loginParameter="login" passwordParameter="password" autoLoginParameter="autoLogin" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="login" fieldSource="user_login" required="True" wizardCaption="Login" wizardSize="20" wizardMaxLength="100" wizardIsPassword="False" PathID="ContentLoginlogin">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="password" fieldSource="user_password" required="True" wizardCaption="Password" wizardSize="20" wizardMaxLength="100" wizardIsPassword="True" PathID="ContentLoginpassword">
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
		<Panel id="29" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="18" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="30" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
<IncludePage id="31" name="Search" PathID="Sidebar1Search" page="Search.ccp">
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
		<CodeFile id="3" language="C#" name="Login.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Login.aspx"/>
		<CodeFile id="1" language="C#" name="Login.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="LoginDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Events" language="ASPTemplates" name="Login_events.asp" forShow="False" comment="'"/><CodeFile id="Code" language="ASPTemplates" name="Login.asp" forShow="True" url="Login.asp" comment="'"/>
		<CodeFile id="Events" language="PHPTemplates" name="Login_events.php" forShow="False" comment="//"/><CodeFile id="Code" language="PHPTemplates" name="Login.php" forShow="True" url="Login.php" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="8" name="login" form="Login"/>
			</Actions>
		</Event>
		<Event name="OnInitializeView" type="Server">
			<Actions>
				<Action actionName="Logout" actionCategory="Security" id="9" parameterName="Logout" pageRedirects="True"/>
			</Actions>
		</Event>
	</Events>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
