<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" webService="False" name="login" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="39" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="40" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Record id="34" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Login" wizardCaption="Login" wizardOrientation="Vertical" wizardFormMethod="post" wizardRememberMe="False" wizardFocusOnLogin="False" buttonsType="button" wizardTypeComponent="Authentication" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject6/Templates/Authentication/SimpleVertical.ccp|userTemplate" changedCaptionLogin="False" PathID="ContentLogin" returnPage="Default.ccp">
					<Components>
						<Button id="35" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoLogin" wizardCaption="Login" PathID="ContentLoginButton_DoLogin">
							<Components/>
							<Events>
								<Event name="OnClick" type="Server">
									<Actions>
										<Action actionName="Login" actionCategory="Security" id="36" redirectToPreviousPage="True" loginParameter="login" passwordParameter="password" autoLoginParameter="autoLogin" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="37" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="login" fieldSource="user_login" required="True" wizardCaption="Login" wizardSize="20" wizardMaxLength="100" wizardIsPassword="False" PathID="ContentLoginlogin">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="password" fieldSource="user_password" required="True" wizardCaption="Password" wizardSize="20" wizardMaxLength="100" wizardIsPassword="True" PathID="ContentLoginpassword">
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
<Panel id="41" visible="True" name="Menu" contentPlaceholder="Menu">
<Components>
<IncludePage id="24" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="42" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components>
<IncludePage id="33" name="AdminMenu" PathID="Sidebar1AdminMenu" page="AdminMenu.ccp">
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
		<CodeFile id="Events" language="PHPTemplates" name="Login_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="Login.php" comment="//" forShow="True" url="Login.php"/>
		<CodeFile id="Events" language="ASPTemplates" name="Login_events.asp" comment="'" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="Login.asp" comment="'" forShow="True" url="Login.asp"/>
		<CodeFile id="3" language="C#" name="Login.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Login.aspx"/>
		<CodeFile id="1" language="C#" name="Login.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="LoginDataProvider.cs" path="\components" comment="//" forShow="False"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events>
		<Event name="OnInitializeView">
			<Actions>
				<Action actionName="Logout" actionCategory="Security" id="8" parameterName="Logout" pageRedirects="True"/>
			</Actions>
		</Event>
	</Events>
	<CachingParameters/>
	<Features/>
	<Attributes/>
</Page>
