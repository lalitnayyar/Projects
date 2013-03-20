<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\Admin" secured="True" urlType="Relative" SSLAccess="False" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" wizardSortingType="Extended" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="78" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="79" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Record id="27" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Orders_Search">
					<Components>
						<TextBox id="28" visible="Dynamic" fieldSourceType="DBColumn" dataType="Date" name="begin_date" caption="Begin Date" format="mm/dd/yy" PathID="ContentOrders_Searchbegin_date" features="(assigned)">
							<Components/>
							<Events/>
							<Attributes/>
							<Features>
								<InlineDatePicker id="52" enabled="True" name="InlineDatePicker1" category="YahooUI" featureNameChanged="No">
									<Components/>
									<Events/>
									<ControlPoints/>
									<Features/>
								</InlineDatePicker>
							</Features>
						</TextBox>
						<TextBox id="29" visible="Dynamic" fieldSourceType="DBColumn" dataType="Date" name="end_date" caption="End Date" format="mm/dd/yy" PathID="ContentOrders_Searchend_date" features="(assigned)">
							<Components/>
							<Events/>
							<Attributes/>
							<Features>
								<InlineDatePicker id="51" enabled="True" name="InlineDatePicker3" category="YahooUI" featureNameChanged="No">
									<Components/>
									<Events/>
									<ControlPoints/>
									<Features/>
								</InlineDatePicker>
							</Features>
						</TextBox>
						<ListBox id="33" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="order_status" connection="InternetDB" dataSource="store_statuses" boundColumn="status_id" textColumn="status_name">
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
						<Button id="32" urlType="Relative" enableValidation="True" isDefault="False" name="Search" operation="Search">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
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
				<Grid id="58" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="users_store_statuses_stor" connection="InternetDB" dataSource="store_orders, store_statuses, users" orderBy="order_date desc" pageSizeLimit="100" pageSize="False" wizardCaption="List of Store Orders, Store Statuses, Users " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="Extended" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardGridPagingType="Custom" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject1/Templates/Grid/SimpleTabular.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Sorter id="59" visible="True" name="Sorter_order_date" column="order_date" wizardCaption="Order Date" wizardSortingType="Extended" wizardControl="order_date" wizardAddNbsp="False" PathID="Contentusers_store_statuses_storSorter_order_date" oldHTML="&lt;!-- BEGIN Sorter Sorter_order_date --&gt;&lt;span class=&quot;Sorter&quot;&gt;Order Date 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentusers_store_statuses_storSorter_order_date&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentusers_store_statuses_storSorter_order_date&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_order_date --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="60" visible="True" name="Sorter_user_login" column="user_login" wizardCaption="Login" wizardSortingType="Extended" wizardControl="user_login" wizardAddNbsp="False" PathID="Contentusers_store_statuses_storSorter_user_login" oldHTML="&lt;!-- BEGIN Sorter Sorter_user_login --&gt;&lt;span class=&quot;Sorter&quot;&gt;User 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentusers_store_statuses_storSorter_user_login&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentusers_store_statuses_storSorter_user_login&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_user_login --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="61" visible="True" name="Sorter_status_name" column="status_name" wizardCaption="Status Name" wizardSortingType="Extended" wizardControl="status_name" wizardAddNbsp="False" PathID="Contentusers_store_statuses_storSorter_status_name" oldHTML="&lt;!-- BEGIN Sorter Sorter_status_name --&gt;&lt;span class=&quot;Sorter&quot;&gt;Order Status 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentusers_store_statuses_storSorter_status_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentusers_store_statuses_storSorter_status_name&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_status_name --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="62" visible="True" name="Sorter_total" column="total" wizardCaption="Total" wizardSortingType="Extended" wizardControl="total" wizardAddNbsp="False" PathID="Contentusers_store_statuses_storSorter_total" oldHTML="&lt;!-- BEGIN Sorter Sorter_total --&gt;&lt;span class=&quot;Sorter&quot;&gt;Total 
    &lt;!-- BEGIN Asc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Asc.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;!-- END Asc_On --&gt;
    &lt;!-- BEGIN Asc_Off --&gt;&lt;a href=&quot;{Asc_URL}&quot; id=&quot;Contentusers_store_statuses_storSorter_total&quot;&gt;&lt;img src=&quot;../Styles/None/Images/AscOff.gif&quot; alt=&quot;Ascending&quot;&gt;&lt;/a&gt;&lt;!-- END Asc_Off --&gt;
    &lt;!-- BEGIN Desc_On --&gt;&lt;img src=&quot;../Styles/None/Images/Desc.gif&quot; alt=&quot;Descending&quot;&gt;&lt;!-- END Desc_On --&gt;
    &lt;!-- BEGIN Desc_Off --&gt;&lt;a href=&quot;{Desc_URL}&quot; id=&quot;Contentusers_store_statuses_storSorter_total&quot;&gt;&lt;img src=&quot;../Styles/None/Images/DescOff.gif&quot; alt=&quot;Descending&quot;&gt;&lt;/a&gt;&lt;!-- END Desc_Off --&gt;&lt;/span&gt;&lt;!-- END Sorter Sorter_total --&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" preserveParameters="GET" name="order_id" fieldSource="order_id" wizardCaption="Order Id" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="AdmOrderItems.ccp" linkProperties="{&quot;textSource&quot;:&quot;&quot;,&quot;textSourceDB&quot;:&quot;order_id&quot;,&quot;hrefSource&quot;:&quot;AdmOrderItems.ccp&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:1,&quot;objectType&quot;:&quot;linkParameters&quot;,&quot;0&quot;:{&quot;sourceType&quot;:&quot;DataField&quot;,&quot;parameterSource&quot;:&quot;order_id&quot;,&quot;parameterName&quot;:&quot;order_id&quot;}}}" wizardAddNbsp="True" PathID="Contentusers_store_statuses_stororder_id" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="64" sourceType="DataField" format="yyyy-mm-dd" name="order_id" source="order_id"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="65" fieldSourceType="DBColumn" dataType="Date" html="False" name="order_date" fieldSource="order_date" wizardCaption="Order Date" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentusers_store_statuses_stororder_date">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="66" fieldSourceType="DBColumn" dataType="Text" html="False" name="user_login" fieldSource="user_login" wizardCaption="Login" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentusers_store_statuses_storuser_login">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="67" fieldSourceType="DBColumn" dataType="Text" html="False" name="status_name" fieldSource="status_name" wizardCaption="Status Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentusers_store_statuses_storstatus_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="68" fieldSourceType="DBColumn" dataType="Text" html="False" name="total" fieldSource="total" wizardCaption="Total" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentusers_store_statuses_stortotal">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="69" size="5" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="5" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="None" oldHTML="&lt;!-- BEGIN Navigator Navigator --&gt;&lt;span class=&quot;Navigator&quot;&gt;
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
						<Label id="35" fieldSourceType="DBColumn" dataType="Text" html="False" editable="False" name="Records_Found">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Retrieve number of records" actionCategory="Database" id="36" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="70" conditionType="Parameter" useIsNull="False" dataType="Date" field="store_orders.order_date" format="mm/dd/yy" logicOperator="And" parameterSource="begin_date" parameterType="URL" searchConditionType="GreaterThan"/>
						<TableParameter id="71" conditionType="Parameter" useIsNull="False" dataType="Date" field="store_orders.order_date" format="mm/dd/yy" logicOperator="And" parameterSource="end_date" parameterType="URL" searchConditionType="LessThan"/>
						<TableParameter id="72" conditionType="Parameter" useIsNull="False" dataType="Integer" field="store_statuses.status_id" logicOperator="And" parameterSource="order_status" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="73" posHeight="136" posLeft="10" posTop="10" posWidth="102" schemaName="undefined" tableName="store_orders"/>
						<JoinTable id="74" posHeight="88" posLeft="133" posTop="107" posWidth="95" schemaName="undefined" tableName="store_statuses"/>
						<JoinTable id="75" posHeight="620" posLeft="249" posTop="26" posWidth="133" schemaName="undefined" tableName="users"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="76" fieldLeft="store_orders.order_status_id" fieldRight="store_statuses.status_id" joinType="left" tableLeft="store_orders" tableRight="store_statuses"/>
						<JoinTable2 id="77" fieldLeft="store_orders.user_id" fieldRight="users.user_id" joinType="left" tableLeft="store_orders" tableRight="users"/>
					</JoinLinks>
					<Fields/>
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
		<Panel id="80" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="56" name="AdmHeader" PathID="MenuAdmHeader" page="AdmHeader.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="81" visible="True" name="Sidebar" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="57" name="AdmMenu" PathID="SidebarAdmMenu" page="AdmMenu.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="AdmOrders.php" comment="//" forShow="True" url="AdmOrders.php"/>
		<CodeFile id="Code" language="PerlTemplates" name="AdmOrders.cgi" comment="#" forShow="True" url="AdmOrders.cgi"/>
		<CodeFile id="Events" language="PHPTemplates" forShow="False" name="AdmOrders_events.php" comment="//"/>
		<CodeFile id="3" language="C#" name="AdmOrders.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="AdmOrders.aspx"/>
		<CodeFile id="1" language="C#" name="AdmOrders.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="AdmOrdersDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Events" language="ASPTemplates" name="AdmOrders_events.asp" forShow="False" comment="'"/><CodeFile id="Code" language="ASPTemplates" name="AdmOrders.asp" forShow="True" url="AdmOrders.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="4" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
