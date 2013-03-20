<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="36" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="37" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="31" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Login" wizardCaption="Login" wizardOrientation="Vertical" wizardFormMethod="post" wizardRememberMe="False" wizardFocusOnLogin="False" buttonsType="button" wizardTypeComponent="Authentication" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Authentication/SimpleVertical.ccp|userTemplate" wizardThemeApplyTo="Page" changedCaptionLogin="False" PathID="ContentLogin">
					<Components>
						<Button id="32" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoLogin" wizardCaption="Login" PathID="ContentLoginButton_DoLogin">
							<Components/>
							<Events>
								<Event name="OnClick" type="Server">
									<Actions>
										<Action actionName="Login" actionCategory="Security" id="33" redirectToPreviousPage="True" loginParameter="login" passwordParameter="password" autoLoginParameter="autoLogin" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="login" fieldSource="user_login" required="True" wizardCaption="Login" wizardSize="20" wizardMaxLength="100" wizardIsPassword="False" PathID="ContentLoginlogin">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="35" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="password" fieldSource="user_password" required="True" wizardCaption="Password" wizardSize="20" wizardMaxLength="100" wizardIsPassword="True" PathID="ContentLoginpassword">
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
		<Panel id="38" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="40" name="Header" PathID="MenuHeader" page="Header.ccp">
<Components/>
<Events/>
<Features/>
</IncludePage>
</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="39" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="41" name="Categories" PathID="SidebarCategories" page="Categories.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
<IncludePage id="43" name="Search" PathID="SidebarSearch" page="Search.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
<IncludePage id="45" name="Recommended" PathID="SidebarRecommended" page="Recommended.ccp">
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
		<CodeFile id="Events" language="PHPTemplates" name="Login_events.php" forShow="False" comment="//"/>
		<CodeFile id="Code" language="PHPTemplates" name="Login.php" forShow="True" url="Login.php" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events>
		<Event name="AfterInitialize" type="Server">
			<Actions>
				<Action actionName="Logout" actionCategory="Security" id="10" parameterName="Logout" returnPage="Login.ccp" pageRedirects="True"/>
			</Actions>
		</Event>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="30" form="Login" name="login"/>
			</Actions>
		</Event>
	</Events>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
