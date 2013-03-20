<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" name="Articles" webService="False" SSLAccess="False" urlType="Relative" validateRequest="False" needGeneration="0" cachingEnabled="False" cachingDuration="1 minutes" wizardTheme="None" wizardThemeVersion="3.0" isService="False" isIncluded="False" useDesign="True" oldWizardTheme="None" masterPage="{CCS_PathToMasterPage}/MasterPage.ccp">
	<Components>
		<Panel id="69" visible="True" name="Head" contentPlaceholder="Head">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="70" visible="True" name="Content" contentPlaceholder="Content">
			<Components>
				<Grid id="52" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="50" name="articles" connection="internet" dataSource="articles, event_categories" orderBy="article_id" pageSizeLimit="100" pageSize="True" wizardCaption="List of Articles, Event Categories " wizardThemeApplyTo="Page" wizardGridType="Custom" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" templatePage="C:/Users/anton/Documents/CodeChargeStudio5/Projects/NewProject2/Templates/Grid/SimpleColumnar.ccp|userTemplate" changedCaptionGrid="False" gridExtendedHTML="False">
					<Components>
						<Label id="53" fieldSourceType="DBColumn" dataType="Text" html="False" name="article_title" fieldSource="article_title" wizardCaption="Title" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentarticlesarticle_title">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="54" fieldSourceType="DBColumn" dataType="Text" html="False" name="category_name" fieldSource="category_name" wizardCaption="Category Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentarticlescategory_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="55" fieldSourceType="DBColumn" dataType="Text" html="True" name="article_desc" fieldSource="article_desc" wizardCaption="Desc" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Contentarticlesarticle_desc">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="76" conditionType="Parameter" useIsNull="False" dataType="Text" field="article_title" logicOperator="And" orderNumber="1" parameterSource="s_article_title" parameterType="URL" searchConditionType="Contains"/>
						<TableParameter id="77" conditionType="Parameter" useIsNull="False" dataType="Integer" field="articles.category_id" logicOperator="And" orderNumber="2" parameterSource="s_category_id" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="86" tableName="articles"/>
						<JoinTable id="87" tableName="event_categories"/>
					</JoinTables>
					<JoinLinks>
						<JoinTable2 id="75" fieldLeft="articles.category_id" fieldRight="event_categories.category_id" joinType="left" tableLeft="articles" tableRight="event_categories"/>
					</JoinLinks>
					<Fields>
						<Field id="78" fieldName="article_id" tableName="articles"/>
						<Field id="79" fieldName="article_title" tableName="articles"/>
						<Field id="80" alias="articles_category_id" fieldName="articles.category_id" tableName="articles"/>
						<Field id="81" fieldName="article_desc" tableName="articles"/>
						<Field id="82" fieldName="date_add" tableName="articles"/>
						<Field id="83" fieldName="date_end" tableName="articles"/>
						<Field id="84" alias="event_categories_category_id" fieldName="event_categories.category_id" tableName="event_categories"/>
						<Field id="85" fieldName="category_name" tableName="event_categories"/>
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
		<Panel id="71" visible="True" name="Menu" contentPlaceholder="Menu">
			<Components>
				<IncludePage id="31" name="Header" PathID="MenuHeader" page="Header.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<Panel id="72" visible="True" name="Sidebar1" contentPlaceholder="Sidebar1">
			<Components>
				<IncludePage id="51" name="Search" PathID="Sidebar1Search" page="SearchArticles.ccp">
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
		<CodeFile id="Code" language="PHPTemplates" name="Articles.php" comment="//" forShow="True" url="Articles.php"/>
		<CodeFile id="3" language="C#" name="Articles.aspx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Articles.aspx"/>
		<CodeFile id="1" language="C#" name="Articles.aspx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="ArticlesDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" name="Articles.asp" forShow="True" url="Articles.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
