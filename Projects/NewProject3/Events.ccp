<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" name="Events" webService="False" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="72" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="73" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="60" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="events" connection="internet" dataSource="events" orderBy="date_start" pageSizeLimit="100" pageSize="False" wizardCaption="List of Events " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="False" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="61" visible="True" name="Sorter_date_start" column="date_start" wizardCaption="Date Start" wizardSortingType="SimpleDir" wizardControl="date_start" wizardAddNbsp="False" PathID="ContenteventsSorter_date_start" oldHTML="&lt;!-- BEGIN Sorter Sorter_date_start --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContenteventsSorter_date_start&quot;&gt;Date Start&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_date_start --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="62" visible="True" name="Sorter_presenter" column="presenter" wizardCaption="Presenter" wizardSortingType="SimpleDir" wizardControl="presenter" wizardAddNbsp="False" PathID="ContenteventsSorter_presenter" oldHTML="&lt;!-- BEGIN Sorter Sorter_presenter --&gt;&lt;span class=&quot;Sorter&quot;&gt;&lt;a href=&quot;{Sort_URL}&quot; id=&quot;ContenteventsSorter_presenter&quot;&gt;Presenter&lt;/a&gt; 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;./Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_presenter --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Label id="63" fieldSourceType="DBColumn" dataType="Date" html="False" name="date_start" fieldSource="date_start" wizardCaption="Date Start" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contenteventsdate_start">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Link id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Memo" html="False" hrefType="Page" preserveParameters="None" name="event_name" fieldSource="event_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;event_name&quot;,&quot;hrefSource&quot;:&quot;&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;event_id&quot;,&quot;parameterName&quot;:&quot;event_id&quot;}}}" wizardAddNbsp="False" PathID="Contenteventsevent_name" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="65" sourceType="DataField" format="yyyy-mm-dd" name="event_id" source="event_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="66" fieldSourceType="DBColumn" dataType="Text" html="False" name="presenter" fieldSource="presenter" wizardCaption="Presenter" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contenteventspresenter">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="67" fieldSourceType="DBColumn" dataType="Memo" html="False" name="location" fieldSource="location" wizardCaption="Location" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="Contenteventslocation">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="68" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
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
						<Hidden id="81" fieldSourceType="DBColumn" dataType="Text" name="Records" PathID="ContenteventsRecords">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Retrieve number of records" actionCategory="Database" id="82"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Hidden>
					</Components>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="90" action="Hide" conditionType="Parameter" dataType="Integer" componentName="events" condition="Equal" sourceType1="Control" name1="Records" name2="1" sourceType2="Expression"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="85" conditionType="Parameter" useIsNull="False" dataType="Memo" field="event_desc" logicOperator="Or" old_temp_id="7" orderNumber="1" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
						<TableParameter id="86" conditionType="Parameter" useIsNull="False" dataType="Memo" field="event_name" logicOperator="And" old_temp_id="19" orderNumber="2" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
						<TableParameter id="87" conditionType="Parameter" useIsNull="False" dataType="Integer" field="event_id" logicOperator="And" parameterSource="event_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="84" posHeight="180" posLeft="10" posTop="10" posWidth="154" tableName="events"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="88" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="89" dataType="Integer" fieldName="event_id" tableName="events"/>
					</PKFields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
				<Record id="45" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="events1" connection="internet" dataSource="events" errorSummator="Error" allowCancel="False" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="event_id" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Events " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Custom" templatePageRecord="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Record/SimpleVertical.ccp|userTemplate" PathID="Contentevents1" editableComponentTypeString="Record">
					<Components>
						<Label id="39" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="False" name="event_name1" fieldSource="event_name" primaryKey="False" old_temp_id="19" PathID="Contentevents1event_name1">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="40" fieldSourceType="DBColumn" dataType="Memo" html="True" editable="False" name="event_desc1" fieldSource="event_desc" primaryKey="False" old_temp_id="20" PathID="Contentevents1event_desc1">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="91" action="Hide" conditionType="Parameter" dataType="Text" componentName="events1" condition="Equal" sourceType1="URL" name1="event_id" sourceType2="Expression" name2="&quot;&quot;"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="50" conditionType="Parameter" useIsNull="False" field="event_id" parameterSource="event_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" old_temp_id="30"/>
						<TableParameter id="51" conditionType="Parameter" useIsNull="False" field="event_id" parameterSource="event_id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="52" tableName="events" posWidth="100" posHeight="257" posLeft="0" posTop="0" old_temp_id="29"/>
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
		<Panel id="74" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="35" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="75" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="59" name="Search" PathID="Sidebar1Search" page="Search.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="Events.php" comment="//" forShow="True" url="Events.php"/>
		<CodeFile id="3" language="C#" name="Events.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Events.aspx"/>
		<CodeFile id="1" language="C#" name="Events.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="EventsDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="Events.asp" forShow="True" url="Events.asp" comment="'"/>
		<CodeFile id="Events" language="PHPTemplates" name="Events_events.php" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Features/>
	<Attributes/>
</Page>
