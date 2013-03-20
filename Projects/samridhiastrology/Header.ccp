<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" needGeneration="0" cachingEnabled="False" validateRequest="True" scriptingSupport="Automatic" cachingDuration="1 minutes" isService="False">
	<Components>
		<Link id="6" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="home" hrefSource="Default.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
<Link id="11" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="search" hrefSource="AdvSearch.ccp" visible="Yes" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
<Link id="9" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" editable="False" name="shopping_cart" hrefSource="ShoppingCart.ccp" visible="Yes">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
<Link id="12" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" editable="False" name="admin" hrefSource="Admin/AdmProducts.ccp" visible="Yes" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
<Link id="8" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Logout" hrefSource="Login.ccp" wizardDefaultValue="Logout" PathID="HeaderLogout" wizardUseTemplateBlock="False">
			<Components/>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="21" action="Hide" conditionType="Parameter" dataType="Text" componentName="Logout" condition="Equal" sourceType1="Session" name1="UserID" sourceType2="Expression" name2="&quot;&quot;"/>
					</Actions>
				</Event>
			</Events>
			<LinkParameters>
				<LinkParameter id="22" sourceType="Expression" format="yyyy-mm-dd" name="Logout" source="&quot;True&quot;"/>
			</LinkParameters>
			<Attributes/>
			<Features/>
		</Link>
</Components>
	<CodeFiles>
		<CodeFile id="Events" language="ASPTemplates" forShow="False" name="Header_events.asp" comment="'"/>
		<CodeFile id="Events" language="PHPTemplates" name="Header_events.php" comment="//" forShow="False"/>
		<CodeFile id="Code" language="PHPTemplates" name="Header.php" comment="//" forShow="True" url="Header.php"/>
		<CodeFile id="Events" language="PerlTemplates" name="Header_events.pl" comment="#" forShow="False"/>
		<CodeFile id="Code" language="PerlTemplates" name="Header.pm" comment="#" forShow="True" url="Header.cgi"/>
		<CodeFile id="codePage" language="CFML" name="Header.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="Header.cfm"/>
		<CodeFile id="codePage" language="CFMLTemplates" name="Header.cfm" comment="&lt;!---" commentEnd="---&gt;" forShow="True" url="Header.cfm"/>
		<CodeFile id="3" language="VB" name="Header.ascx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Header.ascx"/>
		<CodeFile id="1" language="VB" name="Header.ascx.vb" comment="'" forShow="False"/>
		<CodeFile id="2" language="VB" name="HeaderDataProvider.vb" path="\components" comment="'" forShow="False"/>
		<CodeFile id="Action" language="ServletTemplates" name="HeaderAction.java" path="\CCSBuild\src\Header\" comment="//" forShow="True" url="Header.do"/>
		<CodeFile id="Model" language="ServletTemplates" name="HeaderModel.java" path="\CCSBuild\src\Header\" comment="//" forShow="False"/>
		<CodeFile id="View" language="ServletTemplates" name="HeaderView.java" path="\CCSBuild\src\Header\" comment="//" forShow="False"/>
		<CodeFile id="HeaderPageEventHandler" language="ServletTemplates" name="HeaderPageHandler.java" path="\CCSBuild\src\Header\" comment="//" forShow="False"/>
		<CodeFile id="Model" language="JSP" name="Header.xml" path="." comment="&lt;!--" commentEnd="--&gt;" forShow="False"/>
		<CodeFile id="JSP" language="JSP" name="Header.jsp" path="." comment="&lt;%--" commentEnd="--%&gt;" forShow="True" url="Header.jsp"/>
		<CodeFile id="Handlers" language="JSP" name="HeaderHandlers.jsp" path="." comment="//" forShow="False"/>
		<CodeFile id="3" language="C#" name="Header.ascx" comment="&lt;!--" commentEnd="--&gt;" forShow="True" url="Header.ascx"/>
		<CodeFile id="1" language="C#" name="Header.ascx.cs" comment="//" forShow="False"/>
		<CodeFile id="2" language="C#" name="HeaderDataProvider.cs" path="\components" comment="//" forShow="False"/>
		<CodeFile id="Code" language="ASPTemplates" forShow="True" url="Header.asp" name="Header.asp" comment="'"/>
		<CodeFile id="1" language="C#InMotion" name="Header.ascx" forShow="True" url="Header.ascx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.cs" language="C#InMotion" name="HeaderEvents.ascx.cs" forShow="False" url="HeaderEvents.ascx.cs" comment="//"/>
		<CodeFile id="1" language="VBInMotion" name="Header.ascx" forShow="True" url="Header.ascx" comment="&lt;!--" commentEnd="--&gt;"/>
		<CodeFile id="1.vb" language="VBInMotion" name="HeaderEvents.ascx.vb" forShow="True" url="HeaderEvents.ascx.vb" comment="'"/>
	</CodeFiles>
	<SecurityGroups/>
	<Events>
		<Event name="AfterInitialize" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="13"/>
			</Actions>
		</Event>
	</Events>
	<CachingParameters/>
	<Attributes/>
	<Features/>
</Page>
