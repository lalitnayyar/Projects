<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="EditArticle" SSLAccess="False" urlType="Relative" accessDeniedPage="Login.ccp" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="Innovation" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="48" visible="True" name="Head" contentPlaceholder="Head">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="49" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<Record id="36" sourceType="Table" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="None" debugMode="False" returnValueType="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" returnValueTypeForDelete="Number" connection="internet" name="articles" dataSource="articles" errorSummator="Error" returnPage="AdminArticles.ccp" urlType="Relative" old_temp_id="2">
					<Components>
						<TextArea id="37" fieldSourceType="DBColumn" dataType="Text" html="False" editable="True" hasErrorCollection="True" name="article_title" fieldSource="article_title" primaryKey="False" required="True" caption="Title" visible="Yes" old_temp_id="8">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
						<ListBox id="38" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" editable="True" hasErrorCollection="True" returnValueType="Number" name="category_id" fieldSource="category_id" primaryKey="False" connection="internet" dataSource="event_categories" boundColumn="category_id" textColumn="category_name" orderBy="category_name" required="True" caption="Category" visible="Yes" old_temp_id="9">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<PKFields/>
							<Attributes/>
							<Features/>
						</ListBox>
						<TextArea id="39" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="True" hasErrorCollection="True" name="article_desc" fieldSource="article_desc" primaryKey="False" required="True" caption="Description" visible="Yes" old_temp_id="10">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextArea>
						<TextBox id="40" fieldSourceType="DBColumn" dataType="Date" html="False" editable="True" hasErrorCollection="True" name="date_expire" fieldSource="date_end" primaryKey="False" format="mm/dd/yyyy" caption="Expiration date" visible="Dynamic" old_temp_id="11" PathID="Contentarticlesdate_expire" features="(assigned)">
							<Components/>
							<Events/>
							<Attributes/>
							<Features>
								<InlineDatePicker id="41" enabled="True" name="InlineDatePicker2" category="YahooUI" featureNameChanged="No">
									<Components/>
									<Events/>
									<ControlPoints/>
									<Features/>
								</InlineDatePicker>
							</Features>
						</TextBox>
						<Button id="42" name="portal_Insert" operation="Insert" urlType="Relative" enableValidation="True" old_temp_id="5">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="43" name="portal_Update" operation="Update" urlType="Relative" enableValidation="True" old_temp_id="6">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="44" name="portal_Delete" operation="Delete" urlType="Relative" enableValidation="False" old_temp_id="29">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<Button id="45" name="portal_Cancel" operation="Cancel" enableValidation="False" urlType="Relative" old_temp_id="31">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="46" field="article_id" parameterSource="article_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" conditionType="Parameter" useIsNull="False" old_temp_id="7"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="47" tableName="articles" posWidth="100" posHeight="100" posLeft="0" posTop="0" old_temp_id="16">
							<JoinConditions/>
						</JoinTable>
					</JoinTables>
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
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</Record>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="50" visible="True" name="Menu" contentPlaceholder="Menu">
<Components>
<IncludePage id="26" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
</Components>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="51" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
<Components>
<IncludePage id="32" name="AdminMenu" PathID="Sidebar1AdminMenu" page="AdminMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="EditArticle.php" comment="//" forShow="True" url="EditArticle.php"/>
		<CodeFile id="3" language="C#" name="EditArticle.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="EditArticle.aspx"/>
		<CodeFile id="1" language="C#" name="EditArticle.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="EditArticleDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="EditArticle.asp" forShow="True" url="EditArticle.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="15" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
