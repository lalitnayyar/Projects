<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="30" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="31" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="23" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="store_statuses" connection="InternetDB" dataSource="store_statuses" orderBy="status_name" pageSizeLimit="100" pageSize="False" wizardCaption="List of Store Statuses " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="24" visible="True" name="Sorter_status_name" column="status_name" wizardCaption="Status Name" wizardSortingType="Extended" wizardControl="status_name" wizardAddNbsp="False" PathID="Contentstore_statusesSorter_status_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_status_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;Status Name 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentstore_statusesSorter_status_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentstore_statusesSorter_status_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_status_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="GET" name="status_name" fieldSource="status_name" wizardCaption="Status Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="AdmOrderStatusRecord.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;status_name&quot;,&quot;hrefSource&quot;:&quot;AdmOrderStatusRecord.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;status_id&quot;,&quot;parameterName&quot;:&quot;status_id&quot;}}}" wizardAddNbsp="True" PathID="Contentstore_statusesstatus_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="26" sourceType="DataField" format="yyyy-mm-dd" name="status_id" source="status_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Navigator id="27" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
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
						<JoinTable id="28" posHeight="88" posLeft="10" posTop="10" posWidth="95" schemaName="undefined" tableName="store_statuses"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<PKFields>
						<PKField id="29" dataType="Integer" fieldName="status_id" tableName="store_statuses"/>
					</PKFields>
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
		<Panel id="32" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="21" name="AdmHeader" PathID="MenuAdmHeader" page="AdmHeader.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="33" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="22" name="AdmMenu" PathID="SidebarAdmMenu" page="AdmMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdmOrderStatuses.php" comment="//" forShow="True" url="AdmOrderStatuses.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="AdmOrderStatuses.cgi" comment="#" forShow="True" url="AdmOrderStatuses.cgi"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdmOrderStatuses.asp" comment="'" forShow="True" url="AdmOrderStatuses.asp"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="8" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
