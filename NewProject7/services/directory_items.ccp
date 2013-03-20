<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="InternetDB" dataSource="directory_items, states" name="directory_items" pageSizeLimit="100" wizardCaption="List of Directory Items " wizardAllowInsert="False" activeCollection="TableParameters">
			<Components>
				<Label id="117" fieldSourceType="DBColumn" dataType="Integer" html="False" name="item_id" fieldSource="item_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="118" fieldSourceType="DBColumn" dataType="Integer" html="False" name="category_id" fieldSource="category_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="119" fieldSourceType="DBColumn" dataType="Text" html="False" name="item_name" fieldSource="item_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="120" fieldSourceType="DBColumn" dataType="Text" html="False" name="address" fieldSource="address">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="121" fieldSourceType="DBColumn" dataType="Text" html="False" name="city" fieldSource="city">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="122" fieldSourceType="DBColumn" dataType="Text" html="False" name="zip" fieldSource="zip">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="123" fieldSourceType="DBColumn" dataType="Text" html="False" name="state_name" fieldSource="state_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="124" fieldSourceType="DBColumn" dataType="Text" html="False" name="phone" fieldSource="phone">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="125" fieldSourceType="DBColumn" dataType="Memo" html="False" name="note" fieldSource="note">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="126" fieldSourceType="DBColumn" dataType="Text" html="False" name="email" fieldSource="email">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="127" fieldSourceType="DBColumn" dataType="Text" html="False" name="url" fieldSource="url">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="135" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="-1" field="directory_items.item_id" logicOperator="And" parameterSource="keyword" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="132" posHeight="180" posLeft="10" posTop="10" posWidth="115" tableName="directory_items"/>
				<JoinTable id="133" posHeight="88" posLeft="146" posTop="10" posWidth="95" tableName="states"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="134" conditionType="Equal" fieldLeft="states.state_id" fieldRight="directory_items.state_id" joinType="inner" tableLeft="states" tableRight="directory_items"/>
			</JoinLinks>
			<Fields>
				<Field id="136" fieldName="*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="C#" name="directory_items.aspx" forShow="True" url="directory_items.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="C#" name="directory_items.aspx.cs" forShow="False" comment="//" codePage="windows-1252"/>
		<CodeFile id="2" language="C#" name="directory_itemsDataProvider.cs" path="..\App_Code\.\services" forShow="False" comment="//" codePage="windows-1252"/>
		<CodeFile id="3" language="VB" name="directory_items.aspx" forShow="True" url="directory_items.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="directory_items.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="directory_itemsDataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="Code" language="PHPTemplates" name="directory_items.php" forShow="True" url="directory_items.php" comment="//"/>
		<CodeFile id="Code" language="ASPTemplates" name="directory_items.asp" forShow="True" url="directory_items.asp" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
