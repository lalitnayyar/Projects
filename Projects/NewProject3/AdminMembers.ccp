<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" webService="False" name="AdminMembers" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="124" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="125" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Link id="89" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="True" preserveParameters="None" editable="False" name="Link2" hrefSource="EditMembers.ccp" linkType="Relative" urlType="Relative" visible="Yes" old_temp_id="23">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Grid id="108" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="1" name="members" connection="internet" dataSource="user_groups, users" orderBy="user_login" pageSizeLimit="100" pageSize="False" wizardCaption="List of User Groups, Users " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="109" visible="True" name="Sorter_first_name" column="first_name" wizardCaption="First Name" wizardSortingType="SimpleDir" wizardControl="first_name" wizardAddNbsp="False" PathID="ContentmembersSorter_first_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_first_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentmembersSorter_first_name&quot;&gt;First Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_first_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="110" visible="True" name="Sorter_last_name" column="last_name" wizardCaption="Last Name" wizardSortingType="SimpleDir" wizardControl="last_name" wizardAddNbsp="False" PathID="ContentmembersSorter_last_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_last_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentmembersSorter_last_name&quot;&gt;Last Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_last_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="111" visible="True" name="Sorter_user_login" column="user_login" wizardCaption="Login" wizardSortingType="SimpleDir" wizardControl="user_login" wizardAddNbsp="False" PathID="ContentmembersSorter_user_login" oldHTML="&lt;!-- BEGIN Sorter Sorter_user_login --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentmembersSorter_user_login&quot;&gt;Login&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_user_login --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="112" visible="True" name="Sorter_group_name" column="group_name" wizardCaption="Group Name" wizardSortingType="SimpleDir" wizardControl="group_name" wizardAddNbsp="False" PathID="ContentmembersSorter_group_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_group_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContentmembersSorter_group_name&quot;&gt;Group Name&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_group_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="113" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" preserveParameters="GET" name="user_id" fieldSource="user_id" wizardCaption="Id" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="EditMembers.ccp" linkProperties="{&quot;textSource&quot;:&quot;Edit&quot;,&quot;textSourceDB&quot;:&quot;&quot;,&quot;hrefSource&quot;:&quot;EditMembers.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;user_id&quot;,&quot;parameterName&quot;:&quot;user_id&quot;}}}" wizardAddNbsp="True" PathID="Contentmembersuser_id" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="114" sourceType="DataField" format="yyyy-mm-dd" name="user_id" source="user_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="115" fieldSourceType="DBColumn" dataType="Text" html="False" name="first_name" fieldSource="first_name" wizardCaption="First Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentmembersfirst_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="116" fieldSourceType="DBColumn" dataType="Text" html="False" name="last_name" fieldSource="last_name" wizardCaption="Last Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentmemberslast_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="117" fieldSourceType="DBColumn" dataType="Text" html="False" name="user_login" fieldSource="user_login" wizardCaption="Login" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentmembersuser_login">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="118" fieldSourceType="DBColumn" dataType="Text" html="False" name="group_name" fieldSource="group_name" wizardCaption="Group Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentmembersgroup_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="119" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
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
						<TableParameter id="120" conditionType="Parameter" useIsNull="False" field="user_login" parameterSource="s_user_login" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="121" posHeight="88" posLeft="10" posTop="10" posWidth="95" schemaName="undefined" tableName="user_groups"/>
						<JoinTable id="122" posHeight="180" posLeft="126" posTop="10" posWidth="133" schemaName="undefined" tableName="users"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="123" fieldLeft="users.group_id" fieldRight="user_groups.group_id" joinType="left" tableLeft="users" tableRight="user_groups"/>
					</JoinLinks>
					<Fields/>
					<PKFields/>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
				<Record id="104" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="membersSearch" fictitiousConnection="internet" fictitiousDataSource="users" wizardCaption="Search  " changedCaptionSearch="False" wizardOrientation="Custom" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="False" gridSearchSortField="False" wizardUseInterVariables="False" templatePageSearch="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Search/SimpleSearch.ccp|userTemplate" wizardSpecifyResultsForm="True" wizardResultsForm="members" returnPage="AdminMembers.ccp" PathID="ContentmembersSearch">
					<Components>
						<Button id="105" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="ContentmembersSearchButton_DoSearch">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="107" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_user_login" fieldSource="user_login" wizardIsPassword="False" wizardCaption="Login" caption="Login" required="False" unique="False" wizardSize="20" wizardMaxLength="20" PathID="ContentmembersSearchs_user_login">
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
		<Panel id="126" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="59" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="127" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="60" name="AdminMenu" PathID="Sidebar1AdminMenu" page="AdminMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdminMembers.php" comment="//" forShow="True" url="AdminMembers.php"/>
		<CodeFile id="3" language="C#" name="AdminMembers.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="AdminMembers.aspx"/>
		<CodeFile id="1" language="C#" name="AdminMembers.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AdminMembersDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdminMembers.asp" forShow="True" url="AdminMembers.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="47" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
