<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" webService="False" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="76" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="77" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="52" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="users" connection="internet" dataSource="countries, users" orderBy="user_login" pageSizeLimit="100" pageSize="False" wizardCaption="List of Countries, Users " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject8/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="58" visible="True" name="Sorter_user_login" column="user_login" wizardCaption="Login" wizardSortingType="SimpleDir" wizardControl="user_login" wizardAddNbsp="False" PathID="ContentusersSorter_user_login" oldHTML="&lt;!-- BEGIN Sorter Sorter_user_login --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentusersSorter_user_login&quot;&gt;Login&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_user_login --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="59" visible="True" name="Sorter_first_name" column="first_name" wizardCaption="First Name" wizardSortingType="SimpleDir" wizardControl="first_name" wizardAddNbsp="False" PathID="ContentusersSorter_first_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_first_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentusersSorter_first_name&quot;&gt;First Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_first_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="60" visible="True" name="Sorter_last_name" column="last_name" wizardCaption="Last Name" wizardSortingType="SimpleDir" wizardControl="last_name" wizardAddNbsp="False" PathID="ContentusersSorter_last_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_last_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentusersSorter_last_name&quot;&gt;Last Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_last_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="61" visible="True" name="Sorter_country_name" column="country_name" wizardCaption="Name" wizardSortingType="SimpleDir" wizardControl="country_name" wizardAddNbsp="False" PathID="ContentusersSorter_country_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_country_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentusersSorter_country_name&quot;&gt;Country Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_country_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="62" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="None" name="user_login" fieldSource="user_login" wizardCaption="Login" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="RegistrationView.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;user_login&quot;,&quot;hrefSource&quot;:&quot;RegistrationView.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;user_id&quot;,&quot;parameterName&quot;:&quot;user_id&quot;}}}" wizardAddNbsp="True" PathID="Contentusersuser_login" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="63" sourceType="DataField" format="yyyy-mm-dd" name="user_id" source="user_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="64" fieldSourceType="DBColumn" dataType="Text" html="False" name="first_name" fieldSource="first_name" wizardCaption="First Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentusersfirst_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="65" fieldSourceType="DBColumn" dataType="Text" html="False" name="last_name" fieldSource="last_name" wizardCaption="Last Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentuserslast_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="66" fieldSourceType="DBColumn" dataType="Text" html="False" name="country_name" fieldSource="country_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentuserscountry_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="67" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
      &lt;!-- BEGIN First_On --&gt;&lt;a href=&quot;{First_URL}&quot;&gt;&lt;img src=&quot;./Styles/None/Images/First.gif&quot; alt=&quot;{First_URL}&quot;&gt;&lt;/a&gt; &lt;!-- END First_On --&gt;
      &lt;!-- BEGIN First_Off --&gt;&lt;img src=&quot;./Styles/None/Images/FirstOff.gif&quot; alt=&quot;{First_URL}&quot;&gt;&lt;!-- END First_Off --&gt;
      &lt;!-- BEGIN Prev_On --&gt;&lt;a href=&quot;{Prev_URL}&quot;&gt;&lt;img src=&quot;./Styles/None/Images/Prev.gif&quot; alt=&quot;{Prev_URL}&quot;&gt;&lt;/a&gt; &lt;!-- END Prev_On --&gt;
      &lt;!-- BEGIN Prev_Off --&gt;&lt;img src=&quot;./Styles/None/Images/PrevOff.gif&quot; alt=&quot;{Prev_URL}&quot;&gt;&lt;!-- END Prev_Off --&gt;&amp;nbsp; 
      &lt;!-- BEGIN Pages --&gt;
      &lt;!-- BEGIN Page_On --&gt;&lt;a href=&quot;{Page_URL}&quot;&gt;{Page_Number}&lt;/a&gt;&amp;nbsp;&lt;!-- END Page_On --&gt;
      &lt;!-- BEGIN Page_Off --&gt;{Page_Number}&amp;nbsp;&lt;!-- END Page_Off --&gt;&lt;!-- END Pages --&gt;of&amp;nbsp;{Total_Pages}&amp;nbsp; 
      &lt;!-- BEGIN Next_On --&gt;&lt;a href=&quot;{Next_URL}&quot;&gt;&lt;img src=&quot;./Styles/None/Images/Next.gif&quot; alt=&quot;{Next_URL}&quot;&gt;&lt;/a&gt; &lt;!-- END Next_On --&gt;
      &lt;!-- BEGIN Next_Off --&gt;&lt;img src=&quot;./Styles/None/Images/NextOff.gif&quot; alt=&quot;{Next_URL}&quot;&gt;&lt;!-- END Next_Off --&gt;
      &lt;!-- BEGIN Last_On --&gt;&lt;a href=&quot;{Last_URL}&quot;&gt;&lt;img src=&quot;./Styles/None/Images/Last.gif&quot; alt=&quot;{Last_URL}&quot;&gt;&lt;/a&gt; &lt;!-- END Last_On --&gt;
      &lt;!-- BEGIN Last_Off --&gt;&lt;img src=&quot;./Styles/None/Images/LastOff.gif&quot; alt=&quot;{Last_URL}&quot;&gt;&lt;!-- END Last_Off --&gt;&lt;/span&gt;&lt;!-- END Navigator Navigator --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="84" conditionType="Parameter" useIsNull="False" dataType="Text" field="user_login" leftBrackets="1" logicOperator="Or" orderNumber="1" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
						<TableParameter id="85" conditionType="Parameter" useIsNull="False" dataType="Text" field="first_name" logicOperator="Or" orderNumber="2" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
						<TableParameter id="86" conditionType="Parameter" useIsNull="False" dataType="Text" field="last_name" logicOperator="Or" orderNumber="3" parameterSource="s_keyword" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="81" posHeight="88" posLeft="10" posTop="10" posWidth="95" tableName="countries"/>
						<JoinTable id="82" posHeight="180" posLeft="126" posTop="10" posWidth="133" tableName="users"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="83" conditionType="Equal" fieldLeft="users.country_id" fieldRight="countries.country_id" joinType="inner" tableLeft="users" tableRight="countries"/>
					</JoinLinks>
					<Fields>
						<Field id="87" fieldName="*"/>
					</Fields>
					<PKFields/>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="78" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="45" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="79" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="80" name="Search" PathID="Sidebar1Search" page="Search.ccp">
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
		<CodeFile id="3" language="C#" name="Default.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Default.aspx"/>
		<CodeFile id="1" language="C#" name="Default.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="DefaultDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="Default.php" comment="//" forShow="True" url="Default.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="Default.asp" forShow="True" url="Default.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events>
<Event name="AfterInitialize" type="Server">
<Actions>
<Action actionName="Logout" actionCategory="Security" id="88" pageRedirects="True" parameterName="Logout" returnPage="Default.ccp"/>
</Actions>
</Event>
</Events>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
