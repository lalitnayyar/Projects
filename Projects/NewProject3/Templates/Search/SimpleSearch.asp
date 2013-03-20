<%
Class clsSimpleSearch 'SimpleSearch Class @1-CD1FF4A3

'Page Variables @1-E4F27AC4
    Dim Redirect
    Dim Tpl, HTMLTemplate
    Dim TemplateFileName
    Dim ComponentName
    Dim PathToCurrentPage
    Dim Attributes
    Dim PathToCurrentMasterPage

    ' Events
    Dim CCSEvents
    Dim CCSEventResult
    Dim TemplateSource
    Public Visible
    Public Page
    Public Name
    Public CacheAction
    Private TemplatePathValue
'End Page Variables

'Page Class_Initialize Event @1-FA071F62
    Private Sub Class_Initialize()
        Visible = True
        Set Page = Me
        Set ParentPage = Me
        TemplatePathValue = ""
        Redirect = ""
        TemplateFileName = "SimpleSearch.html"
        Set CCSEvents = CreateObject("Scripting.Dictionary")
        PathToCurrentPage = "./Templates/Search/"
    End Sub
'End Page Class_Initialize Event

'Page Unload_Page Event @1-03133732
    Public Sub UnloadPage()
        CCSEventResult = CCRaiseEvent(CCSEvents, "BeforeUnload", Me)
        Set Page = Nothing
        If NOT Visible Then _
            Exit Sub
        Set CCSEvents = Nothing
    End Sub
'End Page Unload_Page Event

'Page Class_Terminate Event @1-61494ECF
    Private Sub Class_Terminate()
    End Sub
'End Page Class_Terminate Event

'Page BindEvents Method @1-D8FDB1E8
    Sub BindEvents()
        CCSEventResult = CCRaiseEvent(CCSEvents, "AfterInitialize", Me)
    End Sub
'End Page BindEvents Method

'Operations Method @1-77A936FA
    Function Operations()
        If Not Visible Then _ 
            Exit Function
        Operations = Redirect
    End Function
'End Operations Method

'Initialize Method @1-2866BCCB
    Sub Initialize(Name, Path)
        Me.Name = Name
        TemplatePathValue = Path
        If Not Visible Then _
            Exit Sub
        BindEvents
        CCSEventResult = CCRaiseEvent(CCSEvents, "OnInitializeView", Me)
        Set HTMLTemplate = New clsTemplate
        HTMLTemplate.MakeCleanup = True
        Set HTMLTemplate.Cache = TemplatesRepository
        If IsEmpty(TemplateSource) Then
            HTMLTemplate.LoadTemplate TemplateFilePath & TemplatePathValue & TemplateFileName
        Else
            HTMLTemplate.LoadTemplateFromStr TemplateSource
        End If
        GlobalHEADContent = GlobalHEADContent & HTMLTemplate.HEADContent
        HTMLTemplate.SetVar "@CCS_PathToRoot", PathToRoot
        Set Tpl = HTMLTemplate.Block("main")
    End Sub
'End Initialize Method

'Page Show Method @1-ECCA9D36
    Sub Show(MainTpl)
        CCSEventResult = CCRaiseEvent(CCSEvents, "BeforeShow", Me)
        If Not Visible Then _
            Exit Sub
        HTMLTemplate.Parse "main", False
        MainTpl.Variable(Name) = HTMLTemplate.GetVar("main")
        CCSEventResult = CCRaiseEvent(CCSEvents, "BeforeOutput", Me)
    End Sub
'End Page Show Method

'Let TemplatePath Property @1-520E3E1A
    Property Let TemplatePath(NewTemplatePath)
        TemplatePathValue = NewTemplatePath
    End Property
'End Let TemplatePath Property

'Get TemplatePath Property @1-9428206A
    Property Get TemplatePath
        TemplatePath = TemplatePathValue
    End Property
'End Get TemplatePath Property

'TemplateURL Property @1-CFFB06B3
    Property Get TemplateURL
        TemplateURL = Replace(TemplatePathValue, "\", "/")
    End Property
'End TemplateURL Property

End Class 'End SimpleSearch Class @1-A61BA892


%>
