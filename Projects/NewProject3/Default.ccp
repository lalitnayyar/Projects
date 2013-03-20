<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" name="Default" webService="False" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="144" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="145" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="122" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="news" connection="internet" dataSource="news" pageSizeLimit="100" pageSize="False" wizardCaption="List of News " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleColumnar.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False" orderBy="news_id">
					<Components>
						<Label id="124" fieldSourceType="DBColumn" dataType="Memo" html="True" name="news_desc" fieldSource="news_desc" wizardCaption="Desc" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentnewsnews_desc">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="125" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
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
					<TableParameters/>
					<JoinTables>
						<JoinTable id="133" posHeight="88" posLeft="10" posTop="10" posWidth="95" tableName="news"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="134" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="135" dataType="Integer" fieldName="news_id" tableName="news"/>
					</PKFields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
				<Grid id="117" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="articles" connection="internet" dataSource="articles" pageSizeLimit="100" pageSize="False" wizardCaption="List of Articles " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleColumnar.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False" orderBy="article_id">
					<Components>
						<Navigator id="121" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
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
						<Label id="83" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="article_title" fieldSource="article_title" primaryKey="False" old_temp_id="11">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="84" fieldSourceType="DBColumn" dataType="Memo" html="True" editable="False" name="article_desc" fieldSource="article_desc" primaryKey="False" old_temp_id="12">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters/>
					<JoinTables>
						<JoinTable id="136" posHeight="152" posLeft="10" posTop="10" posWidth="115" tableName="articles"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="137" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="138" dataType="Integer" fieldName="article_id" tableName="articles"/>
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
		<Panel id="146" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="57" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="147" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<Panel id="109" visible="True" name="events1TemplatePanel" wizardInnerHTML="
	 Events
	&lt;!-- BEGIN Grid events1 --&gt;
	 &lt;table class=&quot;Grid&quot;&gt;
        &lt;!-- BEGIN Row --&gt;
        &lt;tr class=&quot;Row&quot;&gt;
          &lt;td&gt;&lt;a href=&quot;{event_name_Src}&quot;&gt;{event_name}&lt;/a&gt;&lt;/td&gt; 
        &lt;/tr&gt;
 &lt;!-- END Row --&gt;
        &lt;!-- BEGIN NoRecords --&gt;
        &lt;tr class=&quot;NoRecords&quot;&gt;
          &lt;td&gt;No records&lt;/td&gt; 
        &lt;/tr&gt;
 &lt;!-- END NoRecords --&gt;
      &lt;/table&gt;
&lt;!-- END Grid events1 --&gt;" PathID="Sidebar1events1TemplatePanel" masterPage="{CCS_PathToMasterPage}/BlockTemplate.ccp">
					<Components>
						<Panel id="110" visible="True" name="events1Title" contentPlaceholder="Title">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
						<Panel id="111" visible="True" name="events1Content" contentPlaceholder="Content">
							<Components>
								<Grid id="139" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="events" connection="internet" dataSource="events" orderBy="event_id" pageSizeLimit="100" pageSize="True" wizardCaption="List of Events " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleColumnar.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
									<Components>
										<Link id="142" visible="Yes" fieldSourceType="DBColumn" dataType="Memo" html="False" hrefType="Page" preserveParameters="None" name="event_name" fieldSource="event_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="Events.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;event_name&quot;,&quot;hrefSource&quot;:&quot;Events.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;event_id&quot;,&quot;parameterName&quot;:&quot;event_id&quot;}}}" wizardAddNbsp="True" PathID="Sidebar1events1TemplatePanelevents1Contenteventsevent_name" urlType="Relative">
											<Components/>
											<Events/>
											<LinkParameters>
												<LinkParameter id="143" sourceType="DataField" format="yyyy-mm-dd" name="event_id" source="event_id"/>
											</LinkParameters>
											<Attributes/>
											<Features/>
										</Link>
									</Components>
									<Events/>
									<TableParameters/>
									<JoinTables>
										<JoinTable id="140" posHeight="180" posLeft="10" posTop="10" posWidth="154" schemaName="undefined" tableName="events"/>
									</JoinTables>
									<JoinLinks/>
									<Fields/>
									<PKFields>
										<PKField id="141" dataType="Integer" fieldName="event_id" tableName="events"/>
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
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="100" visible="True" name="links1TemplatePanel" wizardInnerHTML="Links
	&lt;!-- BEGIN Grid links1 --&gt;
	 &lt;table class=&quot;Grid&quot;&gt;
        &lt;!-- BEGIN Row --&gt;
        &lt;tr class=&quot;Row&quot;&gt;
          &lt;td&gt;&lt;a href=&quot;{link_name_Src}&quot;&gt;{link_name}&lt;/a&gt;&lt;/td&gt; 
        &lt;/tr&gt;
 &lt;!-- END Row --&gt;
        &lt;!-- BEGIN NoRecords --&gt;
        &lt;tr class=&quot;NoRecords&quot;&gt;
          &lt;td&gt;No records&lt;/td&gt; 
        &lt;/tr&gt;
 &lt;!-- END NoRecords --&gt;
      &lt;/table&gt;
 &lt;!-- END Grid links1 --&gt; &lt;br&gt;" PathID="Sidebar1links1TemplatePanel" masterPage="{CCS_PathToMasterPage}/BlockTemplate.ccp">
					<Components>
						<Panel id="101" visible="True" name="links1Title" contentPlaceholder="Title">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
						<Panel id="102" visible="True" name="links1Content" contentPlaceholder="Content">
							<Components>
								<Grid id="126" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="links" connection="internet" dataSource="links" orderBy="link_id" pageSizeLimit="100" pageSize="True" wizardCaption="List of Links " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleColumnar.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
									<Components>
										<Link id="132" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" preserveParameters="None" name="link_name" fieldSource="link_name" wizardCaption="Name" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="link_url" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;link_name&quot;,&quot;hrefSource&quot;:&quot;&quot;,&quot;hrefSourceDB&quot;:&quot;link_url&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:0,&quot;objectType&quot;:&quot;linkParameters&quot;}}" wizardAddNbsp="True" PathID="Sidebar1links1TemplatePanellinks1Contentlinkslink_name" urlType="Relative">
											<Components/>
											<Events/>
											<LinkParameters/>
											<Attributes/>
											<Features/>
										</Link>
									</Components>
									<Events/>
									<TableParameters>
										<TableParameter id="128" conditionType="Expression" useIsNull="False" expression="is_approve=1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
									</TableParameters>
									<JoinTables>
										<JoinTable id="127" posHeight="180" posLeft="10" posTop="10" posWidth="154" tableName="links"/>
									</JoinTables>
									<JoinLinks/>
									<Fields>
										<Field id="129" fieldName="link_name" tableName="links"/>
										<Field id="130" fieldName="link_url" tableName="links"/>
									</Fields>
									<PKFields>
										<PKField id="131" dataType="Integer" fieldName="link_id" tableName="links"/>
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
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<IncludePage id="116" name="SearchArticles" PathID="Sidebar1SearchArticles" page="SearchArticles.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="Default.php" comment="//" forShow="True" url="Default.php"/>
		<CodeFile id="3" language="C#" name="Default.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Default.aspx"/>
		<CodeFile id="1" language="C#" name="Default.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="DefaultDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="Default.asp" comment="'" forShow="True" url="Default.asp"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
