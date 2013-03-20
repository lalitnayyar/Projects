<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" isIncluded="True" name="AdminMenu" webService="False" page="Footer.ccp" accessDeniedPage="Login.ccp" SSLAccess="False" urlType="Relative" cachingEnabled="False" cachingDuration="1 minutes" needGeneration="0" wizardTheme="Innovation" wizardThemeVersion="3.0" isService="False">
	<Components>
		<Panel id="21" visible="True" name="TemplatePanel" wizardInnerHTML="&lt;table&gt;
  &lt;tr&gt;
    &lt;td valign=&quot;top&quot;&gt;
      &lt;table class=&quot;Header&quot;&gt;
        &lt;tr&gt;
          &lt;td class=&quot;HeaderLeft&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;{CCS_PathToMasterPage}images/spacer.gif&quot;&gt;&lt;/td&gt; 
          &lt;td class=&quot;th&quot;&gt;&lt;strong&gt;Administration Menu&lt;/strong&gt; &lt;/td&gt; 
          &lt;td class=&quot;HeaderRight&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;{CCS_PathToMasterPage}images/spacer.gif&quot;&gt;&lt;/td&gt; 
        &lt;/tr&gt;
 
      &lt;/table&gt;
 
      &lt;table cellspacing=&quot;0&quot; cellpadding=&quot;0&quot;&gt;
        &lt;tr class=&quot;Row&quot;&gt;
          &lt;td&gt;&lt;a href=&quot;{Link1}&quot;&gt;&lt;img src=&quot;images/adminArticles-icon.gif&quot; style=&quot;border: 0px;&quot; alt=&quot;{Link1}&quot;&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;{Link7_Src}&quot; class=&quot;MailBoxDataLink&quot;&gt;Articles (Main Content)&lt;/a&gt;&lt;/td&gt; 
        &lt;/tr&gt;
 
        &lt;tr class=&quot;Row&quot;&gt;
          &lt;td&gt;&lt;a href=&quot;{Link2}&quot;&gt;&lt;img src=&quot;images/adminEvents-icon.gif&quot; style=&quot;border: 0px;&quot; alt=&quot;{Link2}&quot;&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;{Link8_Src}&quot; class=&quot;MailBoxDataLink&quot;&gt;Events&lt;/a&gt;&lt;/td&gt; 
        &lt;/tr&gt;
 
        &lt;tr class=&quot;Row&quot;&gt;
          &lt;td&gt;&lt;a href=&quot;{Link3}&quot;&gt;&lt;img src=&quot;images/adminClubOfficerss-icon.gif&quot; style=&quot;border: 0px;&quot; alt=&quot;{Link3}&quot;&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;{Link9_Src}&quot; class=&quot;MailBoxDataLink&quot;&gt;Club Officers&lt;/a&gt;&lt;/td&gt; 
        &lt;/tr&gt;
 
        &lt;tr class=&quot;Row&quot;&gt;
          &lt;td&gt;&lt;a href=&quot;{Link4}&quot;&gt;&lt;img src=&quot;images/adminLinks-icon.gif&quot; style=&quot;border: 0px;&quot; alt=&quot;{Link4}&quot;&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;{Link10_Src}&quot; class=&quot;MailBoxDataLink&quot;&gt;Links&lt;/a&gt;&lt;/td&gt; 
        &lt;/tr&gt;
 
        &lt;tr class=&quot;Row&quot;&gt;
          &lt;td&gt;&lt;a href=&quot;{Link5}&quot;&gt;&lt;img src=&quot;images/adminMembers-icon.gif&quot; style=&quot;border: 0px;&quot; alt=&quot;{Link5}&quot;&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;{Link11_Src}&quot; class=&quot;MailBoxDataLink&quot;&gt;Members&lt;/a&gt;&lt;/td&gt; 
        &lt;/tr&gt;
 
        &lt;tr class=&quot;Row&quot;&gt;
          &lt;td&gt;&lt;a href=&quot;{Link6}&quot;&gt;&lt;img src=&quot;images/adminNews-icon.gif&quot; style=&quot;border: 0px;&quot; alt=&quot;{Link6}&quot;&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;{Link12_Src}&quot; class=&quot;MailBoxDataLink&quot;&gt;News&lt;/a&gt;&lt;/td&gt; 
        &lt;/tr&gt;
 
        &lt;tr class=&quot;Row&quot;&gt;
          &lt;td&gt;&lt;!-- BEGIN Link Logout --&gt;&lt;a href=&quot;{Logout_Src}&quot; id=&quot;AdminMenuLogout&quot; style=&quot;border: 0px;&quot;&gt;Logout&lt;/a&gt;&lt;!-- END Link Logout --&gt;&lt;/td&gt; 
        &lt;/tr&gt;
 
      &lt;/table&gt;
 &lt;/td&gt; 
  &lt;/tr&gt;
&lt;/table&gt;
" PathID="AdminMenuTemplatePanel" parentType="Page" masterPage="{CCS_PathToMasterPage}/BlockTemplate.ccp">
<Components>
<Panel id="22" visible="True" name="Title" contentPlaceholder="Title">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Panel>
<Panel id="23" visible="True" name="Content" contentPlaceholder="Content">
<Components>
<ImageLink id="5" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="True" preserveParameters="None" editable="False" name="Link1" hrefSource="AdminArticles.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</ImageLink>
<Link id="11" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link7" hrefSource="AdminArticles.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
<ImageLink id="6" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="True" preserveParameters="None" editable="False" name="Link2" hrefSource="AdminEvents.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</ImageLink>
<Link id="12" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link8" hrefSource="AdminEvents.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
<ImageLink id="7" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="True" preserveParameters="None" editable="False" name="Link3" hrefSource="AdminOfficers.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</ImageLink>
<Link id="13" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link9" hrefSource="AdminOfficers.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
<ImageLink id="8" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="True" preserveParameters="None" editable="False" name="Link4" hrefSource="AdminLinks.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</ImageLink>
<Link id="14" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link10" hrefSource="AdminLinks.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
<ImageLink id="9" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="True" preserveParameters="None" editable="False" name="Link5" hrefSource="AdminMembers.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</ImageLink>
<Link id="15" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link11" hrefSource="AdminMembers.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
<ImageLink id="10" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="True" preserveParameters="None" editable="False" name="Link6" hrefSource="AdminNews.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</ImageLink>
<Link id="16" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" html="False" preserveParameters="None" editable="False" name="Link12" hrefSource="AdminNews.ccp" linkType="Relative" urlType="Relative" visible="Yes">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
<Link id="18" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Logout" hrefSource="AdminArticles.ccp" wizardDefaultValue="Logout" PathID="AdminMenuTemplatePanelContentLogout" wizardUseTemplateBlock="False">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Hide-Show Component" actionCategory="General" id="20" action="Hide" conditionType="Parameter" dataType="Text" componentName="Logout" condition="Equal" sourceType1="Session" name1="PortalUserID" sourceType2="Expression" name2="&quot;&quot;"/>
									</Actions>
								</Event>
							</Events>
							<LinkParameters>
								<LinkParameter id="38" sourceType="Expression" format="yyyy-mm-dd" name="Logout" source="&quot;True&quot;" old_temp_id="19"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
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
		<CodeFile id="Code" language="PHPTemplates" name="AdminMenu.php" comment="//" forShow="True" url="AdminMenu.php"/>
		<CodeFile id="Code" language="ASPTemplates" name="AdminMenu.asp" comment="'" forShow="True" url="AdminMenu.asp"/>
		<CodeFile id="Events" language="PHPTemplates" name="AdminMenu_events.php" forShow="False" comment="//"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="17" groupID="2"/>
	</SecurityGroups>
	<Events/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
