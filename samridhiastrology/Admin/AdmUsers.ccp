<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="52" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="53" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Link id="20" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="Link1" hrefSource="AdmUserRecord.ccp" visible="Yes">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Grid id="38" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="users_countries" connection="InternetDB" dataSource="countries, users" orderBy="user_login" pageSizeLimit="100" pageSize="False" wizardCaption="List of Countries, Users " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="39" visible="True" name="Sorter_user_login" column="user_login" wizardCaption="Login" wizardSortingType="Extended" wizardControl="user_login" wizardAddNbsp="False" PathID="Contentusers_countriesSorter_user_login" oldHTML="&lt;!-- BEGIN Sorter Sorter_user_login --&gt;&lt;span class=&quot;Sorter&quot;&gt;Login 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentusers_countriesSorter_user_login&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentusers_countriesSorter_user_login&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_user_login --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="40" visible="True" name="Sorter_email" column="email" wizardCaption="Email" wizardSortingType="Extended" wizardControl="email" wizardAddNbsp="False" PathID="Contentusers_countriesSorter_email" oldHTML="&lt;!-- BEGIN Sorter Sorter_email --&gt;&lt;span class=&quot;Sorter&quot;&gt;Email 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentusers_countriesSorter_email&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentusers_countriesSorter_email&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_email --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="41" visible="True" name="Sorter_city" column="city" wizardCaption="City" wizardSortingType="Extended" wizardControl="city" wizardAddNbsp="False" PathID="Contentusers_countriesSorter_city" oldHTML="&lt;!-- BEGIN Sorter Sorter_city --&gt;&lt;span class=&quot;Sorter&quot;&gt;City 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentusers_countriesSorter_city&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentusers_countriesSorter_city&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_city --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="42" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="None" name="user_login" fieldSource="user_login" wizardCaption="Login" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="AdmUserRecord.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;user_login&quot;,&quot;hrefSource&quot;:&quot;AdmUserRecord.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;user_id&quot;,&quot;parameterName&quot;:&quot;user_id&quot;}}}" wizardAddNbsp="True" PathID="Contentusers_countriesuser_login" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="43" sourceType="DataField" format="yyyy-mm-dd" name="user_id" source="user_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" name="email" fieldSource="email" wizardCaption="Email" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentusers_countriesemail">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="45" fieldSourceType="DBColumn" dataType="Text" html="False" name="city" fieldSource="city" wizardCaption="City" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentusers_countriescity">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="46" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
      &lt;!-- BEGIN First_On --&gt;&lt;a href=&quot;{First_URL}&quot;&gt;First &lt;/a&gt; &lt;!-- END First_On --&gt;
      &lt;!-- BEGIN First_Off --&gt;First &lt;!-- END First_Off --&gt;
      &lt;!-- BEGIN Prev_On --&gt;&lt;a href=&quot;{Prev_URL}&quot;&gt;Prev &lt;/a&gt; &lt;!-- END Prev_On --&gt;
      &lt;!-- BEGIN Prev_Off --&gt;Prev &lt;!-- END Prev_Off --&gt;&amp;nbsp; 
      &lt;!-- BEGIN Pages --&gt;
      &lt;!-- BEGIN Page_On --&gt;&lt;a href=&quot;{Page_URL}&quot;&gt;{Page_Number}&lt;/a&gt;&amp;nbsp;&lt;!-- END Page_On --&gt;
      &lt;!-- BEGIN Page_Off --&gt;{Page_Number}&amp;nbsp;&lt;!-- END Page_Off --&gt;&lt;!-- END Pages --&gt;of&amp;nbsp;{Total_Pages}&amp;nbsp; 
      &lt;!-- BEGIN Next_On --&gt;&lt;a href=&quot;{Next_URL}&quot;&gt;Next &lt;/a&gt; &lt;!-- END Next_On --&gt;
      &lt;!-- BEGIN Next_Off --&gt;Next &lt;!-- END Next_Off --&gt;
      &lt;!-- BEGIN Last_On --&gt;&lt;a href=&quot;{Last_URL}&quot;&gt;Last &lt;/a&gt; &lt;!-- END Last_On --&gt;
      &lt;!-- BEGIN Last_Off --&gt;Last &lt;!-- END Last_Off --&gt;&lt;/span&gt;&lt;!-- END Navigator Navigator --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
					</Components>
					<Events/>
					<TableParameters/>
					<JoinTables>
						<JoinTable id="47" posHeight="88" posLeft="10" posTop="10" posWidth="95" schemaName="undefined" tableName="countries"/>
						<JoinTable id="48" posHeight="180" posLeft="126" posTop="10" posWidth="133" schemaName="undefined" tableName="users"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="49" fieldLeft="users.country_id" fieldRight="countries.country_id" joinType="left" tableLeft="users" tableRight="countries"/>
					</JoinLinks>
					<Fields>
						<Field id="50" fieldName="country_name" tableName="countries"/>
						<Field id="51" fieldName="users.*" tableName="users"/>
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
		<Panel id="54" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="36" name="AdmHeader" PathID="MenuAdmHeader" page="AdmHeader.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="55" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="37" name="AdmMenu" PathID="SidebarAdmMenu" page="AdmMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdmUsers.php" comment="//" forShow="True" url="AdmUsers.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="AdmUsers.cgi" comment="#" forShow="True" url="AdmUsers.cgi"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdmUsers.asp" comment="'" forShow="True" url="AdmUsers.asp"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="4" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
