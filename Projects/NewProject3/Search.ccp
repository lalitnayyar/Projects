<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" isService="False" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0">
	<Components>
		<Panel id="2" visible="True" name="eventsSearchTemplatePanel" wizardInnerHTML="Search
&lt;!-- BEGIN Record eventsSearch --&gt;
&lt;form name=&quot;{HTMLFormName}&quot; action=&quot;{Action}&quot; method=&quot;post&quot;&gt;
  &lt;table class=&quot;Record&quot;&gt;
          &lt;!-- BEGIN Error --&gt;
          &lt;tr class=&quot;Error&quot;&gt;
            &lt;td colspan=&quot;2&quot;&gt;{Error}&lt;/td&gt; 
          &lt;/tr&gt;
 &lt;!-- END Error --&gt;
          &lt;tr class=&quot;Controls&quot;&gt;
            &lt;td class=&quot;th&quot; nowrap=&quot;nowrap&quot;&gt;&lt;label for=&quot;ContenteventsSearchevent_desc&quot;&gt;Name&lt;/label&gt;&lt;/td&gt; 
            &lt;td&gt;&lt;input value=&quot;{event_desc}&quot; name=&quot;event_desc&quot; id=&quot;ContenteventsSearchevent_desc&quot;&gt;&lt;/td&gt; 
            &lt;tr class=&quot;Bottom&quot;&gt;
              &lt;td nowrap&gt;&amp;nbsp;&lt;/td&gt; 
              &lt;td&gt;
                &lt;!-- BEGIN Button DoSearch --&gt;&lt;input type=&quot;submit&quot; class=&quot;Button&quot; value=&quot;Search&quot; name=&quot;{Button_Name}&quot; alt=&quot;{res:CCS_Search}&quot;&gt;&lt;!-- END Button DoSearch --&gt;&lt;/td&gt; 
            &lt;/tr&gt;
 
          &lt;/table&gt;
  &lt;/form&gt;
&lt;!-- END Record eventsSearch --&gt;&lt;br&gt;" PathID="SearchEventseventsSearchTemplatePanel" parentType="Page" masterPage="{CCS_PathToMasterPage}/BlockTemplate.ccp">
			<Components>
				<Panel id="3" visible="True" name="eventsSearchTitle" contentPlaceholder="Title">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="4" visible="True" name="eventsSearchContent" contentPlaceholder="Content">
					<Components>
						<Record id="5" sourceType="Table" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" debugMode="False" returnValueType="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" returnValueTypeForDelete="Number" name="eventsSearch" urlType="Relative" old_temp_id="2">
							<Components>
								<TextBox id="6" fieldSourceType="DBColumn" dataType="Memo" html="False" editable="True" hasErrorCollection="True" name="s_keyword" visible="Yes" old_temp_id="25">
									<Components/>
									<Events/>
									<Features/>
									<Attributes/>
								</TextBox>
								<Button id="7" isDefault="False" name="DoSearch" urlType="Relative" operation="Search" enableValidation="True" old_temp_id="26">
									<Components/>
									<Events/>
									<Features/>
									<Attributes/>
								</Button>
							</Components>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
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
							<Features/>
							<PKFields/>
							<Attributes/>
						</Record>
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
	</Components>
	<CodeFiles>
		<CodeFile id="Code" language="PHPTemplates" name="Search.php" forShow="True" url="Search.php" comment="//"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
