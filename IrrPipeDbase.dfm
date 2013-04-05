object IrrPipeForm: TIrrPipeForm
  Left = 0
  Top = 0
  Caption = 'Irrigation Pipe database'
  ClientHeight = 545
  ClientWidth = 903
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 105
  TextHeight = 14
  object PipeBox2: TGroupBox
    Left = 158
    Top = 257
    Width = 742
    Height = 276
    Caption = 'PIPE DIAMETERS'
    TabOrder = 0
  end
  object gb2: TcxGroupBox
    Left = 620
    Top = 24
    Caption = 'Pipe Group values'
    TabOrder = 1
    Height = 225
    Width = 280
    object Label5: TLabel
      Left = 20
      Top = 103
      Width = 55
      Height = 14
      Caption = 'Pipe Type'
    end
    object Label12: TLabel
      Left = 20
      Top = 160
      Width = 82
      Height = 14
      Caption = 'Hazen Williams '
    end
    object Label13: TLabel
      Left = 20
      Top = 188
      Width = 86
      Height = 14
      Caption = 'Darcy Weisbach'
    end
    object cxLabel4: TcxLabel
      Left = 20
      Top = 24
      Caption = 'Pressure unit'
    end
    object cxLabel5: TcxLabel
      Left = 20
      Top = 48
      Caption = 'Diameter unit'
    end
    object cxLabel6: TcxLabel
      Left = 20
      Top = 72
      Caption = 'Length unit'
    end
    object PresUnitPipe: TcxComboBox
      Left = 132
      Top = 24
      Properties.Items.Strings = (
        'Meters'
        'Feet'
        'Bars'
        'Psi')
      Properties.OnChange = PresUnitPipePropertiesChange
      TabOrder = 3
      Text = 'PresUnit'
      Width = 110
    end
    object DiamUnitPipe: TcxComboBox
      Left = 132
      Top = 44
      Properties.Items.Strings = (
        'Millimeters'
        'Inches')
      Properties.OnChange = PresUnitPipePropertiesChange
      TabOrder = 4
      Text = 'cxComboBox1'
      Width = 110
    end
    object LenUnitPipe: TcxComboBox
      Left = 132
      Top = 72
      Properties.Items.Strings = (
        'Meters'
        'Feet')
      Properties.OnChange = PresUnitPipePropertiesChange
      TabOrder = 5
      Text = 'cxComboBox1'
      Width = 110
    end
    object ptype: TcxComboBox
      Left = 132
      Top = 100
      Properties.Items.Strings = (
        'PVC'
        'Plastic'
        'Epoxy-coated Steel'
        'Cement Asbestos'
        'Galvanized Steel'
        'Alumium'
        'Steel')
      TabOrder = 6
      Text = 'ptype'
      Width = 110
    end
    object cxLabel1: TcxLabel
      Left = 20
      Top = 133
      Caption = 'Default friction factors'
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsLowered
    end
    object pfric: TcxComboBox
      Left = 132
      Top = 157
      Properties.Items.Strings = (
        '100'
        '105'
        '110'
        '115'
        '120'
        '125'
        '130'
        '135'
        '140'
        '145'
        '150')
      TabOrder = 8
      Text = 'ptype'
      Width = 110
    end
    object dfric: TcxComboBox
      Left = 132
      Top = 185
      Properties.Items.Strings = (
        '0.003'
        '0.005'
        '0.010'
        '0.015'
        '0.030'
        '0.150'
        '0.300')
      TabOrder = 9
      Text = 'ptype'
      Width = 110
    end
  end
  object PipeGrid: TAdvStringGrid
    Left = 158
    Top = 24
    Width = 449
    Height = 225
    Cursor = crDefault
    ColCount = 3
    DefaultColWidth = 30
    ScrollBars = ssBoth
    TabOrder = 2
    OnClick = PipeGridClick
    OnEnter = PipeGridEnter
    OnMouseDown = PipeGridMouseDown
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -12
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -12
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -12
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -12
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDownClear = '(All)'
    FixedColWidth = 30
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -12
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -12
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -12
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -12
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -12
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    ScrollWidth = 19
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -12
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    Version = '6.0.2.0'
    ColWidths = (
      30
      177
      198)
  end
  object diamgrid: TAdvStringGrid
    Left = 168
    Top = 275
    Width = 727
    Height = 247
    Cursor = crDefault
    Color = clMoneyGreen
    ColCount = 10
    DefaultColWidth = 20
    FixedRows = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing, goTabs, goThumbTracking]
    ScrollBars = ssBoth
    TabOrder = 3
    OnExit = diamgridExit
    OnEditChange = diamgridEditChange
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -12
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -12
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -12
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -12
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDownClear = '(All)'
    FixedColWidth = 20
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -12
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    Navigation.AlwaysEdit = True
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -12
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -12
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -12
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -12
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    ScrollWidth = 19
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -12
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    Version = '6.0.2.0'
  end
  object SaveBut: TcxButton
    Left = 620
    Top = 222
    Width = 281
    Height = 29
    Caption = 'Data has changed. Click to save'
    LookAndFeel.Kind = lfFlat
    TabOrder = 4
    Visible = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsItalic]
    ParentFont = False
    OnClick = SaveButClick
  end
  object editbox: TcxGroupBox
    Left = 381
    Top = 182
    Caption = 'Pipe Group'
    ParentBackground = False
    ParentColor = False
    Style.Color = clSilver
    Style.Shadow = True
    TabOrder = 5
    Visible = False
    Height = 189
    Width = 337
    object SpeedButton1: TSpeedButton
      Left = 303
      Top = 21
      Width = 23
      Height = 22
      Caption = 'X'
      OnClick = SpeedButton1Click
    end
    object EditBoxPage: TPageControl
      Left = 3
      Top = 21
      Width = 294
      Height = 160
      ActivePage = TabSheet3
      Style = tsFlatButtons
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Add'
        object start1: TcxTextEdit
          Left = 96
          Top = 26
          TabOrder = 0
          Text = 'New group code'
          Width = 189
        end
        object start2: TcxTextEdit
          Left = 96
          Top = 54
          TabOrder = 1
          Text = 'New group description'
          Width = 189
        end
        object cxLabel8: TcxLabel
          Left = -1
          Top = 54
          Caption = 'Pipe Description'
        end
        object cxLabel9: TcxLabel
          Left = -1
          Top = 29
          Caption = 'Pipe Code'
        end
        object cxButton3: TcxButton
          Left = 96
          Top = 95
          Width = 188
          Height = 26
          Caption = 'Start new group'
          TabOrder = 4
          OnClick = cxButton3Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Edit'
        ImageIndex = 1
        object changec: TcxTextEdit
          Left = 96
          Top = 39
          TabOrder = 0
          Text = 'changec'
          Width = 189
        end
        object changep_: TcxTextEdit
          Left = 96
          Top = 67
          TabOrder = 1
          Text = 'changep_'
          Width = 189
        end
        object cxLabel3: TcxLabel
          Left = -1
          Top = 67
          Caption = 'Pipe Description'
        end
        object cxLabel7: TcxLabel
          Left = -1
          Top = 42
          Caption = 'Pipe Code'
        end
        object cxButton2: TcxButton
          Left = 208
          Top = 95
          Width = 76
          Height = 26
          Caption = 'Change'
          TabOrder = 4
          OnClick = cxButton2Click
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Delete'
        ImageIndex = 2
        ExplicitTop = 29
        object cxButton1: TcxButton
          Left = 19
          Top = 80
          Width = 266
          Height = 26
          Caption = 'Delete current group and pipe diameters'
          TabOrder = 0
          OnClick = cxButton1Click
        end
        object del1: TcxLabel
          Left = 23
          Top = 12
          Caption = 'Index of pipe groups'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.LookAndFeel.Kind = lfOffice11
          Style.Shadow = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.Kind = lfOffice11
        end
        object del2: TcxLabel
          Left = 23
          Top = 36
          Caption = 'Index of pipe groups'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsUnderline]
          Style.LookAndFeel.Kind = lfOffice11
          Style.Shadow = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.Kind = lfOffice11
        end
      end
    end
  end
  object NodeBar: TdxNavBar
    Tag = 1
    Left = 0
    Top = 0
    Width = 150
    Height = 545
    Align = alLeft
    BorderStyle = bsSingle
    ActiveGroupIndex = 1
    TabOrder = 6
    View = 10
    object NodeBarGroup2: TdxNavBarGroup
      Caption = 'Pipes'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <>
    end
    object NodeBarGroup1: TdxNavBarGroup
      Caption = 'Nodes'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NodeBarItem6
        end>
    end
    object NodeBarGroup3: TdxNavBarGroup
      Caption = 'Drip'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NodeBarItem8
        end>
    end
    object NodeBarItem6: TdxNavBarItem
      Tag = 1
      Caption = 'Nodes'
      SmallImageIndex = 42
      OnClick = NodeBarItem6Click
    end
    object NodeBarItem8: TdxNavBarItem
      Tag = 3
      Caption = 'Lines'
      SmallImageIndex = 31
      OnClick = NodeBarItem6Click
    end
    object NodeBarStyleItem1: TdxNavBarStyleItem
      Style.BackColor = clSkyBlue
      Style.BackColor2 = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HAlignment = haLeft
      Style.AssignedValues = [savBackColor]
    end
  end
  object PipeDbf: TTzDbf
    Active = True
    DbfFields.Strings = (
      'code, C, 13, 0'
      'name, C, 28, 0'
      'type, C, 7, 0'
      'darcyw, N, 6, 4'
      'hazenw, N, 8, 4'
      'punit, N, 4, 2'
      'lunit, N, 4, 2'
      'dunit, N, 4, 2'
      'od, N, 8, 4'
      'id, N, 8, 4'
      'classname, C, 8, 0'
      'maxpress, N, 8, 4'
      'cost, N, 9, 2'
      'pen, N, 5, 2'
      'linetype, N, 4, 2'
      'kd, N, 6, 4'
      'partnumber, C, 7, 0')
    DbfFileName = 'c:\mm_express\irrigation\irrpipe.dbf'
    HideDeletedRecs = True
    TableLanguage = tlOem
    ReadOnly = False
    CreateIndex = ciNotFound
    Exclusive = True
    Left = 52
    Top = 304
  end
  object DataSource3: TDataSource
    DataSet = PipeDbf
    Left = 96
    Top = 304
  end
end
