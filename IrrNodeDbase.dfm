object IrrNodeForm: TIrrNodeForm
  Left = 0
  Top = 0
  Caption = 'Irrigation Node Database'
  ClientHeight = 579
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 105
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 156
    Top = 33
    Width = 793
    Height = 512
    ActivePage = TabSheet2
    Images = imgLarge
    MultiLine = True
    TabOrder = 6
    TabPosition = tpLeft
    TabWidth = 120
    object TabSheet1: TTabSheet
      Caption = 'Series'
      ImageIndex = 4
      object SeriesGrid: TAdvStringGrid
        Tag = 1
        Left = 16
        Top = 30
        Width = 265
        Height = 456
        Cursor = crDefault
        Color = clCream
        ColCount = 2
        Ctl3D = True
        DefaultColWidth = 40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        GradientEndColor = clRed
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        OnClick = SeriesGridClick
        OnMouseDown = SeriesGridMouseDown
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
        FixedColWidth = 40
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -12
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
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
          40
          189)
      end
      object cxGroupBox1: TcxGroupBox
        Left = 300
        Top = 199
        Caption = 'Series Units'
        TabOrder = 1
        Height = 110
        Width = 265
        object cxLabel1: TcxLabel
          Left = 8
          Top = 24
          Caption = 'Pressure'
        end
        object cxLabel2: TcxLabel
          Left = 8
          Top = 48
          Caption = 'Flow'
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 72
          Caption = 'Area'
        end
        object emitarea: TcxRadioGroup
          Left = 156
          Top = 12
          Caption = 'Emitter Area'
          Properties.Items = <
            item
              Caption = 'Radius'
            end
            item
              Caption = 'Diameter'
            end>
          TabOrder = 3
          OnClick = PresUnitClick
          Height = 81
          Width = 101
        end
        object PresUnit: TcxComboBox
          Left = 64
          Top = 24
          Properties.Items.Strings = (
            'Meter'
            'Feet'
            'Bars'
            'Psi')
          TabOrder = 4
          Text = 'PresUnit'
          OnClick = PresUnitClick
          Width = 86
        end
        object FlowUnit: TcxComboBox
          Left = 64
          Top = 48
          Properties.Items.Strings = (
            'l/s'
            'm3/h'
            'GPM'
            'l/h'
            'GPH'
            'l/m')
          TabOrder = 5
          Text = 'cxComboBox1'
          OnClick = PresUnitClick
          Width = 86
        end
        object LenUnit: TcxComboBox
          Left = 64
          Top = 72
          Properties.Items.Strings = (
            'Meters'
            'Feet')
          TabOrder = 6
          Text = 'cxComboBox1'
          OnClick = PresUnitClick
          Width = 86
        end
      end
      object nozzle: TcxLabel
        Left = 392
        Top = 3
        Caption = 'Series logo'
        ParentColor = False
        ParentFont = False
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Arial'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBImage1: TcxDBImage
        Left = 300
        Top = 30
        Hint = 'Double click to load an image'
        DataBinding.DataField = 'IMAGE'
        DataBinding.DataSource = DataSource2
        TabOrder = 3
        OnDblClick = cxDBImage1DblClick
        Height = 151
        Width = 265
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Models'
      ImageIndex = 3
      object Memo1: TMemo
        Left = 559
        Top = 382
        Width = 176
        Height = 91
        BorderStyle = bsNone
        Lines.Strings = (
          'PIPE TYPE to regulate'
          '0 = all pipes'
          '1 = only mainlines'
          '2 = only manifolds'
          '3 = only laterals')
        TabOrder = 4
      end
      object flowgroup: TcxGroupBox
        Left = 11
        Top = 363
        Caption = 'Pressure / Flow / Discharge Area'
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 133
        Width = 736
        object flowgrid: TAdvStringGrid
          Left = 3
          Top = 17
          Width = 578
          Height = 113
          Cursor = crDefault
          BevelInner = bvLowered
          Color = clWhite
          ColCount = 20
          Ctl3D = False
          DefaultColWidth = 85
          DrawingStyle = gdsGradient
          RowCount = 4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goThumbTracking]
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          OnExit = flowgridExit
          OnEditChange = flowgridEditChange
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -12
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ControlLook.FixedGradientHoverFrom = 13619409
          ControlLook.FixedGradientHoverTo = 12502728
          ControlLook.FixedGradientHoverMirrorFrom = 12502728
          ControlLook.FixedGradientHoverMirrorTo = 11254975
          ControlLook.FixedGradientDownFrom = 8816520
          ControlLook.FixedGradientDownTo = 7568510
          ControlLook.FixedGradientDownMirrorFrom = 7568510
          ControlLook.FixedGradientDownMirrorTo = 6452086
          ControlLook.FixedGradientDownBorder = 14007466
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
          FixedColWidth = 85
          FixedRowHeight = 22
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -12
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          Flat = True
          FloatFormat = '%.2f'
          Look = glSoft
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
          ScrollColor = clCream
          ScrollType = ssEncarta
          ScrollWidth = 19
          SearchFooter.Color = clBtnFace
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
          SelectionColor = clHighlight
          SelectionTextColor = clHighlightText
          SortSettings.HeaderColorTo = 16579058
          SortSettings.HeaderMirrorColor = 16380385
          SortSettings.HeaderMirrorColorTo = 16182488
          Version = '6.0.2.0'
        end
        object utilbox: TcxGroupBox
          Left = 587
          Top = 17
          Caption = 'Utilities'
          Style.BorderStyle = ebsNone
          TabOrder = 1
          Height = 113
          Width = 141
          object cxButton4: TcxButton
            Left = 10
            Top = 37
            Width = 122
            Height = 25
            Hint = 'Set and fill the pressure input values'
            Caption = 'Pressure range'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = cxButton4Click
          end
          object cxButton5: TcxButton
            Left = 10
            Top = 68
            Width = 122
            Height = 25
            Hint = 'Fill using (K,P,X) input box'
            Caption = 'K,P,X input box'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = cxButton5Click
          end
        end
      end
      object vertgrid: TcxDBVerticalGrid
        Left = 380
        Top = 199
        Width = 307
        Height = 158
        OptionsView.RowHeaderWidth = 125
        TabOrder = 1
        DataController.DataSource = DataSource1
        Version = 1
        object vertgridDBEditorRow1: TcxDBEditorRow
          Properties.Caption = 'Pattern name'
          Properties.DataBinding.FieldName = 'PATNAME'
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object vertgridDBEditorRow2: TcxDBEditorRow
          Properties.Caption = 'Color (pen no.)'
          Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
          Properties.EditProperties.Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20')
          Properties.DataBinding.FieldName = 'COLOR'
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
        object vertgridDBEditorRow3: TcxDBEditorRow
          Properties.Caption = 'Cost'
          Properties.DataBinding.FieldName = 'COST'
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object vertgridDBEditorRow4: TcxDBEditorRow
          Properties.Caption = 'Part no.'
          Properties.DataBinding.FieldName = 'PARTNAME'
          ID = 3
          ParentID = -1
          Index = 3
          Version = 1
        end
        object vertgridDBEditorRow5: TcxDBEditorRow
          Properties.Caption = 'KD factor'
          Properties.Hint = 'Pressure loss created by node'
          Properties.DataBinding.FieldName = 'SEC_LOSS'
          ID = 4
          ParentID = -1
          Index = 4
          Version = 1
        end
        object vertgridDBEditorRow6: TcxDBEditorRow
          Properties.Caption = 'CV coefficient'
          Properties.Hint = 'Manufacture'#39's coefficient'
          Properties.DataBinding.FieldName = 'CV'
          ID = 5
          ParentID = -1
          Index = 5
          Version = 1
        end
        object vertgridDBEditorRow7: TcxDBEditorRow
          Properties.Caption = 'Circle Angle'
          Properties.Hint = 'Circle : 90,190,270,360'
          Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
          Properties.EditProperties.Items.Strings = (
            '90'
            '270'
            '180'
            '360')
          Properties.DataBinding.FieldName = 'CIRCANGLE'
          ID = 6
          ParentID = -1
          Index = 6
          Version = 1
        end
      end
      object nozzlegrid: TAdvStringGrid
        Tag = 3
        Left = 380
        Top = 8
        Width = 307
        Height = 193
        Cursor = crDefault
        Color = clMoneyGreen
        ColCount = 2
        Ctl3D = True
        DefaultColWidth = 40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        GradientEndColor = clRed
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 2
        OnClick = nozzlegridClick
        OnMouseDown = SeriesGridMouseDown
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
        FixedColWidth = 40
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -12
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
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
          40
          193)
      end
      object ModelGrid: TAdvStringGrid
        Tag = 2
        Left = 11
        Top = 8
        Width = 270
        Height = 349
        Cursor = crDefault
        Color = clSkyBlue
        ColCount = 2
        Ctl3D = True
        DefaultColWidth = 40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        GradientEndColor = clRed
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing, goTabs, goThumbTracking]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 3
        OnClick = ModelGridClick
        OnMouseDown = SeriesGridMouseDown
        OnSelectCell = ModelGridSelectCell
        OnCanEditCell = ModelGridCanEditCell
        OnEditingDone = ModelGridEditingDone
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
        FixedFont.Style = []
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
          20
          189)
      end
      object BoostFormat: TRadioGroup
        Left = 93
        Top = 359
        Width = 377
        Height = 69
        Caption = 'Booster Pump Type'
        ItemIndex = 0
        Items.Strings = (
          'Absolute - Raise system pressure to Booster value (Yes)'
          'Relative - Add Booster pressure to system pressure (No)')
        TabOrder = 5
        Visible = False
        OnClick = BoostFormatClick
      end
      object Panel7: TPanel
        Left = 238
        Top = 114
        Width = 197
        Height = 159
        Color = clOlive
        ParentBackground = False
        TabOrder = 6
        Visible = False
        object Label3: TLabel
          Left = 9
          Top = 68
          Width = 89
          Height = 14
          Caption = 'Flow Constant K'
        end
        object Label8: TLabel
          Left = 9
          Top = 94
          Width = 98
          Height = 14
          Caption = 'Flow Coefficient X'
        end
        object Label9: TLabel
          Left = 30
          Top = 34
          Width = 138
          Height = 14
          Caption = 'Q (gph)= K * P (psi) ^ X'
        end
        object kcon: TEdit
          Left = 124
          Top = 64
          Width = 61
          Height = 22
          TabOrder = 0
          Text = '0.15'
        end
        object xcon: TEdit
          Left = 124
          Top = 90
          Width = 61
          Height = 22
          TabOrder = 1
          Text = '0.50'
        end
        object BitBtn4: TBitBtn
          Left = 13
          Top = 124
          Width = 80
          Height = 26
          Caption = 'OK'
          TabOrder = 2
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 107
          Top = 124
          Width = 80
          Height = 26
          Caption = 'Cancel'
          TabOrder = 3
          OnClick = BitBtn5Click
        end
        object Metric: TRadioButton
          Left = 21
          Top = 10
          Width = 65
          Height = 18
          Caption = 'Metric'
          TabOrder = 4
        end
        object english: TRadioButton
          Left = 102
          Top = 9
          Width = 70
          Height = 18
          Caption = 'English'
          Checked = True
          TabOrder = 5
          TabStop = True
        end
      end
      object Panel8: TPanel
        Left = 251
        Top = 219
        Width = 172
        Height = 138
        Color = clYellow
        TabOrder = 7
        Visible = False
        object Label7: TLabel
          Left = 9
          Top = 13
          Width = 77
          Height = 14
          Caption = 'Start pressure'
        end
        object Label10: TLabel
          Left = 9
          Top = 43
          Width = 71
          Height = 14
          Caption = 'End pressure'
        end
        object Label11: TLabel
          Left = 9
          Top = 68
          Width = 62
          Height = 14
          Caption = 'Increments'
        end
        object BitBtn8: TBitBtn
          Left = 4
          Top = 102
          Width = 80
          Height = 27
          Caption = 'OK'
          TabOrder = 0
          OnClick = BitBtn8Click
        end
        object BitBtn9: TBitBtn
          Left = 87
          Top = 102
          Width = 80
          Height = 27
          Caption = 'Cancel'
          TabOrder = 1
          OnClick = BitBtn9Click
        end
        object startR: TEdit
          Left = 94
          Top = 9
          Width = 69
          Height = 22
          TabOrder = 2
          Text = 'startR'
        end
        object endR: TEdit
          Left = 94
          Top = 38
          Width = 69
          Height = 22
          TabOrder = 3
          Text = 'endR'
        end
        object incR: TEdit
          Left = 94
          Top = 68
          Width = 69
          Height = 22
          TabOrder = 4
          Text = 'incR'
        end
      end
    end
  end
  object NodeBar: TdxNavBar
    Tag = 1
    Left = 0
    Top = 0
    Width = 150
    Height = 579
    Align = alLeft
    BorderStyle = bsSingle
    ActiveGroupIndex = 0
    TabOrder = 0
    View = 10
    OptionsImage.SmallImages = imgLarge
    object NodeBarGroup1: TdxNavBarGroup
      Caption = 'Nodes'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NodeBarItem1
        end
        item
          Item = NodeBarItem2
        end
        item
          Item = NodeBarItem3
        end
        item
          Item = NodeBarItem5
        end
        item
          Item = NodeBarItem4
        end
        item
          Item = NodeBarItem6
        end>
    end
    object NodeBarGroup2: TdxNavBarGroup
      Caption = 'Pipes'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NodeBarItem7
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
    object NodeBarItem1: TdxNavBarItem
      Tag = 1
      Caption = 'Pumps'
      LargeImageIndex = 0
      SmallImageIndex = 5
      OnClick = NodeBarItem1Click
    end
    object NodeBarItem2: TdxNavBarItem
      Tag = 2
      Caption = 'Valves'
      LargeImageIndex = 1
      SmallImageIndex = 1
      CustomStyles.Item = NodeBarStyleItem1
      OnClick = NodeBarItem1Click
    end
    object NodeBarItem3: TdxNavBarItem
      Tag = 3
      Caption = 'Emitters'
      LargeImageIndex = 2
      SmallImageIndex = 33
      OnClick = NodeBarItem1Click
    end
    object NodeBarItem5: TdxNavBarItem
      Tag = 4
      Caption = 'Fittings'
      SmallImageIndex = 40
      OnClick = NodeBarItem1Click
    end
    object NodeBarItem4: TdxNavBarItem
      Tag = 5
      Caption = 'Regulators'
      LargeImageIndex = 3
      SmallImageIndex = 34
      OnClick = NodeBarItem1Click
    end
    object NodeBarItem6: TdxNavBarItem
      Tag = 6
      Caption = 'Boosters'
      SmallImageIndex = 42
      OnClick = NodeBarItem1Click
    end
    object NodeBarSeparator1: TdxNavBarSeparator
      Caption = 'NodeBarSeparator1'
    end
    object NodeBarItem7: TdxNavBarItem
      Tag = 2
      Caption = 'Pipes'
      SmallImageIndex = 22
      OnClick = NodeBarItem7Click
    end
    object NodeBarItem8: TdxNavBarItem
      Tag = 3
      Caption = 'Lines'
      SmallImageIndex = 31
      OnClick = NodeBarItem7Click
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
  object HeaderLabel: TcxLabel
    Left = 156
    Top = 4
    Caption = 'PUMPS'
    ParentColor = False
    ParentFont = False
    Style.BorderStyle = ebsSingle
    Style.Color = clBtnFace
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.Kind = lfOffice11
    Style.LookAndFeel.NativeStyle = True
    Style.Shadow = True
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.NativeStyle = True
    Properties.LabelStyle = cxlsRaised
  end
  object series: TcxLabel
    Left = 280
    Top = 3
    Caption = 'series'
    ParentColor = False
    ParentFont = False
    Style.BorderStyle = ebsNone
    Style.Color = clBtnFace
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    Properties.LabelStyle = cxlsRaised
  end
  object Panel1: TPanel
    Left = 616
    Top = 372
    Width = 265
    Height = 137
    BevelOuter = bvLowered
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object Image7: TImage
      Left = 0
      Top = 0
      Width = 20
      Height = 131
      Picture.Data = {
        07544269746D617076230000424D762300000000000036000000280000001500
        00008D0000000100180000000000402300002610000026100000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FCFCFCF7F7F7EEEEEEE6E6E6FFFFFFE6E6E6EEEEEEF7F7F7FCFCFCFEFEFEFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FCFCFCF6F6F6ECECECE3E3E3E0E0E0E3E3E3ECECECF6F6F6FCFCFCFEFEFEFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEEEBCBCEDB8B8EA
        AFAFE5A5A5DEEBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EBEBEBE2E2E2DFDFDFE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EAEAEAE1E1E1DEDEDEE2E2E2FFFFFFF6F6F6FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EAEAEAE1E1E1DEDEDEE1E1E1EAEAEAF5F5F5FBFBFBFFFFFFFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EAEAEAE1E1E1DEDEDEE1E1E1EAEAEAF5F5F5FBFBFBFEFEFEFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EAEAEAE1E1E1DEDEDEE1E1E1EAEAEAF5F5F5FBFBFBFEFEFEFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EAEAEAE1E1E1DEDEDEE1E1E1EAEAEAF5F5F5FBFBFBFEFEFEFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EAEAEAE1E1E1DEDEDEE1E1E1EAEAEAF5F5F5FBFBFBFEFEFEFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EAEAEAE1E1E1DEDEDEE1E1E1EAEAEAF5F5F5FBFBFBFEFEFEFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0EAEAEAE1E1E1DEDEDEE1E1E1EAEAEAF5F5F5FBFBFBFEFEFEFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0E9E9E9E0E0E0DDDDDDE0E0E0E9E9E9F4F4F4FBFBFBFDFDFDFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0E7E7E7DEDEDEDBDBDBDEDEDEE7E7E7F3F3F3FAFAFAFDFDFDFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C00000C00000C0
        0000C00000C0E5E5E5DCDCDCD8D8D8DCDCDCE4E4E4F0F0F0F8F8F8FCFCFCFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE0000C00000C00000C0
        0000C00000C0E1E1E1D8D8D8D4D4D4D8D8D8E1E1E1ECECECF5F5F5FBFBFBFDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE0000C00000C00000C0
        0000C00000C0DDDDDDD4D4D4D0D0D0D4D4D4DCDCDCE7E7E7F2F2F2F9F9F9FDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE0000C00000C00000C0
        0000C00000C0D9D9D9D0D0D0CCCCCCD0D0D0D8D8D8E2E2E2EEEEEEF7F7F7FCFC
        FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE0000C00000C00000C0
        0000C00000C0D6D6D6CDCDCDCACACACDCDCDD4D4D4DFDFDFEBEBEBF5F5F5FBFB
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE0000C00000C00000C0
        0000C00000C0D5D5D5CDCDCDC9C9C9CCCCCCD4D4D4DFDFDFEAEAEAF4F4F4FBFB
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3EF0000C00000C00000C0
        0000C00000C06868C6CDCDD0CDCDCDD0D0D0D7D7D7E1E1E1ECECECF6F6F6FBFB
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3F40000C00000C00000C00000C0
        0000C00000C00000C06F6FC6D6D6D6D9D9D9DFDFDFE7E7E7F0F0F0F8F8F8FCFC
        FCFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFE0F0FC30000C00000C00000C00000C0
        0000C00000C00000C00000C0CCCCDAE2E2E2E8E8E8EFEFEFF5F5F5FAFAFAFDFD
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9F90000C00000C00000C00000C00000C0
        0000C00000C00000C00000C0ADADDAEEEEEEF1F1F1F6F6F6FAFAFAFCFCFCFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3F40000C00000C00000C00000C00000C0
        0000C00000C00000C00000C0A5A5DFF7F7F7F9F9F9FBFBFBFDFDFDFEFEFEFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2FB0000C00000C00000C00000C00000C0
        0000C00000C00000C00000C0D2D2EEFCFCFCFCFCFCFDFDFDFEFEFEFEFEFEFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE3B3BCE0000C00000C00000C00000C0
        0000C00000C00000C01D1DC6F9F9FCFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2FB0000C00000C00000C00000C0
        0000C00000C00000C0D8D8F4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2FB4848D20000C00000C0
        0000C02D2DCBE9E9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5FCEEEEFA
        F2F2FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FDFF}
      Stretch = True
      Transparent = True
    end
    object Add1: TcxLabel
      Left = 21
      Top = 7
      Caption = 'Add'
    end
    object edit1: TcxLabel
      Left = 21
      Top = 52
      Caption = 'Edit'
    end
    object editadd: TcxTextEdit
      Left = 21
      Top = 24
      Hint = 'Enter new element'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = 'editadd'
      Width = 180
    end
    object editedit: TcxTextEdit
      Left = 21
      Top = 72
      Hint = 'Edit this element'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = 'editedit'
      Width = 180
    end
    object editdelete: TcxButton
      Tag = 3
      Left = 21
      Top = 100
      Width = 240
      Height = 25
      Hint = 'Delete this element'
      Layout = blGlyphRight
      Caption = 'editdelete'
      OptionsImage.Glyph.Data = {
        B6050000424DB605000000000000360000002800000015000000160000000100
        1800000000008005000026100000261000000000000000000000F8FBFC91CAB8
        1BA17321B27A2CBC8334C68836CD8D3BD3933CD7943DD9953EDB963DDA943DD9
        943AD79235D28D35C98A30BF8627B67F1CAA762AA175C9E5DBFFD8ECE316946B
        18A47121B17B2CBB8233C58735CC8E3BD2943FD59542D89742D89741D89541D8
        953ED3943AD09136C98A30BF8526B67F1EAA76139D6E45A486FF93C7B5119365
        1BA27220B8801FCC8D20D49021D49422D59521D59522D69522D69522D69522D6
        9521D69421D59422D3931FD1921FC68920AE78129C6D128B62FF80B9A80D9869
        1FB27B45E9B976F8D681F9DE88FAE087FAE085FAE086FBE086FBE086FBE086FB
        E086FBE085FADF81FADD86F9DC6CF8D432F1BC1FBD870F8E63FF7BBCA620AE77
        60C3A09EF4EB5AF2DB49F2D54AF2D74BF2D84AF3D84AF3D84AF3D84AF3D84AF3
        D84AF3D84AF3D84BF1D850F1D96FF2E0A4F7EA47E2B51CA779FF88CEB430B47C
        77DEC03AE2C932E2C831E3C933E3C833E3C934E4C934E4C933E4C934E4C934E4
        C933E4C933E3C932E2C832E3C931E4C848E2C770D1AF26B680FF8FDBBF51C392
        4ED5AF3AD7B439D8B43CD8B43AD8B33AD8B33BD9B53BD9B43AD8B43AD8B33AD8
        B439D8B33AD9B43AD8B33AD8B33AD8B33CD7B35ED4AE36BE81FF94DFC15ACF98
        42D19D36CF9B35D09B35CF9B35CF9C35CF9C36D09D36D09D35D09D35CF9C35CF
        9C35CF9C35CF9C34CF9A33CE9933CE9A36D0995BD5A63CC68AFF96E1C25AD49A
        3ECF9130C9842ECA832ECA832FCB852DCA842ECB852FCB862ECA852ECA852DCA
        842DCA842FCB852ECB842ECB832CCB832CCB825AD79F43CD91FF98E4C25ED99E
        3ACF832AC67125C87027C77025C87125C87126C77328C87428C77229C77229C7
        7226C77226C87224C87026C87024C77127C77159D89B49D291FF9AE6C45EDCA0
        32CF7A1EC5651FC6613DC97776D79B76D69B74D79D74D79E74D79C75D79C74D7
        9C73D79C73D79B68D69525C6671EC6631EC66355D8984CD593FF98E6C45FDCA2
        2FCF761CC55C1BC659B2E4C4F1F2EFF1F3EFF3F1F0F3F2F0F1F2F0EFF2F0F0F3
        F0F3F2F0F3F2EFF3EFEF70D7981BC6591AC65952DA944ED795FF98E7C461DDA3
        2DCE7514C5591EC35ABAE1CAF8F0F2F8EFF1F8F1EFF8F2EFF8F2EFF8F2EFF8F2
        EFF8F2EFF7F2EEF1EFF179D39713C55915C65852D9944FD795FF98E6C460DCA2
        2FCE7518C55A19C45B45B67289BB9989BB9A8ABB9A8ABB9A8ABB9A8ABB9A89BB
        9A89BB9A8ABB997EBA9127BB6123C3602ECB696ADDA251D999FF98E4C25DD8A0
        32CB751AC15B1AC15C1CC15C1DC15C1DC15C1EC15E1DC05E1EC05E1EC05E1DC1
        5E1CC05E1BC05E1FC15D3ECD775CD38D5FD48B83E2B24FD69BFF97E3C15DD59C
        34C6781EBC601DBE5F1EBD5E1DBD5E1DBD5E1FBE601EBD601EBD601FBE611DBD
        601DBD6424BC6553D0876BD39365D19262D18D85DEB34DD399FF93E0BF57D097
        33C27C23B86721B86721B86621B96520B96522B96723BA6923BA6923BA6922B9
        6821B86852C8876FD19C6BD09968CE9767CE9482DDB14DCE97FF9ADDC24FC791
        3ABF8523B57322B57223B57123B67022B67023B57223B67324B67323B67322B6
        7231BC7A71D2A46ECFA36CCDA069CD9E69CB9B8CDBB83DC58FFFBDE7D635B381
        55C99B29B58124B58021B57E1FB67E1FB77F20B67E21B67E21B77F21B78020B5
        7F4DC69876D1AF71CFAC6CCEA969CEA76BCDA887DBB93BBD8CFFF1FAF656B692
        55BB9267D0AF3AC29A2FBE962FC09730C0972FBF972FBF972EC0972DC1982EC0
        9769D0B07DD7BD78D6BC78D4BA82D6BF97E0C945CBA196D9C4FFF8FDFDE4F3EE
        4FB68F3CC39A68D4B471D7B76CD8B56CD8B56ED6B66FD6B770D6B673D7B673D8
        B775DAB877DABC7CDABC78DABA62D1AE34BC8F83D1B7F3FAFBFFFDFEFEF7FCFC
        F4F9F7B4E1D37ECCB36FCAAF72CBAC73CCAD71CDAF71CDB071CCAF72CEB171CD
        B074CBAE75CAAE72C9AC75C8A98CCEB6CDEDE3F7FAF6FDFDFDFF}
      OptionsImage.Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = cxButton2Click
    end
    object cxButton2: TcxButton
      Tag = 1
      Left = 207
      Top = 24
      Width = 28
      Height = 30
      Hint = 'Click to add'
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.Data = {
        F6050000424DF605000000000000360000002800000015000000170000000100
        180000000000C0050000261000002610000000000000000000009FA1A1ABBEE3
        3065CB2E66D6356DDD3B74E1417AE7467EEB4B84F1518AF7568FFC548CF94E87
        F44881EE427AE83D74E3376FDD3069D92D62D27291D1F2F9F9FF8691992B64C8
        2A61D02F67D6356DDC3873E03E7AE6437FEB4984F14F8AF7538FFB518CF94B87
        F34581ED407BE93A75E4356FDD3169D82C64D2245CCEA5BCDEFF405A83235BC9
        2761CF306DD73678DC387EE03B81E33E84E43F87E64289E8448BEA428AE94188
        E73E85E43C82E33A80E1357CDF3172DD2865D2285ECA4C7BCFFF1E3F7E1F5DCF
        367DE678CAED9FEFF5ACF3F8AEF3F9AEF3F8AEF3F9ADF3F9ADF3F9ADF3F9AEF3
        F9AEF3F9AEF2F9AEF2FAABF1F88BDFF053AAE62967D32F62C5FF1A3D813176E4
        70A3EDD3F5FBCCF3FCC4F6FBC5F6FCC5F7FBC5F7FBC4F7FAC5F7FAC5F7FAC4F7
        FBC5F7FBC5F7FBC4F7FBC5F6FBD8F8FAB2F0F756A8E82C67C9FF22478B457BEA
        A3CBF78ADEF579DAF979DBF87ADDF97BDDF97ADCF97BDDF877DFF679E0F67BDE
        F97BDEFA7BDEFA7ADCF97ADDF97EDEF7ABDDF86FA7EC407CDAFF2750975D89E9
        74B5F25DB8F561B7F65FB6F460B8F561B8F560B8F561B9F368BBEE61BAF160B8
        F461B9F661B9F55FB6F462B8F45EBAF364B4F37DA1F0467CDDFF284F95638DE9
        5492E84A92EB4793EA4693EA4793EA4592EB4594E97EADEAE4ECF7B0CCEC4692
        E94793EA4692EB4591EA4791EA4692E84890E9749DEE457AD8FF274D945D89E2
        4078DC3371DC3371DC3471DC3371DB3170DC3274DD8AA8E3F0F0F5CAD5ED3370
        DA3471DC3370DD336FDD336FDD3370DB3370DB6B93E94375D4FF2549925984DE
        305FD22251CE2251CE2151CF2151CD2250D01F53CE8199D5EFEFF4C9CEE82050
        CD2251D02351CF2150D0214FD22151CE2353CF648AE33E72CFFF22478D567ED9
        264AC4163ABE163ABE1639BE1538C0133CBB1538C28290CBF0F1F1C9CFE3193C
        B7173ABE163CBC1838C2193CBA163ABE193CC05E82DE396FCAFF1F448A527AD5
        1A3CB60D2AAF0E29AF495ABD8592CB7F91CF8995CCD8DCECF7F2EDF1F1F09EA9
        D68E96D48C96D07483C80E2DAD0D29AF0F2CB1597CD8346AC5FF1C43894E77D2
        1534AF0821A60923A1D1D4E3F6F1F1F4F1EFF4F1F0F2F2EEF7F1F1F6F1F1F3F1
        F0F6F0F0F7EFF3F3EFF4394DAE0823A30A25A55777D52F65C5FF1E448A507AD4
        1837B20A22AB0B24A78C8FBFD5D2DCD7D4D8D5D8D9F6EEF1F6F0F1F6F0F1E1E0
        E2D5D2DCD5D5D7BBC1CD2232A50A23AA0D28A75A7DD23269C6FF21488C547DDA
        1D3EBC1028B60F28B4102BB1142BA61529A8162CA4929CC7F4F0F3DBD9E41D32
        A21329AA162BA6122AB01029B52B40BB3F56C47D9CE73C6FCCFF234B8E5681DE
        2346C61632C21531C01632C11531C11531C21331C27987D0F5F1EFC7C7E71731
        BF1632C21532C32540C1546AD25C73D35C72D28AA6ED4474CFFF264D915B85E1
        2C51D11E3FCE1D3ECD1E3FCE1D3FCE1D3FCC1A3FCD7E8CD8F4F0F2C6CAE91E3E
        CB1D3FCD2D4DCC657DE1677FDB667ADE617ADA8FABF04978D5FF2A4E95618AE5
        3560DD2750DA2851DA2851DA2750DA2551D82551D87990D8F3F2EBBCC6E22850
        D82A54D56584E7748EE6708BE46B88E46A87E396B1F34D7DDBFF3257925D8BEA
        4978E53769E53769E53568E43568E43269E23669E03F6BD5788FBF4F76C83568
        E3537CE67FA1EC7D9EEC799BEB7499EB7399EA97B7F55288DCFF667A934E81E6
        769FF34A86EF4586EE4786ED4886EE4786EE4785EC4785EE4886EC4787EF4486
        EE78A4F18AB4F485B1F284AEF07FACF392B7F080ACEF89ABE5FF9A9F9F6B94E4
        72A2EF96C0F678B1F675AEF676AEF575AFF575AEF575AEF576AEF577B0F772AE
        F5A1C8F6A8CBF7A7C9F8A4C9F6B4CEF8A6CFF866A5E8D9E3EEFF9EA1A1E4ECF3
        749FE37EB9F59DCAF5A3CDF7A2CCF6A2CCF7A3CCF8A2CCF8A2CCF8A2CCF8A0CB
        F7A6CEF6A5CDF6A7CEF6A7CCF58CC2F66FAAEBC6D7EDFBFAFBFFA0A2A3FCFCF9
        F1F5F8C0D3E79AC1EE9CBEF09FBFF1A0C2F1A1C4F2A2C4F3A2C4F4A3C5F4A1C4
        F39FC1F19EC0F09EBEEF9EBCEEADC7EBE7F0F3FCFDFCFDFDFDFF}
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Tag = 2
      Left = 207
      Top = 69
      Width = 28
      Height = 25
      Hint = 'Click to post'
      OptionsImage.Glyph.Data = {
        36060000424D3606000000000000360000002800000015000000180000000100
        1800000000000006000026100000261000000000000000000000F9FDFBFCFBFB
        F4F7F9BACCE58EADE48CACE590B1E993B4EB96B8EF99BAF19CBEF599BBF297B8
        F095B5EC92B1E98FADE78DABE5ACC3E3EAF1F8FCFCFBFDFDFEFFFAFAFBD9E7F0
        517FCF2968D7346CDB3C73E34079E8447EEC4A84F2508AF8558FFB518BF94C86
        F44780EE427AE83C75E1356EDD2E67D94073CEC0D5EBFDFDFBFFF0F4F74C78CD
        2763CE3167D6356DDA3B74E13F7AE54380E94986EF4F8BF55591FA518DF64C88
        F24781EB417AE53B75E03A70DB2E69D62664D2396CC2E8F0F8FFADC1E1225ACC
        2962D02C6AD1336FDC3975E33F7BE6447FE94885EE4C8AF3508EF74D8BF44986
        F04381EB3E7BE73975E33270E02B6AD52965D0235ECAB8C9E7FF7495D41F5DC8
        2D6DD6519AE96ABEEC6EC2EF6FC4F070C5F16FC4F170C5F170C5F170C5F170C5
        F070C5EF70C5EF6FC6ED69C0EC58A8E92F79D6235ECFADC2E9FF658CD32B6CDA
        5497F0B4EFF8D9F7FCDCF8FDDDF9FEDCF9FEDCF9FEDDF9FEDDF9FEDCF9FEDCF9
        FEDCF9FEDCF9FEDBF9FCDCF9F9C3F5F78DDEF33684DFACC2EAFF6391D8417CEB
        ABC2F6AFEEF692E8FA8BE9FB8BEAFB8DEAFC8DEAFC8DEAFC8DEAFC89EAFB88EB
        FB89EBFC89EBFC8BEAFC8AEAFBA4EDFAC4ECF665B0F2B4CAEFFF6D9EE55D88E8
        84C5F56BC8F868C8F76BC8F669C8F86BCAF66CC9F56DC9F56CC9F76CC9F76CC9
        F76CC9F76CC9F76BC8F76CC8F86BC9F980C7F46C99E8B8CEF7FF72A0E86B91E8
        5AA0ED55A4EB52A4EE52A3ED58A4EA55A4EF63ABEB52A4EF53A4ED53A4EE53A4
        EE53A5EE52A3ED51A3ED53A4EE52A3ED55A0E977A0EDB4C9F4FF6F9DE6698FE4
        4080E33E7FE33C7FE53C7FE44786E2C5D4EEE8E9F47CA4E03B7FE53D7FE33D7F
        E43C7FE53B7EE33B7EE33A7DE33B7DE43D7DE46D98EAB2C7EFFF6E99E1608BE1
        3365D62C5ED5285ED63665D2B9CBEAF6F1F1F3F0F3EBECEF6689D8275CD72C60
        D0295DD82A5FD62A5FD62A5FD62A5ED52860D56791E3B1C4EEFF6C97E05B85DD
        204FC91D42C4294BC0B3C0E3F6F0F0F7F1F0F4F2F0F9EEF3E8E8F05874C91944
        C21D43C51C44C51B44C51B43C41B44C51D47C76188DEAFC2EBFF6994DC5681D9
        183EBA1733B3ABB5DEF5F2EDF0EFF58F92BA525F9CD6DBDFF5F0F1E8E7EF505F
        C10E33B11230B81130B6102EB61230B71333B65A83D9ACC0E9FF6692DA517DD3
        142FB42739A5EEEEEDEFEEF3858DB40C28A30B25A73740A3DADDDEF5F1F3E2E8
        EB4954B50A28A30B25A70B23A90B24A90C28AB577DD5ABBFE6FF6691DA527BD3
        1530AC0C21A45D67AD6972AD0E22A30C21A30B1FAA0921A53543A1DFDCE2F3EE
        F4E5E7E5454FAE0722A50B22A40B22A40A25A8577CD5ACBEE7FF6994DC557FD7
        1835B30E26B00D25B10E28AD0E25B20E27B10F27B10E27B00E27B03B49A9E1DE
        E7F4EFF3DFE5E9404FB70B25B40D28AC112AB15E83D9ACC0E9FF6C97E05884DC
        1E3DBE132FBB122DBC122DBC122DBA122EBA122EBA122DBA132FBB102EB94351
        B0E2E0E4F4F0F2DFE0ED515CC13F56C75167D284A3EAAEC3E9FF6E9AE05F86E2
        2148CA1938C71639C71839C81839C81839C81839C81839C81739C81939C81A39
        C7485CB8E3E3E3F6F2F3E8E7F37689D65A76D98FA8ECB1C6EEFF729EE3638CE6
        2956D32449D3214AD3234AD4234AD4234AD4234AD4234AD4224AD4244AD32449
        D2254BD06A7DC9E8E7EDF5F1F0899EDB6482E193AEEEB4C9F0FF79A3E5688FE9
        3767E0325EDE2E5DE12E5DE12F5DE12F5EE22F5DE12F5DE12F5DE12F5EDF2E5E
        DE3C67DF7A97E98FA1D597A7D37490E46D8FE996B5F2B7CBF2FF99B9E75F89EB
        588AEC4278EA4178E94078E94078EA4179EA4078E94078EA4078EA3D78EB4177
        EA6595EE86AAEF81A6F27DA5EF7CA2F083A7EF8FB2ECBBD0F2FFD8E7F14E80E0
        8AAEF462A1F4569AF3559AF3569AF4579AF55599F4559AF5559AF5549BF35A99
        F188BAF592BFF590BEF38CBBF691BBF7AFCAF96CA6ECD6E4F3FFF8F9F79EC2EB
        6395ECA8CEF7B0D0F9B2D1F9AFD2FAADD3FAAED1F9B3D1F9B3D1F9AED2F9AED2
        F8C9E1FACAE3FCC9E2FBC8E0FABCDAF87DBFF392B7E5FBFCFBFFF9FBF9F8FAF5
        BFD3ED77AFE86AA4E96DA6EA6FA7ED71A9EE72AAEF72AAEF71A9EF74ABF071A9
        EE70A7ED6FA6ED6EA7EC6FA6E776ABE6ABC7E8F3FAF7FDFDFDFF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = cxButton2Click
    end
    object cxButton1: TcxButton
      Left = 240
      Top = 4
      Width = 21
      Height = 21
      Caption = 'X'
      TabOrder = 7
      OnClick = cxButton1Click
    end
  end
  object closebut: TBitBtn
    Left = 793
    Top = 551
    Width = 75
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = bkClose
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
  end
  object BitBtn3: TBitBtn
    Left = 874
    Top = 551
    Width = 75
    Height = 25
    HelpContext = 460
    Caption = '&Help'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333336633
      3333333333333FF3333333330000333333364463333333333333388F33333333
      00003333333E66433333333333338F38F3333333000033333333E66333333333
      33338FF8F3333333000033333333333333333333333338833333333300003333
      3333446333333333333333FF3333333300003333333666433333333333333888
      F333333300003333333E66433333333333338F38F333333300003333333E6664
      3333333333338F38F3333333000033333333E6664333333333338F338F333333
      0000333333333E6664333333333338F338F3333300003333344333E666433333
      333F338F338F3333000033336664333E664333333388F338F338F33300003333
      E66644466643333338F38FFF8338F333000033333E6666666663333338F33888
      3338F3330000333333EE666666333333338FF33333383333000033333333EEEE
      E333333333388FFFFF8333330000333333333333333333333333388888333333
      0000}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
  end
  object DataSource2: TDataSource
    DataSet = ImageDbf
    Left = 332
    Top = 184
  end
  object OpenPic: TOpenPictureDialog
    Filter = 
      'All (*.tif;*.gif;*.png;*.png;*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.ti' +
      'f;*.tiff;*.ico;*.emf;*.wmf)|*.tif;*.gif;*.png;*.png;*.gif;*.png;' +
      '*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*.ico;*.emf;*.wmf|All graphics (' +
      '*.tif;*.gif;*.png)|*.tif;*.gif;*.png|PNG graphics from DevExpres' +
      's (*.png)|*.png|GIF Image (*.gif)|*.gif|Portable Network Graphic' +
      's (*.png)|*.png|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*' +
      '.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|TIFF Images (*.tif)|*.tif|TI' +
      'FF Images (*.tiff)|*.tiff|Icons (*.ico)|*.ico|Enhanced Metafiles' +
      ' (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Left = 320
    Top = 232
  end
  object ImageDbf: TTzDbf
    Active = True
    DbfFields.Strings = (
      'index, C, 10, 0'
      'series, C, 40, 0'
      'image, M, 10, 0')
    DbfFileName = 'c:\mm_express\irrigation\images.dbf'
    HideDeletedRecs = False
    TableLanguage = tlOem
    ReadOnly = False
    CreateIndex = ciNotFound
    Exclusive = False
    Left = 284
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = NodeDbf
    Left = 336
    Top = 136
  end
  object NodeDbf: TTzDbf
    Active = True
    DbfFields.Strings = (
      'index, C, 10, 0'
      'series, C, 40, 0'
      'model, C, 40, 0'
      'nozzle, C, 40, 0'
      'partname, C, 40, 0'
      'patname, C, 40, 0'
      'punit, N, 1, 0'
      'dunit, N, 1, 0'
      'funit, N, 1, 0'
      'lunit, N, 1, 0'
      'color, N, 3, 0'
      'circangle, N, 3, 0'
      'rad1_diam2, N, 1, 0'
      'cost, N, 10, 2'
      'sec_loss, N, 10, 4'
      'press1, N, 15, 9'
      'rad1, N, 15, 9'
      'flow1, N, 15, 9'
      'press2, N, 15, 9'
      'rad2, N, 15, 9'
      'flow2, N, 15, 9'
      'press3, N, 15, 9'
      'rad3, N, 15, 9'
      'flow3, N, 15, 9'
      'press4, N, 15, 9'
      'rad4, N, 15, 9'
      'flow4, N, 15, 9'
      'press5, N, 15, 9'
      'rad5, N, 15, 9'
      'flow5, N, 15, 9'
      'press6, N, 15, 9'
      'rad6, N, 15, 9'
      'flow6, N, 15, 9'
      'press7, N, 15, 9'
      'rad7, N, 15, 9'
      'flow7, N, 15, 9'
      'press8, N, 15, 9'
      'rad8, N, 15, 9'
      'flow8, N, 15, 9'
      'press9, N, 15, 9'
      'rad9, N, 15, 9'
      'flow9, N, 15, 9'
      'press10, N, 15, 9'
      'rad10, N, 15, 9'
      'flow10, N, 15, 9'
      'press11, N, 15, 9'
      'rad11, N, 15, 9'
      'flow11, N, 15, 9'
      'press12, N, 15, 9'
      'rad12, N, 15, 9'
      'flow12, N, 15, 9'
      'press13, N, 15, 9'
      'rad13, N, 15, 9'
      'flow13, N, 15, 9'
      'press14, N, 15, 9'
      'rad14, N, 15, 9'
      'flow14, N, 15, 9'
      'press15, N, 15, 9'
      'rad15, N, 15, 9'
      'flow15, N, 15, 9'
      'press16, N, 15, 9'
      'rad16, N, 15, 9'
      'flow16, N, 15, 9'
      'press17, N, 15, 9'
      'rad17, N, 15, 9'
      'flow17, N, 15, 9'
      'press18, N, 15, 9'
      'rad18, N, 15, 9'
      'flow18, N, 15, 9'
      'press19, N, 15, 9'
      'rad19, N, 15, 9'
      'flow19, N, 15, 9'
      'cv, N, 10, 4')
    DbfFileName = 'c:\mm_express\irrigation\irrnode.dbf'
    HideDeletedRecs = True
    TableLanguage = tlOem
    ReadOnly = False
    CreateIndex = ciNotFound
    Exclusive = False
    Left = 292
    Top = 136
  end
  object imgLarge: TImageList
    Height = 32
    Width = 32
    Left = 280
    Top = 236
    Bitmap = {
      494C01012B002D00040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060010000010020000000000000C0
      0200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC00F0E5D900E1CE
      BA00D8C0AA00D6C2AC00D6C5B200D6C6B500D5C6B500D5C6B400D6C3AF00D6C0
      AB00DCC6AF00E9D8C600F9F3EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC00F0E5DB00E9D8
      C500E9D5BD00E1D2C200DCD2C800DCD2C600DBD0C500DCD2CA00DDD0C500E6D5
      BE00E5D0BA00E8D8C600F9F3EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC00F0E5D900E1CE
      BA00D8C0A900D6C2AC00D6C5B200D6C6B500D5C6B500D5C6B400D6C3AF00D6C0
      AB00DCC6AF00E9D8C600F9F3EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00EBDDCE00D5B79F00D0BBA500DBD3
      C500E6E5E000EBEDED00ECF0F100EAF0F200EAF0F200EBF0F200ECF0F000E9EA
      E900E0DCD300D3C3B200D0B79F00E0C8B100F9F4EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00EBDFD000D6B89E00D9C3AC009D8D
      7A0037363500826B3E00C28F4100BD9E6400D0AF6C00BD8F4300B8843F00564C
      3A009A979100DCCDB800D2B89E00E1CAB200F9F4EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00EBDDCE00D5B79D00D0BBA500DBD3
      C500E6E5E000EBEDED00ECF0F100EAF0F200EAF0F200EBF0F200ECF0F000E9EA
      E900E0DCD300D3C3B200D0B79D00E0C8B100F9F4EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F1EB00D8BBA300D2BAA400DDD6C800E7E4DC00EAE5
      DF00EBE7E200ECEAE900EDEDEC00ECECEC00EBECEC00ECEDEC00EDECEB00ECE9
      E500EAE6E000E9E6E000E4E0D800D8C8B500D0B29A00E9D9C800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F1EB00D9BDA300D3BBA500DFD8CA00F1EDE7006A60
      4D0000000000451D0000974D00008F611200B17419008F4C0000894100000C05
      000062636400F1EFE900E5E1D900D9CAB700D2B49800E9DBCA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F1EB00D8BBA200D2BAA300DDD6C800E7E4DC00EAE5
      DF00EBE7E200ECEAE900EDEDEC00ECECEC00EBECEC00ECEDEC00EDECEB00ECE9
      E500EAE6E000E9E6E000E4E0D800D8C8B500D0B29700EADBCA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0E5DB00D0B19800DBCBBA00E2D9CA00E2D8C500E4DBCB00E6E0
      D600E9E5DD00EBE9E400EDEBE900EDEDEB00EDEDEB00EDECEB00ECEAE700EAE6
      E100E7E2DB00E6DDD200E2D8C600E2D9C600DFD6C800CEB7A000DFC5AC00FEFD
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000F0E6DC00D2B29500DCCDBB00E3DCCB00E3D9C600EFE7DB006C61
      4D0000000000492000009852000091651600B2781D00915100008A4500000F08
      000064646600F0E9E000E3DBCA00E3DBCA00E0D9CA00D0B8A000E0C6AE00FEFD
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000F0E5DB00D0B19400DBCBBA00E2DBCA00E2D8C500E4DBCB00E6E0
      D600E9E5DD00EBE9E400EDEBEA00EDEDEB00EDEDEB00EDECEB00ECEAE700EAE7
      E100E7E2DB00E6DFD200E2D9C800E2D9C800DFD8C800D0B7A000DFC5AE00FEFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFE4D800CEB19900DDD2C000DCCBB200E1CEB500F2E7D500F4EBDD00F6EF
      E500F9F2EB00FAF5F000FCF9F300FCFAF500FDFAF600FCF9F500FBF7F100F9F4
      ED00F7F1E900F5EDE100F3E9D900E7D9C200DCC8AF00E0D5C200D3BBA500D6B8
      9E00FEFDFC000000000000000000000000000000000000000000000000000000
      0000EFE5D900D0B29700DFD3C200DFCEB400DFCBB200E1D5C000EEE6D8007C6E
      58000D0B07005E310800A55F08009E6E1D00BA7E23009E5F0900985508001F15
      070075726D00EFE7DB00E2D8C500DFD2BA00DDCBB100E1D6C300D5BDA600D8BA
      9D00FEFDFC000000000000000000000000000000000000000000000000000000
      0000EFE4D800CEB19500DDD2C000DDCDB200DDCAB100E0D3BE00E2D9C800E5DD
      D000E7E1D800E9E5DD00EBE7E100EBE9E500ECE9E500EBE9E400EAE6E000E9E2
      DB00E6DFD500E4DBCD00E1D6C300DDD0B800DCCAAF00E0D5C200D3BBA500D6B8
      9B00FEFDFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2EA
      E100CEAE9500E0D5C200D9C3A800DCC5A800D8D0C600807F7E00807F7F008080
      8000818181008181820083838300848484008484840084848400848383008483
      8300868584008885830086848100BBB5AE00E0CEB400D8C0A300DFD0BA00D3BD
      A500DFC6AE00000000000000000000000000000000000000000000000000F2EA
      E200D0AF9200E1D6C300DBC5A900D9C5A800DFCDB200E1CDAE00342C23001412
      0F00130E07008F500700C06B0700D2922D00CE923200BB6D0900BE6607006938
      070013121000594E3D00E7DBC200DFCEB500DCC8AC00D9C2A300E0D2BB00D5BE
      A600E0C8AF00000000000000000000000000000000000000000000000000F2EA
      E100CEAE9100E0D5C200D9C3A800D8C3A600DCCAAF00DFCEB800E1D5C000E2D9
      CA00E5DDD000E6E0D600E7E2DB00E9E4DC00E9E4DD00E9E4DC00E7E1D900E6DF
      D500E4DBCE00E2D8C600E0D3BD00DDCDB400DBC6AB00D8C0A200DFD0BA00D3BD
      A500DFC6AE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBF7F500D0B1
      9800DFD2BE00D9C5A800D8C2A400DFC8AB00938D830005040200050403000403
      0200040302000303010000000000000000000000000000000000000000000000
      00000000000000000000000000005A5D5F00E7D9C200D8C0A300D8C0A300E0D3
      BE00D2B79F00EADBCA0000000000000000000000000000000000FBF7F500D2B2
      9500E0D3C000DBC6A900D9C2A500D9C3A600DDCAAE00DBC3A0000E0C08000000
      00000200000089430000B868070091621700CB822100BA670100BD5D00006229
      000000000000261F1800E8D9BD00DDCAAF00DBC5A900D9C3A600D9C2A300E1D5
      C000D3B89E00EADCCB0000000000000000000000000000000000FBF7F500D0B1
      9400DFD2BE00D9C5A900D8C0A300D8C2A600D9C5A900DDCBB200DFD2BA00E1D5
      C200E2D9C800E4DCCD00E5DDD200E6DFD500E6DFD500E6DFD300E5DCD000E4DB
      CB00E2D8C500E0D3BE00DFCEB700DCC8AE00D9C3A800D8C2A500D8C0A200E0D3
      BE00D2B79D00EADBCA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0C6B100D8C3
      AE00DCCAB100D8C0A400D8C3A700D9C09F00A77C370096681B0099691B007D59
      1C006A4D1C00684B1A006C4F1C006C4D19006A481400614013003B2310004227
      1100482D1300442A1400422914007C694A00DBBE9A00D9C3A800D8C2A500D8C0
      A400E0D3C200D2B19900F9F3F000000000000000000000000000E1C8B200D9C5
      AF00DDCBB200D9C2A500D9C3A600D9C3A600E1CDAE008D7E6A00020201000202
      00000E090200944D0300B46D1600633B1100A26B1D00C3710A00C06302006A34
      0200010100000B090700BBA88C00E0CBAF00D9C3A600D9C3A600D9C3A600D9C2
      A500E1D5C300D2B29500F7F3EF00000000000000000000000000E0CAB500D8C6
      B500DCCBB400D8C3A800D8C3A800D8C3AB00D9C6AE00DBC6AC00DDCBB200DFD0
      BA00E0D3BE00E1D6C300E2D8C800E4D9CA00E4D9CA00E4D9C800E2D8C600E1D5
      C200E0D2BD00DFCEB700DCCAAF00D9C5A800D8C2A500D8C2A500D8C2A500D8C0
      A300E0D3C200D2B19500F9F3F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4EDE700D0B29900DFD3
      BE00D8C0A300D8C2A500D8C2A700DDC3A000B4813300A46E1A00A7711C008D61
      1800815716009A641300A0671200A1681300A36B16009F6A170096691C00A470
      1C00C8811E00CA832100CA821F00C2802100D9B58600D9C6AB00D8C2A500D8C0
      A400DBC8AC00D8C3AE00E0C8AF000000000000000000F4EEE800D2B49700E0D5
      C000D9C2A300D9C3A600D9C3A600D9C3A600E5D2B20045392900070501005946
      2600B79A7300D29D5900CD7E1E00CE7F1F00C5751800CB822500D9AE6D00C8A2
      6D002E24190003010000776B5700E2CEAF00D9C3A600D9C3A600D9C3A600D9C2
      A500DCCAAE00D9C5AF00E0C8AF000000000000000000F5EFEA00CDA68100D8AC
      6E00CE8F4400CD8B3C00D0924800CD954D00D3AE7A00D9C3A800DBC6AC00DCCA
      B100DDCDB500DFD0BA00E0D2BD00E0D3BE00E0D3C000E0D3BE00DFD2BB00DFD0
      B800DDCBB400DCC8AE00D9C5A800D8C2A500D8C2A500D8C2A500D8C2A500D8C0
      A300DBC8AC00D8C3AE00E0C8AF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0C8B100D8C2AE00D9C5
      AA00D8C2A500D8C2A500D8C2A700DDC5A300AA792600946010009E6613008E60
      1600845B1800A36F1C00AB731E00A8731E00AB741F0091681E0075561D007F5B
      1C0094681B00916418009061150093671A00D0AE8500D9C6AB00D8C2A500D8C2
      A500D8C0A300DDCEBB00D2B49B00F9F4F00000000000E1CAB200D9C3AF00DBC6
      AB00D9C3A600D9C3A600D9C3A600D9C3A800E0C8A60018161100130E0700B195
      7200EADDC600E2C69700D38A3100D0842600D0842700DBA66100E0D5C500E7D9
      C5007D6D5100070501003B312300E3D0B100D9C3A600D9C3A600D9C3A600D9C3
      A600D9C2A300DFD0BD00D3B59A00F9F4F00000000000E0CDBD00C68C4900D587
      3000DF9D5400E1A56100E2A96700DC954600D08A3600D6BB9A00D8C6AE00D9C3
      A600DBC6AB00DCCAAF00DDCBB200DDCDB400DDCDB500DDCBB400DCCAB100DBC8
      AE00D9C5A900D8C3A600D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2
      A500D8C0A200DDCEBB00D2B49800F9F4F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFCFB00D3B59C00DCCBB700D8C0
      A400D8C2A500D8C2A500D8C3A800DDC29E00A87A2F0095661A006A4614004B2D
      100051321100704A1100764D1100764E1200764F130079541700795418009464
      16009A6615009A6717009A68180096681B00CDAC8500D9C6AB00D8C2A500D8C2
      A500D8C2A500DCCAB100D3BAA400E9D8C600FEFCFB00D5B79B00DDCDB800D9C2
      A500D9C3A600D9C3A600D9C3A600DDC8AB00BAA384000908060031241500CAB1
      8D00DDCDB800D3A36600B2550000B8600600C06A0E00DCB78000DBC8AE00DFCB
      AE00AE987C000F0B070015130F00DBC3A300D9C3A800D9C3A600D9C3A600D9C3
      A600D9C3A600DDCBB200D5BBA500E9D9C800FEFCFB00D5B8A300D5AF7A00D28A
      3600E9B88400E7B77F00E7B78100E0A36000CE914700D3AF7E00D2A86F00D8C3
      A800D8C2A500D9C3A600D9C5A900D9C6A900D9C6AB00D9C5A900D9C5A800D8C3
      A600D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2
      A500D8C2A500DCCAB100D3BAA300E9D8C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0E5D900D2B49F00DCCBB200D8C2
      A400D8C2A500D8C2A500D8C2A700DDC39F00B47D2900A36B1700825815006A45
      12007D51100082551000825511008254100082551100865F1900855D18009666
      17009C6919009A6817009C6816008F661D00BDA48300DBC6AB00D8C2A500D8C2
      A500D8C2A500D8C3A500D9C5B100DDC5AE00F0E6DB00D3B59D00DDCDB400D9C3
      A500D9C3A600D9C3A600D9C3A600E1CDAE0094847300000000005F482400EDCE
      9800DCC5A300CB893800B5590200AF500000B8610700D8BE9700D8C5AB00D9C5
      A900E9CA9400241C100007070800B4A38A00DDC8AB00D9C3A600D9C3A600D9C3
      A600D9C3A600D9C5A600DBC6B200DFC6AF00F0E6DC00D0B59D00DFAB6800DF9D
      5400E5A55A00DFA05900DF9E5900EBAE6300DD9B4F00D29A4F00D0954900D9C6
      B100D8C2A500D8C2A300D8C5AB00D8C5AE00D8C2A500D8C2A500D8C2A500D8C2
      A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2
      A500D8C2A500D8C3A500D9C5B100DFC6AF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDC0A800D8BEAB00DBC6AB00D8C2
      A500D8C2A500D8C2A500D8C2A700DDC29E00AA7C330098691C008D661F007155
      1F008D651E0094681D0090631700936518007D5616005F3D1300704C14009666
      1600956517009A6B1C0090671D007D5D1F00BEA48300DBC6AB00D8C2A500D8C2
      A500D8C2A500D6C0A300DCCAB500D8BAA400DFC2A900D9C0AC00DCC8AC00D9C3
      A600D9C3A600D9C3A600D9C3A600E0CBAE009E8C77000101010031231500E0B5
      7400E0A85A00D58C3400CA7A1E00C6741800C87A1F00DBB78200DBC29E00E0CB
      AF00B8986E00110E09000C0B0A00C8B49500DCC6A900D9C3A600D9C3A600D9C3
      A600D9C3A600D8C2A300DDCBB700D9BBA500DFC5AC00D0B79E008E652E00E4A6
      6200BD803C00E6B77600E2B275008B612C00AF732F00E1AB5C00DCA24E00D3B1
      8100D6C2A900D9C6AF00D5B88F00D3B18100D8C5AB00D8C3A900D8C3A900D8C2
      A800D8C3A900D8C2A600D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2
      A500D8C2A500D6C0A200DCCAB500D8BBA5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAA38800DCCAB500D8C3A700D8C2
      A500D8C2A500E0CBAC00E1CDB100E6CDA500AF803800936317008C5D14008A5B
      140065401000583610007E54130085591300895E170089621C007A571C006A4E
      1E007C5A1C00A06E1D0096691D0084632100D9B88C00E5D2B500E0CAAC00D9C3
      A700D8C2A500D8C0A400DCCAB200D5BAA400CBA38100DDCBB700D9C5A800D9C3
      A600D9C3A600D9C3A600D9C3A600DBC5A900D2BB9A0014120D0000000000362D
      2400E6CDA000D99B4E00C3701300D6923A00D2862A00E6BB7700E5C38C00D3BD
      9E0017141000000000002C251D00E5CEAF00D9C3A600D9C3A600D9C3A600D9C3
      A600D9C3A600D9C2A500DDCBB400D6BBA500CAA38300E2D0B8005E4C30004C33
      1E003E34290000000000FCFBFB00A6A39B00624E3200634A2600975E1A00D284
      2800E2B87800D6B58500CE8F3F00CD852C00D0A86F00D5BB9800D5BA9500D29D
      5600D2A36600D8C3A800D8C5A900D8C3A600D8C2A500D8C2A500D8C2A500D8C2
      A500D8C2A500D8C0A300DCCAB200D5B8A2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD947800DFCEBB00D8C2A500D8C2
      A500D8C2A500B4A49100AFA18F00AFA08D00825E1C00512504005B2E07007246
      0C00704911006946130069461400724E17009C6F2200A37223008F6823008463
      22008D6926008C692700643F110059320C007E6D5600AC9E8E00B2A39100D2BD
      A300D8C2A500D8C0A400DCCAB100D3B7A300BE917100E0D0BD00D9C3A600D9C3
      A600D9C3A600D9C3A600D9C3A600D9C3A600E5D0B200695A4200000000000302
      020095857600E1C6A000DBA86300D58F3900DBB27500E0D0BA00E3D0B200695F
      4F00000000000402010097806900E0CBAE00D9C3A600D9C3A600D9C3A600D9C3
      A600D9C3A600D9C2A500DDCBB200D5B8A300BD8F6E00E1D0BE00D8C3A8008B7C
      6800534A4000C0C0C000000000000000000000000000AC957500654724005C40
      1E008E662C00D09A4D00E2BA7600E9AC5100E4AC5B00DCA85F00D0944300E5B8
      6E00E0AF6500D0A56800D3B89200D6BE9E00D8C2A600D8C2A500D8C2A500D8C2
      A500D8C2A500D8C0A300DCCAB100D3B7A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B78F7100E0D2C200D8C0A400D8C2
      A500D6C3A800503F1E00251B0C0072490F008E580C004D2506000F0E0B001D1A
      1300171510006D490E00A16F1300A4813B00AA8E5900A57B2200855D0F001B16
      0B001E191100241E150074521900834D08007945080022190D0075613000B5A4
      9000DCC6A800D8C2A400DBC8AE00D3B7A000B88A6B00E1D3C300D9C2A500D9C3
      A600D9C3A600D9C3A600D9C3A600D9C3A600DCC6A900D0B89400120F0A000000
      000069573700E6D5BA00DFD3C600E3AB5800E1B57100D8C6B200E7D0AE003225
      180000000000231E1700E1CBA900D9C3A800D9C3A600D9C3A600D9C3A600D9C3
      A600D9C3A600D9C3A500DCCAAF00D5B8A000B78A6700E0D2C200D9C2A500E9D6
      B700C2AC8F005B544A00A3988700FCF4E90000000000FCD58B00FFF7E700D0CE
      CD007F7667004436230022201D00736D6200C8B79A00EAC58500F0C27300F0D5
      9B00F4E5C300E0B16700D0913D00D0A56700D9C5AC00D8C2A500D8C2A500D8C2
      A500D8C2A500D8C2A300DBC8AE00D3B79E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B88F7200DFD0BE00D8C0A400D8C2
      A500D6C3AB004B301300140B000082420000D06A00007B3F0000000000000000
      000000000000733F0000CE7A0300D3952E00DBAC5B00D28916009C6101000603
      000000000000080706009F681600C6680000B25E0000170D0000795B1C00B4A4
      9000DCC6AA00D8C2A400DBC8AF00D3B5A000BA8A6C00E0D2C000D9C2A500D9C3
      A600D9C3A600D9C3A600D9C3A600D9C3A600D9C3A600E5D2B200574C3B000000
      000031210F00E8BE7A00E5C89B00A3722300BA823400E7CA9A00D5A362001610
      0700000000007D705F00E2CEB100D9C3A600D9C3A600D9C3A600D9C3A600D9C3
      A600D9C3A600D9C3A500DCCAAF00D5B7A000B88A6800DFD0BE00D8C0A300D8C2
      A500DDC8AB00D0BAA0009A7A50009D794400655C510084673E00E5DCC8000000
      000000000000E9EBED008A857F002D292200503D24006F665A00A0988C00F1EA
      DB00FEF1D500EFC67E00EBC88400D0984E00DFCAAE00E1CDAE00D9C3A600D8C2
      A500D8C2A500D8C2A300DBC8AE00D3B59E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C29B8000DCC8B700D8C2A500D8C2
      A500D6C3AB004D331500160D000080430000C3670000733A0000000000000000
      000000000000713F0000C5760500CA902D00D2A55800CA851700985F02000805
      0000000000000A09070096641500B8620000A7590000180F0200785B1E00B5A4
      9000DCC6AA00D8C2A400DCC8B100D5B5A100C39A7900DDCAB800D9C3A600D9C3
      A600D9C3A600D9C3A600D9C3A600D9C3A600D9C3A600DDC8A900C8B28F000F0D
      0900000000006D441200845A1B003A230E0068481A00BD7924004A280C000000
      00001B181400DBC3A500DBC5A800D9C3A600D9C3A600D9C3A600D9C3A600D9C3
      A600D9C3A600D9C3A500DDCAB200D6B7A200C2987800DCC8B700D8C2A500D8C2
      A500D8C2A500DBC5A800DFCAAC00CEB89800AF9B8300786A5900584833006C61
      4E00AEA69A00FCFAF50000000000F0E0C200D6985400BE8851007F653D004846
      410073654A00BEAB8800F4DDA900806D4E0065554000A08C7600DBC5A900E4CE
      B100DBC5A800D8C0A300DCC8B100D5B5A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2AE9500D8C0AE00D9C3A800D8C2
      A500D6C3AB004D331500160D000080430000C3670000733A0000000000000000
      000000000000713F0000C5760500CA902D00D2A55800CA851700985F02000805
      0000000000000A09070096641500B8620000A7590000180F0200785B1E00B5A4
      9000DCC6AA00D8C0A400DBC6B100D5B7A100D3AF9200D9C2AF00DBC5A900D9C3
      A600D9C3A600D9C3A600D9C3A600D9C3A600D9C3A600D9C3A600E6D2B2006D60
      4900070602000907040015110B00B86E170098641B00090805000F0C07000A08
      040092806900E1CDB100D9C3A600D9C3A600D9C3A600D9C3A600D9C3A600D9C3
      A600D9C3A600D9C2A500DCC8B200D6B8A200D2AE9100D8C0AE00D9C3A800D8C2
      A500D8C2A500D8C2A500D8C2A500D9C3A800DFCAAB00E5D2B200D6C2A600A08C
      76006D5F4C00594F4100817B7100D6A05A00ECB87E00E9AC6500EDE4D3004C2D
      1100763100005A34100065543900A29E9B00A9A0910073675000655540008F7F
      6A00CEB89D00E2CDAE00DBC6B100D5B7A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6D2BD00D0B29E00DBC8AE00D8C2
      A500D6C3AB004D331500160D000080430000C3670000733A0000000000000000
      000000000000713F0000C5760500CA902D00D2A55800CA851700985F02000805
      0000000000000A09070096641500B8620000A7590000180F0200785B1E00B5A4
      9000DCC6AA00D8C2A400D9C3AF00D8B8A300E7D3BE00D2B49D00DCCAAF00D9C3
      A600D9C3A600D9C3A600D9C3A600D9C3A600D9C3A600D9C3A500DBC3A800D9C2
      A2008D765200211C14000A0B0C004D2F1300462E160004050800402E1B008976
      5D00E1CBAC00D9C3A600D9C3A500D9C3A600D9C3A600D9C3A600D9C3A600D9C3
      A600D9C3A600D9C3A500DBC5B100D9BAA300E6D2BD00D0B29B00DBC8AE00D8C2
      A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A300D9C2A500E1CB
      AE00E4D0B200CBB79D0081746100A96F2700D9944400E5A65800847560007A34
      0000CE5C0000BE5B03009846000073441300716D6100979794009B9A95007E76
      6C00685A450097857000DFCBB800D8BAA2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F1EB00CDAB9500DCC8B200D8C2
      A500D6C2AB004B2F1300160C000080430000C367000071370000000000000000
      0000000000006E3C0000C5760500CA902D00D2A55800CA851700955E02000604
      0000000000000908060095641600B8620000A7590000180F01007A5D1E00B5A4
      9000DCC6A800D9C5AA00D3B8A400E2CDB700F7F1EB00CEAC9200DDCAB400D9C3
      A500D9C3A600D9C3A600D9C3A600D9C3A600D9C2A500D9C5A900D9C6AE00DCCB
      B500EEE2CD00BD8F50008D5E180094702F00916A230095641B00CAA66F00E8DB
      C500DBCAB200D9C6AF00D9C6AB00D9C3A600D9C3A500D9C3A600D9C3A600D9C3
      A600D9C3A600DBC6AB00D5BAA500E3CEB800F7F1EB00CDAB9100DCC8B200D8C2
      A300D8C2A500D8C2A500D8C2A500D8C2A500D8C0A300D8C3A800D8C5AC00D8C6
      AF00D8C6B100DBCAB400E2D3BD00D9C5A800D2B28300D59E5900432F1C005026
      050080360000B85B0600A04A0200BE761F00E6C68A007167510079623D007F73
      5E008C888100493D2800D2AB8300E4D0BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3B29900D8C0AB00D8C2
      A500D9C5AB006F614100160F030081420000C0640000884B030012100B000000
      01000A0908007D460000C3740300CA902A00D3A55600CA841500A0630100110B
      0200000000000908070086500900BB620000A7580000180F01005E451A00B2A3
      8F00DCC6A700DBCAB100CDAC9500F1E6DC0000000000D5B49700D9C2AC00D9C3
      A600D9C3A600D9C3A600D9C3A600D9C3A600DBCAB400DBCEBA00DBCEBB00DBCE
      BB00DDD5CA00E2A34300C3640200DF8C1C00D57F1100CA6A0500E7BD7100DBD0
      C300DBCEBB00DBCEBB00DBCEBB00DBCBB700D9C6AB00D9C2A500D9C3A600D9C3
      A600D9C3A500DCCBB200CEAE9200F1E7DD0000000000D3B29500D8C0AB00D8C2
      A500D8C2A500D8C2A500D8C2A500D8C2A500D9C8B200D9CDB800D9CDBA00D9CD
      BA00D9CDBA00D9CDBA00DBCDBA00DBCEBE00DBD0C200DBD0C000D2C6B7009D97
      8F006355400038230D0056462F005C4D3600CAA6750034251500512401007435
      02002519090087795F00DDA96800F0E6DB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9D9C600CDAB9500DBC6
      AE00DBC5A700B8AA960033291E007C400100B5640300B1650600704912001F17
      08006D4A1200B1680400B7720800C58F3200CBA35A00BE811900B8720500724A
      0B001F1608004C2A0B00A7600600B2620300A05802001F170A007C736800D5BE
      A400D9C3A700D8BDAA00D3B19900FEFDFC0000000000E9DBC800CEAC9200DCC8
      AF00D9C3A500D9C3A600D9C3A800DCD0BB00DDD5C600DDD5C500DDD5C500DDD5
      C600DFD5C600D38F3500B4590000CE851E00C67C1500B8600400D8A25900DFD6
      CB00DDD5C500DDD5C500DDD5C500DDD5C500DDD3C300DBC8AF00D9C3A500D9C3
      A600D9C3A600D9BEAB00D5B29700FEFDFC0000000000E9D9C600CBAB9100DBC6
      AE00D8C2A300D8C2A500D8C2A600DBCEBA00DCD3C500DCD3C300DCD3C300DCD3
      C300DCD3C300DCD3C300DCD3C300DCD3C300DCD3C300DCD3C300E0D6C600E6DD
      D000E4DDD500A8A5A200DBD5CB00DCD5CB00DBD3C800A08E7900261F16002012
      00003E200300EAB15900E5B56A00FDFAF5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFCFA00D0AC9500D9C3
      AF00D8C2A500E1CBAE00AFA190008A7C66009A866B0099866A00A08A6900A18C
      6A00A08A69009A896A009A8A6D009B8E79009C9180009A8C73009A8A6C00A18C
      6A00A38D6B00A18B69009A866A0099866B0093826800988D7F00E2CEB400D9C3
      A500DBC8B100CBA89300ECDFD0000000000000000000FDFCFA00D2AE9200DBC5
      B100D9C3A600D9C3A500DCCEB800DFDBCE00DFD9CD00DFD9CD00DFD9CD00DFDB
      CD00DDDBD000E1AB6A00EE5D0200F1600300F25F0300F26A0B00DFBB8600DFDC
      D300DFD9CD00DFD9CD00DFD9CD00DFD9CD00DFDBCE00DFD6C600D9C5A900D9C3
      A500DDCAB400CDAB9100EDE0D2000000000000000000FDFCFA00D0AC9100D9C3
      AF00D8C2A500D8C2A300DBCDB700DDD9CD00DDD8CB00DDD8CB00DDD8CB00DDD8
      CB00DDD8CB00DDD8CB00DDD8CB00DDD8CB00DDD8CB00DDD8CB00DDD8CB00DDD8
      CB00DFD9CB00E6E1D500DFDBCD00DFD9CD00DFD9CD00E9E0D200DCC6A9006150
      3900271D0D0095662D00F1DCB100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFE2D600CAA7
      9000DCCAB400D8C2A300E5D8C300E6DFD600E2DCD300E4DCD300E4DCD300E4DD
      D300E4DCD300E4DCD300E2DBD300E2D9CE00E2D9CB00E2DBD000E2DCD300E4DC
      D300E4DDD300E4DCD300E4DCD300E4DCD300E4DDD500E9DFD000D9C5AA00D9C5
      AA00D6BBA800D6B79F00FFFEFE00000000000000000000000000EEE2D600CBA6
      8A00DDCBB500D9C2A300DDD6C600E0DFD600E0DDD500E0DDD500E0DDD500E0DD
      D500E0DFD900E3D3B500E2892E00E0791D00DC781F00BB7D3D00E2E0D800E0DD
      D600E0DDD500E0DDD500E0DDD500E0DDD500E0DDD500E0DDD300DBC8AE00DCC6
      AB00D8BDA900D8B89E00FFFEFE00000000000000000000000000EDE1D500CAA5
      8A00DCCAB400D8C0A200DCD5C500DFDDD500DFDCD300DFDCD300DFDCD300DFDC
      D300DFDCD300DFDCD300DFDCD300DFDCD300DFDCD300DFDCD300DFDCD300DFDC
      D300DFDCD300DFDCD300DFDCD300DFDCD300DFDCD300DFDBD200DDCBB200DBC8
      AE008F7E7500C0A5920000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFC3
      AC00CEAF9B00DCC8B100DFD0BA00E6E0D600E6DDD300E6DDD300E6DDD300E6DD
      D300E6DDD300E6DDD300E6DDD300E6DDD300E6DDD300E6DDD300E6DDD300E6DD
      D300E6DDD300E6DDD300E6DDD300E6DDD200E6DFD500E4DBCB00D9C6AB00D9C3
      B100CBA78E00F6F2EC000000000000000000000000000000000000000000DFC5
      AC00D0B19A00DDCAB200DDD3C000E1E2DF00E1E1DC00E1E1DC00E1E1DC00E1E1
      DC00E1E2E000DDD0B200D6872400D6862300A36E230034312B00E0E1DD00E1E1
      DC00E1E1DC00E1E1DC00E1E1DC00E1E1DC00E1E1DD00E0DDD500DBC8AE00DBC5
      B200CDA88900F6F2ED000000000000000000000000000000000000000000DDC3
      AB00CEAF9800DCC8B100DCD2BE00E0E1DD00E0E0DB00E0E0DB00E0E0DB00E0E0
      DB00E0E0DB00E0E0DB00E0E0DB00E0E0DB00E0E0DB00E0E0DB00E0E0DB00E0E0
      DB00E0E0DB00E0E0DB00E0E0DB00E0E0DB00E0E0DC00DFDCD300D9C6AC00DCC6
      B200DBB59500FAF5F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFD
      FC00D3B49A00CEAF9A00DDCDB700E5DDD000EAE5DF00E9E4DC00E9E4DB00E9E4
      DB00E9E4DB00E9E4DB00E9E4DB00E9E4DB00E9E4DB00E9E4DB00E9E4DB00E9E4
      DB00E9E4DB00E9E4DB00E9E4DC00EAE5DD00E9E4DC00E0D3BE00DBC3B100CAA5
      8F00F1E6DC00000000000000000000000000000000000000000000000000FEFD
      FC00D5B59800D0B19800DFCEBA00E0DFD600E2E6E500E2E5E200E2E5E100E2E5
      E100E2E6E300E2DCCA00956D2D00A9712200BA7822009B774200E1E5E500E2E5
      E100E2E5E100E2E5E100E2E5E100E2E6E300E2E5E100DFD5C300DCC5B200CBA6
      8A00F1E7DD00000000000000000000000000000000000000000000000000FEFD
      FC00D3B49700CEAF9700DDCDB800DFDDD500E1E5E400E1E4E100E1E4E000E1E4
      E000E1E4E000E1E4E000E1E4E000E1E4E000E1E4E000E1E4E000E1E4E000E1E4
      E000E1E4E000E1E4E000E1E4E000E1E5E200E1E4E000DDD3C200DBC3B100CAA5
      8A00F1E6DC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFAF700D5B49900CEAE9900DFCDBB00E5DFD300EBEAE500EDEBE900EDEB
      E700ECEAE600ECEAE500ECEAE500ECEAE500ECEAE500ECEAE500ECEAE500ECEA
      E600ECEAE600EDEBE900ECEBE700E9E4DD00E2D6C500D8BDAA00CAA48C00F0E5
      D900000000000000000000000000000000000000000000000000000000000000
      0000FCFAF700D6B59700D0AF9700DFCEBD00E1DFD500E3E8E700E5E9EA00E5E9
      E900E3E9E900E7E6DC0014120F003F2408007A480500CB802400E5EAED00E3E8
      E700E5E8E800E5E9E900E3E9E900E2E3DF00E0D8C800D9BEAB00CBA58600F0E6
      DB00000000000000000000000000000000000000000000000000000000000000
      0000FCFAF700D5B49500CEAE9500DDCDBB00E0DDD300E2E7E600E4E9EA00E4E9
      E900E2E7E600E2E7E600E2E7E600E2E7E600E2E7E600E2E7E600E2E7E600E2E7
      E600E4E7E700E4E9E900E2E9E900E1E2DD00DFD6C600D8BDA900CAA38500F0E5
      D900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00DFC3AB00CBA78F00D8C0AB00E1D6C500E6E1D600EAE7
      E200EBECEB00ECEFEF00ECEFEF00ECEFF000ECEFF000ECEFF000ECEFEF00ECED
      ED00EBEBE700E7E4DC00E4DCCD00DDCBBA00CEAE9900D0AC9300F2EAE0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00E0C5AC00CDA88A00D9C0AC00E0D6C500E1E0D600E3E6
      E200E5EBED00E7E9E10019161000462809007E4B0700C57F2500E6EFF300E5EB
      ED00E3E8E700E1E2DB00E0DBCD00DDCDBA00D0AF9700D2AE8F00F2EAE1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00DFC3AB00CAA58800D8BEAC00DFD5C300E0DFD500E2E5
      E100E4EAEA00E4ECED00E4ECED00E4ECED00E4ECED00E4ECED00E4ECED00E4EB
      EB00E2E7E600E0E1D900DFD9CB00DCCBB800CEAE9500D0AC8E00F2EAE0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDE1D500D0AE9600CBAA9400D6BDA800DCCB
      B700DFD3C000DFD6C300E0D9CA00DFD9CA00DFD8C800DFD9CA00DFD8C600DFD5
      C200DDCEBB00D9C3AF00D0B29E00CBA78F00DFC6AF00FBF9F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEE2D600D2AF9400CDAB9100D8BEA900DDCD
      B800DFD5C200DFD6C000A8957800B79D7300C5A67100D6B88600DFDBCB00DFD6
      C300DFD2BD00DBC5B100D3B49D00CDA88A00E0C8B100FBF9F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECDFD000D0AE9200CBA98F00D6BDA800DCCB
      B700DDD3C000DDD6C300DDD9CA00DDD9CA00DDD9C800DDD9CA00DDD8C600DDD5
      C200DDD0BB00D9C3AF00D2B29B00CBA68A00DFC6AF00FBF9F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFBFA00E9D9C600D3B29A00CDAA
      9400CEAF9A00D6BDA800DBC5B100DDCAB800DFCBBB00DCC6B400D9C0AC00D3B5
      A000CDAC9800D0AE9600E0C6AF00F4EDE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFBFA00E9DBC800D6B49800CEAB
      9100D0B19800D9BEAB00E7D6C200E7D9CD00E5D8CE00DFCEC300DBC2AC00D5B7
      A000D0AE9400D2AF9400E1C8B100F4EEE8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFBFA00E9D9C600D5B29700CDA9
      8F00CEAF9700D8BDA800DBC5B100DFCAB800DFCBBB00DCC6B400D9C0AC00D3B5
      9E00CEAC9200D0AE9200E0C6AF00F4EDE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F0
      EA00E5D2BB00D2AE9600C39B8000B88F7200B78E7100BD937600C8A18600DDC0
      A800F0E6DB00FEFEFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F0
      EA00E6D3BD00D3AF9400C59A7900BA8A6C00B8896B00BE8F7000CAA28000DFC2
      A900F0E7DC00FEFEFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F0
      EA00E5D2BB00D2AE9200C3987800B88A6800B7886700BD8E6D00C8A07F00DDC0
      A800F0E6DB00FEFEFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC00EFE4D700E0CD
      B800D6BEA600D4C0AA00D4C3B000D4C5B300D3C5B300D3C5B200D4C2AD00D4BE
      A800DAC5AD00E7D6C500F8F2ED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC00EFE4D700E0CD
      B800D6BEA800D4C0AB00D4C3B100D4C5B400D3C5B400D3C5B200D4C2AE00D4BE
      A800DAC5AE00E7D6C500F8F2ED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC00F0E5D900E1CE
      B800D8BEA600D6C0AA00D5C4B000D9CBBA00E8DCCB00E4D6C400D6C2AD00D6BE
      A600DCC5AD00E9D8C500F9F3EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC00F0E5D900E1CE
      BA00D8C0A900D6C2AC00D6C6B200D6C8B500D6C8B500D5C6B400D6C3AF00D6C0
      A900DCC6AF00E9D8C600F9F3EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00EADCCD00D3B59A00CEBAA200D9D1
      C300E5E4DF00EAECEC00EBEFF000E9EFF100E9EFF100EAEFF100EBEFEF00E7E9
      E700DFDAD100D1C2B000CEB59A00DFC6AE00F8F3ED0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00EADCCD00D3B59B00CEBAA300D9D1
      C300E5E4DF00EAECEC00EBEFF000E9EFF100E9EFF100EAEFF100EBEFEF00E7E9
      E700DFDAD100D1C2B100CEB59B00DDC5AE00F8F2ED0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00EBDDCE00D5B59900D0BAA200DBD3
      C400E7E5E000EBEEEE00F0F3F400DCE0DC00666B6E0091949100F1F3F400E9EA
      E900E0DCD300D3C2B000D0B59900E0C7AE00F9F4EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00EBDDCE00D5B79D00D0BBA500DCD3
      C600E9E7E400F4F6F700FBFEFF00FAFFFF00F9FFFF00FBFFFF00FBFEFE00F2F3
      F300E2DFD800D3C3B200D0B79D00E0C8B100F9F4EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F0EA00D6BA9E00D0B8A000DCD4C600E6E2DA00E9E4
      DD00EAE6E100EBE9E700ECECEB00EBEBEB00EAEBEB00EBECEB00ECEBEA00EBE7
      E400E9E5DF00E7E5DF00E2DFD600D6C6B300CEB09400E7D7C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F0EA00D6BAA000D0B8A200DCD4C600E6E2DA00E9E4
      DD00EAE6E100EBE9E700ECECEB00EBEBEB00EAEBEB00EBECEB00ECEBEA00EBE7
      E400E9E5DF00E7E5DF00E2DFD600D6C6B400CDB19400E7D7C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F1EB00D8BA9E00D2B8A000DDD6C700E8E4DC00EAE5
      DF00EBE8E300EDEAE900F4F5F50080725E00000000000D0C0900E1DCD600EFED
      E900EAE7E000E9E7E000E4E0D800D8C7B300D0B09200E9D9C700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F1EB00D8BBA200D2BAA300DDD6C800EDEBE500F9F5
      EF00F2EBE000CAC0B5009C958900706F6C006465660071706C009F998D00CAC2
      B700F2ECE200F9F5F000EBE6E000D8C8B500CEB29800E9D9C800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFE4D900CEAE9100D9CAB800E1D7C800E1D6C300E2D9CA00E5DF
      D400E7E4DC00EAE7E200ECEAE700ECECEA00ECECEA00ECEBEA00EBE9E600E9E5
      E000E6E1D900E5DCD000E1D6C500E1D7C500DDD4C600CDB59B00DDC3AA00FEFD
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000F9EDE500E0C2A500E2D6C500E2DACA00E1D6C300E2D9CA00E5DF
      D400E7E4DC00EAE7E200ECEAE900ECECEA00ECECEA00ECEBEA00EBE9E600E9E6
      E000E6E1D900E5DDD000E1D7C600E1D7C600E4DCCE00DFC6AC00EAD3BB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0E5DB00D0AE8F00DBCBB800E3DBC900E3D8C400E4DBCB00E7E0
      D600E9E5DD00EDE9E500EDEBE8002E282100120F0A002C231900948E8900F2EF
      EA00E8E3DB00E7DFD200E3D9C700E3D9C700DFD8C700CEB59B00DFC4AA00FEFD
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000F0E5DB00D0B19500DBCBBA00E5DDCE00F1E7D900D2C2A9006A61
      500025211B000806030000000000000000000000000000000000000000000807
      050027241F00786D5A00D5C5AF00F2EADB00E1D9CB00CEB79F00DFC5AC00FEFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000EDE2D600CDAE9200DCD0BE00DACAB000E0CDB300F1E6D300F3EADC00F6ED
      E400F8F1EA00F9F5EF00FCF8F200FCF9F500FDF9F600FCF8F500FAF7F000F8F3
      EC00F7F0E700F5ECE000F2E7D700E6D7C000DAC6AD00DFD3C000D1BAA200D4B6
      9800FEFDFC000000000000000000000000000000000000000000000000000000
      0000F7EADF009A7B620083796E00B7A58500E6D4B800E1D4C000E1D6C500E4DC
      CE00E6E0D600E7E4DC00EAE6E000EAE7E400EBE7E400EAE7E200E9E5DF00E7E1
      D900E5DDD300E2D9CB00E0D4C200E7DAC300CEBA9A00928878008F765F00D3AF
      8C00000000000000000000000000000000000000000000000000000000000000
      0000EFE4D800CEAE9100DDD2BE00DDCCB000DDC9AE00E0D3BD00E3D9C700E5DD
      D000E8E1D800EAE5DD00EFEAE5003E35280017120B002F231600ADA39200EEE9
      E300E7DFD500E4DBCC00E1D6C200DDD0B600DCC9AD00E0D5C000D3BAA200D6B6
      9800FEFDFC000000000000000000000000000000000000000000000000000000
      0000EFE4D800CEB19600DDD2C000E2D3BB00E6D2B2006B604E00110E0A000000
      0000000000000A090700201E1C0041392E005045360036332D001E1D1A000908
      0400000000000000000017140F0083745C00E7D6B700E4DBCA00D3BBA500D6B8
      9C00FEFDFC00000000000000000000000000000000000000000000000000F1E9
      E000CDAB8D00DFD3C000D7C2A500DAC3A500D6CEC50076757400767575007776
      760077777700787878007A797A007A7A7A007A7A7A007A7A7A007A7979007A79
      79007D7C7A007E7C79007D7A7700BAB3AB00DFCDB200D6BE9E00DDCEB800D1BB
      A200DDC5AB00000000000000000000000000000000000000000000000000F6ED
      E200413324000302000000000000070501004E423400E1D0B700E1D4C200E1D7
      C800E4DCCE00E5DFD400E6E1D900E7E2DA00E7E2DC00E7E2DA00E6E0D700E5DD
      D300E2D9CD00E0D6C500E6DAC3009783690016130E0000000000030200001C13
      0900BDA58600000000000000000000000000000000000000000000000000F2EA
      E100CEAB8C00E0D5C000D9C2A500D8C2A300DCC9AD00DFCEB600E1D5BE00E3D9
      C900E5DDD000E7E0D600EEE9E100BEB29D000D0A06002B282300EBE4D900E7DF
      D500E4DBCE00E3D8C500E0D3BB00DDCCB200DBC5A800D8BE9E00DFD0B800D3BB
      A200DFC5AB00000000000000000000000000000000000000000000000000F2EA
      E100CEAE9200E0D5C300E0CDB100D5BA9300362E230000000000000000002320
      1B00887A6B00D8CBBB00FBF4EB00FFFCF600F7F2E900FBF5ED00F6EFE400CDBE
      AC0070685800211C1500000000000000000042382B00D8BD9800E4D8C200D3BB
      A300E4CBB400FCFAF500F4F2EF00000000000000000000000000FAF7F500CEAE
      9100DDD0BD00D7C3A500D6C0A000DDC6A8008F85790006050200070502000705
      0200070502000604020002010000020200000402000003020000010000000100
      000000000000000000000000000054545400E7D7C000D6BE9E00D6BE9E00DFD1
      BD00D0B59A00E9D9C80000000000000000000000000000000000FFFEFC00634E
      3C0000000000373028008F775A00392F2300000000007B6A5600E6DAC600E1D6
      C500E2DACB00E4DDD100E6DFD600ECE5DC00EDE6DF00EBE4DA00E5DDD300E4DC
      CE00E2D9C800E2D7C600CDBBA20013100B000E0C0800766349006F6049000D0C
      090021190E00EBDAC50000000000000000000000000000000000FBF7F500D0AE
      8F00DFD2BD00D9C4A500D8BEA000D8C0A200D9C4A600DDCBB000DFD2B800E1D5
      C000E3D9C700E4DCCC00E5DDD300EEE5D800191611007D746400EFE8DD00E4D9
      CB00E3D8C400E0D3BD00DFCEB500DCC7AB00D9C2A500D8C0A200D8BE9E00E0D3
      BD00D2B59900EADBC90000000000000000000000000000000000FBF7F500D0B1
      9500DDD2BE00DFCBAF00D5B8920030281A00000000000D0A06007B6D5400EFE2
      CE00D9CBB7008D837500A2968900958978007669530080705900BBAC9900D8CA
      B700F9F0E200E7D8BA00655843000504020000000000332A1E00D6BB9800E6DC
      CA00CEB59C0055463600DBD6CD00000000000000000000000000DFC5AE00D6C2
      AB00DAC8AE00D6BEA000D7C2A300D4BD9A0068522F0049341B0043311C00271F
      14001C170E0019150D001C170E0018130C000E0B0800120E09001E191000231B
      1000291F1300261E1300251E13005F544000D6BB9400D7C2A500D6C0A200D6BE
      A000DFD1C000D0AE9200F8F2EF00000000000000000000000000ECD3B5001C15
      0E00231E1600E5D0AE00E9D4B800E4C89D0018140D002B272000EFD9B400E6D3
      B100E7D6B500EAD9BB00E6D6BB00C8BBA900C2B19800CEC0AB00EADABB00E9D7
      B800E7D6B400EFDCB7008C765A00000000007B695200EDDABB00EFDCBD007465
      51000200000097775B00FFFDF800000000000000000000000000E0C5AE00D8C2
      AB00DCC9AE00D8BEA000D8C0A200D8C0A200D8C0A200DBC5AA00DDCBB000DFD0
      B800E0D3BD00E1D6C200E7DCCC00C7B8A2000A0907004A402E00EAE0CE00E1D5
      C000E0D2BB00DFCEB500DCC9AD00D9C4A500D8C0A200D8C0A200D8C0A200D8BE
      A000E0D3C000D2AE9100F9F3F000000000000000000000000000E0C6B100D8C3
      AE00DDCDB200D9C0A000322A1F000000000013110D00AF987900EAD9BD00A99C
      89003B3020008F6A310068533400887A6800EAEAE9009C866800796647007669
      53009F8A6E00C0AF9900F0DFC00098816600100C06000000000042372B00EAD2
      A800423A2E00110E0A00F4F0EA000000000000000000F3ECE600CEB09200DDD1
      BD00D6BE9E00D6C0A200D6C2A300D9C09B0067512C0044301A0044311C002C23
      1600241D11001F190F001A150E001D180F00241D13002B21150044321C004432
      1C0048351D00553F1F004D3A1E0055402000CDAD7D00D9C5A800D6C0A200D6BE
      A000D9C6AA00D6C2AB00DFC6AD000000000000000000F5EDE700DFBB98002622
      1D00201C1500EAD4B100E6D3B700E2C8A2001C181100000000001D1911001D18
      11001D1811001D1912001A1611000C0B0A000C0905000F0D0A001D1911001D19
      11001D1811001D191100130F0A000000000086735900EDDABB00EFDCBD007D6A
      5200010101009D887400EBD4BD000000000000000000F4EEE800D0B09100DFD3
      BD00D8BE9E00D8C0A200D8C0A200D8C0A200D8C0A200D9C2A300DBC5A800DCC9
      AE00DDCCB300DFD0B800E9DDC700696056000000000014121000E1D5BD00DFD0
      B600DDCBB200DCC7AB00D9C4A500D8C0A200D8C0A200D8C0A200D8C0A200D8BE
      A000DBC7AA00D8C2AB00E0C7AD000000000000000000F4EDE700D0B29600DFD3
      BE00DFC8A800594A390000000000110E0A00AB967A00D9C2A200604B31007459
      31002F271B00E5BB7A00F2D69D0000000000F3E1BB00F1D9A80000000000E6DD
      CA005A463000726A5B0085704F00F2E1C000A98F70000C0A0700010100002B24
      1A0001000000241C1100ECD3B2000000000000000000DFC6AE00D6C0AB00D7C3
      A600D6C0A200D6C0A200D6C0A300DDC59E004C3D24001F1A1000231C12001612
      0B00110E090019150C001D170E001C170E001C180F00442F190047341D004230
      1B00412F1B003A29180029211500422F1A00C2A57C00DAC6A800D6C0A200D6C0
      A200D6BE9E00DCCDBA00D0B29500F8F3EF0000000000DFC6AF00E5D1BB006A5B
      46000000000042392C009A826500362F2700000000004B433800766A5D007267
      5900746A5E00746C5F007B726500554B40000505030059524A0079706300736A
      5E0073695D0073695B007367560015130E0015110B007C6A510078674F00110E
      0900241E1700DFCDB400D4B59B00F8F3EF0000000000E0C7AE00D8C0AB00D9C4
      A600D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D9C2
      A500DBC5A800DCC9AD00E4D3B80092826B000202010022201C00E4D2B600DBC7
      AB00D9C5A600D8C2A300D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8BE9E00DDCEBA00D2B29400F9F4F00000000000E0C8B100D8C2AE00DBC6
      AC00D3B893001E180E0000000000614B31006F542F004236280077542700F2C5
      7800A28D7100F0DFBD00FEFCF700F6EBD500E7C8930000000000F6EDDC00E4C2
      8900F4F0E600FAF9F900685B44006658440081715A00231D1300000000000000
      0000000000002F2D2900E0C2A300FAF5F100FEFCFA00D1B39700DACAB500D6BE
      A000D6C0A200D6C0A200D7C2A500D7BE98005E4A2A003A2A1900392819003829
      19003C2B1A003D2B1A00402E1A0043301A003C2B1A0031241700322517002D23
      16002A20140035261600322618003C2B1A00B59B7C00DCC5A800D6C0A200D6C0
      A200D6C0A200DAC8AE00D1B8A000E7D6C500FEFCFA00D1B49800DFCDB800D9C0
      9D00493D2E0009060100050200000907040016120C00917C6200F1DFBE00E9D6
      B800F0E2CD00F1E4CE00F2E5CD00E4D4BA00A2948000E5D6C000F3E6D000EFE1
      C800F0E1CB00EFE0C800FCEBD3003E362A000A08050005030000020000001F1B
      1400B1987700E6D6BB00D1B8A200E7D6C500FEFCFB00D3B39600DCCBB500D8BE
      A000D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D9C2A300DCC7AB00CBB28B000B090600584A3500E3CEAE00D8C2
      A300D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200DCC9AE00D3B8A000E9D8C500FEFCFB00D3B59A00DCCBB700D8C0
      A300DBC3A600B49C7E007E6B4C00473A2800BB9A6C00BE9C6B00CA954F00F0D5
      9D00F0E0C0000000000000000000FDFBF60000000000F7F1E400E1BA7D00FBF6
      EF0000000000F9FAF90038302600070300000000000000000000000000000000
      0000000000002F2D2B00E4CBB200EAD9C800EFE4D700D0B29A00DACAB000D6C0
      A000D6C0A200D6C0A200D7C2A300D9BE9A005E482600302416003B2B19004330
      1B003F2C1900392A190043301A003D2B1900362818003B2B1900332618002F24
      17003A291800322517002B2216004A351C00B89D7900DAC5A800D6C0A200D6C0
      A200D6C0A200D6C2A200D7C3AE00DCC3AB00EFE4D700D0B29B00DAC8AF00DAC5
      A600E0C8A800B49873008B775F00B59E7D009A8060002F271A00D9C09D00DDCB
      B200E1D1BB00E0D0B800E0D1BB00EADCC800EFE1CB00E2D3BB00E0D0B800E1D1
      BB00E0D0BA00E6D7C200B4A082002D241900C0AB8B00A58F720097806700D7BD
      9A00DFCAAB00D6C0A300D7C3AF00DCC3AC00F0E5D900D2B29900DCCBB000D8C0
      A000D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A200DBC4A300C9B3940013100D008C745600DFC9AA00D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C2A200D9C4AE00DDC4AB00F2E7DD00DFC2AC00E7D8BE00DBC3
      A600D2B89800C2A98A008E7A60005E4E3900F6DFAE00F3DDAC00F9F0DD00F5EA
      D3000000000000000000000000000000000000000000F1E2C200F7F2E6000000
      0000FEFCFA00E6BB7600AB834A00C6BDAE0061584A0000000000000000000000
      0000000000002E2B2600F2E2CE00E4CBB700DCBEA500D6BDA800D9C5A800D6C0
      A200D6C0A200D6C0A200D7C2A300D4BB98005D4B2C0042301B004F3A1C004532
      1C0046321B00412E1A002C2215002D2316002A201500241D1200261E14002C23
      16003125170042301C0046331C004B391E00B69B7900DAC6A800D6C0A200D6C0
      A200D6C0A200D4BE9E00DAC8B300D6B8A000DCBEA600D6BDA900D9C5A900D6C0
      A300D7C2A600E0CBAF00E5D0B200E0CBAF00E4CEAC003B31240066584500EBDD
      C800E0D0B800E1D1BA00DFD0B800CBB79D00E7D7BB00E0D0B800E0D0BA00E0D0
      B800E1D0BB00EBDDC600332D25006E5F4A00F1E4CE00ECE0CB00E4D0B200DAC5
      A900D6C0A300D4BEA000DAC8B400D6B8A200DDBEA500D8BDA800DBC5A800D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A200DBC4A300C7B2940015120E00967D5B00DFC9AA00D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D6BE9E00DCC9B300D8B8A000D5B89F00907D6B00837158007564
      4A006E6046007E715E00A0927B00E7DFCE00F7ECD600FFFFFE00000000000000
      000000000000000000000000000000000000000000000000000000000000FBF6
      EF00DBA25800DFAE6900FFFEF50000000000F9E5BD0095846C0028241E000000
      0000000000001C1A16008E7B6500BB9D8400C89E7E00DAC8B300D6C2A300D6C0
      A200D6C0A200D4BD9E00D6BEA000D4BB9500614B27002C201100241C1000291E
      1200221A0E0021190D002B1F1100261E11002B2113003B2A1800422E18003E2C
      18003D2B18003B2B1900402B1700412E1A00B89B7600D9C3A500D4BD9E00D6BE
      A000D6C0A200D6BEA000DAC8B000D3B8A000C8A07D00DAC8B400D6C2A500D6C0
      A300D6C0A300D6C0A300D6C0A300D6C0A300DCC8AB00A58F730027211800D7C5
      AC00E2D4BD00E0D0B800E5D6BD00473B2A00806C4C00E6D7BE00DFCEB700E1D1
      BA00E7D9C200A38F74002E261900DDCBB100E2D4BD00DDCBB400D6BEA200D6C0
      A300D6C0A300D6BEA200DAC8B100D3B8A200C99E7A00DCC9B300D8C2A300D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A200DBC4A300C7B2940014120D00927A5A00DFC9AA00D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8BEA000DCC9B000D5B8A000AE83500092867600B1ACA500DCD9
      D200F9F7F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCF9F400E0B4
      7100EDD6A8000000000000000000F0DFB800EACB920000000000FAF6F000564F
      44000000000024231F00AFA69900997F5C00BB8C6E00DDCDBA00D6C0A200D6C0
      A200D6C0A200DFCEB800E2D6C300F1DFBB00D69E5600A879410084693D008464
      3000A5773D00BA844200C88C4600C88F490091744A00806B4600897045007866
      44007766460079684700635741005E554600E1CAA200E7DAC500E1D3C000D9C3
      A600D6C0A200D6BEA000DAC8AE00D1B59E00BB8E6A00DDCDBA00D6C0A300D6C0
      A300D6C0A300D6C0A300D6C0A300D6C0A300D6C0A300E2CDAE004E402D006252
      3E00EBDFC800E1D1BB00EADAC2002E29220027211800EAD9BD00E1D3BD00E1D1
      BA00E4D6BE00393026008C765D00EBDDC800E0D0BA00DAC6AC00D6C0A200D6C0
      A300D6C0A300D6BEA200DAC8AF00D1B5A000BB8B6500DFCEBA00D8C0A200D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A200DBC4A300C7B2940014120D00927A5A00DFC9AA00D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8BEA000DCC9AE00D3B59E00D0954E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7EFDF00F3E5
      C8000000000000000000ECD2A000E9C88D00FEFCF90000000000000000000000
      00007B756A003C33270000000000F5E4C300B5866800DFD0C000D6BEA000D6C0
      A200D7C3A800E9CE9B00DAAE6400544F4800352E26006E696200EFB35900E09A
      3300EAB25800695E4700392F21003C3426003D362B003B3224004F493B00D6A3
      6000DA943000E4A24600917E6600393329003F3A3100C3A27100E4B66800E0D1
      BA00D4BEA000D6C0A000D9C6AB00D1B59B00B5886300DFD0C000D6BEA200D6C0
      A300D6C0A300D6C0A300D6C0A300D6C0A300D6C0A300D9C5A800BEAB8E002621
      1900C0AE9400EADCC500F0E2CE00302D29002D281F00EFDFC300E6D7C300EFE1
      CB0082725E00302C2500E4D3B800DFCEB700DFCEB700D6C0A300D6C0A300D6C0
      A300D6C0A300D6C0A200D9C6AC00D1B59D00B5855E00E0D2C000D8BEA000D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A200DBC4A300C7B2940014120D00927A5A00DFC9AA00D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A000DBC7AB00D3B59B00CA924C0000000000F5F2ED00F1EB
      DC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F1E400DCA85C00D38D3600F1DBAE000000000000000000000000000000
      000000000000DBD2C200F9FAFD00F3E2C300B6866900DDCEBD00D6BEA000D6C0
      A200D7C5AB00E2BA7600C28129000F101300000000001B1B1C00CE781A00B667
      0700D48423001B19160000000000000000000000000000000000090A0D00AE75
      2A00BA670700CD7716004C3E2500000000000000010095723D00D6912E00E1D1
      BD00D4BEA000D6C0A000D9C6AD00D1B39B00B7886500DDCEBD00D6BEA200D6C0
      A300D6C0A300D6C0A300D6C0A300D6C0A300D6C0A300D6C2A500EADCC500594D
      3E00493E2D00BDA68500B59D7C002A272200241E1500B49A7400AF987B00B59D
      790030271900A5917600E4D4BD00DFCEB700DDCAB100D6BEA200D6C0A300D6C0
      A300D6C0A300D6C0A200D9C6AE00D1B49D00B6855F00DFD0BD00D8BEA000D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A200DBC4A300C7B2940014120D00927A5A00DFC9AA00D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A000DBC7AD00D3B39B00CB924C0000000000ECEAE600312D
      2500A9A295000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1DF
      BB00EACB9300F3E4C300FBF5EA00F3E2BE00FEFDFB0000000000000000000000
      0000000000000000000000000000F1E0BE00C0957600DAC6B500D6C0A200D6C0
      A200D7C5AB00E4BD7A00C5863000151618000000000020202100D17D1E00BA6B
      0B00D6872600211E1A00000000000000000000000000000000000E0F1100B278
      2F00BD6B0A00CE7A190054452B0000000000040506009B774400D7953600E1D1
      BD00D4BEA000D6C0A000DAC6AE00D3B39D00C0977400DAC6B500D6C0A300D6C0
      A300D6C0A300D6C0A300D6C0A300D6C0A300D6C0A300D9C5A900E0CEB500D7C2
      A200211A1000443A2E00685B49001D1B180019150E0065574500675A49002B24
      1A003A312600E9D7BB00DDCBB200DDCDB200D9C5A900D6C0A300D6C0A300D6C0
      A300D6C0A300D6C0A200DAC6AF00D3B49E00C0946F00DCC7B500D8C0A200D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A200DBC4A300C7B2940014120D00927A5A00DFC9AA00D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A000DCC7AE00D5B39D00D2985400FFFEFE00FFFFFD001F1D
      170008060400857A6C00FFFFFE0000000000000000000000000000000000F1E2
      C500EBCE9800EBD09F00F4E9D2000000000000000000FAF4EA00E9CA9200F0DB
      B100FEFDFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFDBB200D0AB8D00D6BEAB00D7C2A500D6C0
      A200D7C5AB00E4BD7A00C5863000151618000000000020202100D17D1E00BA6B
      0B00D6872600211E1A00000000000000000000000000000000000E0F1100B278
      2F00BD6B0A00CE7A190054452B0000000000040506009B774400D7953600E1D1
      BD00D4BEA000D6BEA000D9C5AE00D3B59D00D0AC8F00D6BEAC00D7C2A600D6C0
      A300D6C0A300D6C0A300D6C0A300D6C0A300D6BEA200DFCEB700E0D0B800EBDD
      C600685E4F003C352C00F6E2BE00332E2A002D261B00EFD7B200D9C09D002822
      1800AE9B8500E6D7C000E0D0B800E1D3BB00D6C0A300D6C0A300D6C0A300D6C0
      A300D6C0A300D6BEA200D9C5AF00D3B59E00D2AB8C00D8BEAB00D9C2A500D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A300D9C4
      A800D8C4A800D8C0A200DBC4A300C7B2940014120D00927A5A00DFC9AA00D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8BEA000DBC5AE00D5B59D00D9AB7200FCF6EC00000000002C26
      1F000000000000000000433C3200EBE7DF00000000000000000000000000E6BE
      8000E5BB7800F2DDB400EACA8F00E6BE7E00E7C38800EBD09A00F7EDD9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECD3A600E5D0BB00CEB09800D9C6AB00D6C0
      A200D7C5AB00E4BD7A00C5863000151618000000000020202100D17D1E00BA6B
      0B00D6872600211E1A00000000000000000000000000000000000E0F1100B278
      2F00BD6B0A00CE7A190054452B0000000000040506009B774400D7953600E1D1
      BD00D4BEA000D6C0A000D7C2AD00D6B69E00E5D0BB00CEB19A00D9C6AC00D6C0
      A300D6C0A300D6C0A300D6C0A300D6C0A300D6C2A300E2D3BE00E0D0B800E1D1
      BB00E1D1B5002E271C001A150F0009070500080704001A160F00130F0A005545
      3400EDDFC600DFD0B800E0D0BB00DFCDB400D6BEA200D6C0A300D6C0A300D6C0
      A300D6C0A300D6C0A200D7C2AE00D6B7A000E7D2BB00D0B09800DBC7AB00D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200D8C4A800D6BE9E00D3AE
      7B00D3B28000D8C2A800DBC5AB00C7B2960014120D00927A5B00DFC9AD00D8C0
      A300D8C0A200D8C0A000D8C0A000D8C0A200D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A000D9C2AD00D8B69E00E7CB9F00F3E5C600000000002B26
      1E0000000000000000000000000018150F00867D6D00B8AC9800DDD6C800F9F3
      EB00EDC57E00F7E6C000F1DBAB00D28A3300E7BE7E00FFFFFE00000000000000
      00000000000000000000DDD8CD00C0BBB500F6F5F30000000000000000000000
      00000000000000000000FFFEFD00E7CA9900F7F0EA00CBA88D00DAC6B000D6C0
      A000D7C5AB00E4BB7800C3842C00151618000000000021212200D17A1C00B86A
      0A00D4852400211E1B00000000000000000000000000000000000E0F1200B076
      2B00BB6A0900CD78170057482D0000000000040506009B764300D6923100E1D1
      BD00D4BEA000D7C3A600D1B6A000E1CBB500F7F0EA00CBA98F00DAC6B100D6C0
      A200D6C0A300D6C0A300D6C0A300D6BEA200DCC8AE00E0D0B800E2D1BB00E0D0
      B800EBDCC600917D6500000000000000000000000000000000000A090800CDB7
      9A00E5D6C000E1D1BB00E0D1B800DAC8AE00D6BEA200D6C0A300D6C0A300D6C0
      A300D6C0A300D7C3A800D1B7A200E1CBB500F7F1EB00CCA88C00DCC7B000D8C0
      A000D8C0A200D8C0A200D8C0A200D8C0A000D8C2A600D3B07E00C98C4300CC9B
      5700CB965000CB924C00D9C4A600C7B8A50014120E00927E6100DFCEB800D8C5
      AE00D8C5AD00D8C4AB00D8C4A600D8C0A200D8C0A000D8C0A200D8C0A200D8C0
      A200D8C0A200D9C4A600D3B6A000E3CCB500F4EAD900ECD2A000000000002B25
      1E0000000000000000000000000000000000000000000C0700004F3920007064
      4F007D694600D2C8B700FEF6EA00FBEAC800FFFBED000000000000000000ECEA
      E600AEA69A008377620074644A0072624A0075664F00887D6B0099908400F2F1
      EF000000000000000000F7EFDF00EBD2A50000000000D1B09200D6BEA800D6C0
      A200D6C2A600E7CE9A00CE98480011121500000000001A1A1A00DF953A00C071
      0F00E09D3E001D1A1500000000000000000000000000000000000A0A0B00B885
      4700C06E0D00DA923000362E240000000000010204009A774400E1AA5200E0D0
      BB00D4BE9E00D9C8AE00CBAA8D00F0E5DA0000000000D1B19400D6BEA900D6C0
      A300D6C0A300D6C0A300D6C0A300D6BEA200DFCEB700E0D0B800E0D0BA00E0D0
      BA00E1D1BB00E6D4B8001E1B16000000000006050300020100002B251E00EAD6
      B700E0D1BA00E0D1BA00E1D3BB00D6C0A300D6C0A300D6C0A300D6C0A300D6C0
      A300D6C0A200D9C8AF00CBAB8F00F0E5DA0000000000D3B09100D8BEA800D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A500D8C2A300C98E4300D6BB9400DBD0
      C000DBD0C000D3B07D00D09D5600C9BDAE0014120E0096826600E0D5C000D9CC
      B800D9CCB800D9CCB800D9CCB800D9C9B300D8C4A600D8BEA000D8C0A200D8C0
      A200D8C0A000DBC9AE00CCAA8C00F1E7DC0000000000C39D6F00837154001814
      0E00000000000000000000000000211D1800665B4800746C5F00A9957A00C5B4
      9A008F837100685B4700897D6C00A5988600BBAB90009C9993009F8359004E3C
      290081756100B4A58D00DDCEBA00E1D5BE00E0CBAB00503E2B00000000002623
      1C00968A7700D6D6D200EFD5A500F1E2C80000000000E7D7C500CBA88D00D9C5
      AB00D4BE9E00E0D0B600E6DCC300211E1B000B090500110E0A007C6B4C00D7B2
      6E00B5874F001C1509000B0A06000C0B09000C0B09000B0A070016110700BE89
      4100E6BD6E00D4A35D001C160D000B0906000F0D0A00BBAE9700EBDCC000D6C2
      A500D6C0A200D6BBA600D1AE9200FEFDFC0000000000E7D7C500CBA98F00D9C5
      AC00D6C0A200D6C0A300D6C0A300D4BEA200E0D0B800DFCEB700DFCDB500E0CE
      B700DFCDB500E7D9C30098886F0009070500110D070027221A00CEC2AB00E2D4
      BE00DFCDB500E0D0B700DCCBB100D3BA9B00D4BD9E00D6C0A300D6C0A300D6C0
      A300D6C0A300D6BBA800D1AF9400FEFDFC0000000000E9D9C500CCA88C00DBC5
      AB00D8C0A000D8C0A200D8C0A300DCD2C000D5B37E00D3AD7100DDD8D000DCD3
      C200DCD3C200DDD6CC00D0A05A00C9B596001513100098866B00E3DBCB00DCD3
      C200DCD3C200DCD3C200DCD3C200DCD3C200DCD2C000D9C5AB00D8C0A000D8C0
      A200D8C0A200D8BBA600D3AE9100FEFDFC0000000000DDCBB800A28166001615
      130002000000221C1100000000001B181200D2C0A600F7F0E200E5DDD000E0D8
      C800E6DFD000DBCEBD00BDAE9600A0927E009C8B76007A766C008A765600A396
      8300E7E0D200E2D9CB00DDD3C300EAE4D600AB9A8300110E0900000000005B4A
      3600A58B6D0074614400B5906500FEFDFB0000000000FDFCF900CEAA8D00D7C2
      AD00D6C2A200D4BD9E00E0D3C200D6C8B500CBBDA500C8BAA200B8AD9B00D7C5
      A600D7C29B00CBBDA300CDC0A800CEC3B000CEC5B300CDC2AB00D0C2A500E2CA
      9A00E7D1A600E1C89D00CDBBA000CBBDA500CEC0AA00E2DACD00D6C2A600D6BE
      9E00DAC6B000CAA58A00EBDDCE000000000000000000FDFCF900CEAB8F00D7C2
      AE00D6C0A300D6C0A300D4BEA200DDCDB400EBE2D600F2ECE500F5EFE700F6F1
      EB00F6F2ED00F8F5F100FFFEF90034322E0000000000A09A920000000000F8F5
      F100F5F0E900F6F0EB00EFE9DF00E9DDCE00E0D1BB00D6C0A300D6C0A300D6C0
      A200DAC6B100CAA68C00EBDDCE000000000000000000FDFCFA00D0AA8C00D9C2
      AD00D8C0A200D8C0A000DBCCB500DFDCD500D5B37B00D5B37B00E0DDD800DDD8
      CB00DDD8CB00DFDCD600D3A86400C9B8980015131000988B7200E4DFD500DDD8
      CB00DDD8CB00DDD8CB00DDD8CB00DDD8CB00DDD9CC00DDD5C400D8C2A500D8C0
      A000DCC7B000CBA58900EDDFD000000000000000000000000000BE9C7F000A08
      0500443B2D00DBBE9800241F180000000000231E1500BDB29C00EDE9E000E0DB
      D000DDD8CB00DFD9CD00E2DDD300E6E2D800E7E2D900ECE6DB00E9E4DB00E6E1
      D600DDD8CB00E0DCD000EFEADF00AB9D890012110F0000000000362E2100E1CA
      A500E6D6C000D2AC9200E9DBCB00000000000000000000000000EDE1D400C8A3
      8700DAC8B200D6C09E00DDD0BA00E7DFD100EAE0D300EAE0D100E9E0D100E5DC
      D000E4DCD100E9E0D100EAE0D100EAE0D000EADFD000EAE0D100E9E0D100E2DA
      D100E1DAD000E2DAD100E9E0D100EAE0D300EAE0D100E1D6C500D7C3A600D7C3
      A600D4BAA500D4B59A00FFFEFE00000000000000000000000000EDE1D400C8A5
      8900DAC8B200D4BEA000D9C3A800F8F6F1000000000000000000000000000000
      00000000000000000000000000003B3C3D0000000000554C4000E2E0DA000000
      000000000000000000000000000000000000FEFDFC00DCCAAF00D4BEA000D9C3
      A800D4BAA600D4B59B00FFFEFE00000000000000000000000000EFE3D600C9A3
      8600DCC9B200D8BE9E00DCD5C400DFDDD800DCD2BA00CC994E00DDD6C400EBEA
      E400E9E8E300D9CBAA00D2A05600CECCC400151410009B8F7800E5E3DC00DFDC
      D300DFDCD300DFDCD300DFDCD300DFDCD300DFDCD300DFDCD200D9C5AA00DBC4
      A600D6BAA500D6B59900FFFEFE00000000000000000000000000B4A999003D30
      2600DBC6AE00E2D0B100BAAE9A001A1916000000000013120D008E847100EBE6
      D900EDEBE500E4E2DC00E0DDD500DFDCD500DFDCD300DFDCD500E0DDD500E4E2
      DC00EDECE500E7E2D6007B7463000D0B070000000000302B1F00D5BD9900DDCB
      AF00D5BAA800D8B89F00FFFEFE0000000000000000000000000000000000DDC2
      AA00CDAD9500DAC6AE00DDCEB800E5DDD300E4DCD000E4DCD000E4DCD000E4DC
      D000E4DCD000E4DCD000E4DCD000E4DCD000E4DCD000E4DCD000E4DCD000E4DC
      D000E4DCD000E4DCD000E4DCD000E4DCD000E4DCD100E2D9CA00D7C5A800D7C2
      AE00CAA38500F6F1EB000000000000000000000000000000000000000000DDC2
      AB00CDAE9700DAC6AF00D7C2A300EFE7DC00FAF9F700FDFDFC00000000000000
      0000000000000000000000000000625F5800251F19000A060000BBB7AC000000
      00000000000000000000FEFEFE00F5F0EB00EAE0D100D7C2A500D6C2A500D7C2
      AF00CAA58600F6F1EB000000000000000000000000000000000000000000DFC2
      AA00CEAD9400DCC7AE00DCD2BD00E0E1DD00E1E3E100D8C29400C79954009991
      7E00A8967500CEA05600DFD6BE00D2D3D00014131000968C7800E7E7E300E0E0
      DB00E0E0DB00E0E0DB00E0E0DB00E0E0DB00E0E0DC00DFDCD300D9C5AA00D9C2
      AE00CBA38300F6F2ED0000000000000000000000000000000000F4F2EC00DCC0
      A300D5B7A000DBC6AF00E6DFCD00BDBBB20026231D000000000000000000342F
      2600958E7F00DBD6C800EFEDE600EFEFEA00EFF0EB00EFF0EA00EFEDE600D9D3
      C300888174002E2A2200000000000000000034302800DCD5BD00E0D0B700D9C3
      AF00CBA68A00F6F2EC000000000000000000000000000000000000000000FEFD
      FC00D1B29400CDAD9400DCCBB500E4DCCE00E9E4DD00E7E2DA00E7E2D900E7E2
      D900E7E2D900E7E2D900E7E2D900E7E2D900E7E2D900E7E2D900E7E2D900E7E2
      D900E7E2D900E7E2D900E7E2DA00E9E4DC00E7E2DA00DFD1BD00D9C2AE00C8A2
      8600F0E5DA00000000000000000000000000000000000000000000000000FEFD
      FC00D1B29500CDAE9700DAC8AF00D4BEA000D9C6AB00E7DCCA00000000000000
      0000000000000000000000000000FDFAF700F5F0E900ACA38F00F2F1ED000000
      00000000000000000000FDFAF900DAC6AC00D3BB9B00D7C3A600D9C3B100C8A3
      8800F0E5DA00000000000000000000000000000000000000000000000000FEFD
      FC00D3B29200CEAD9200DDCCB600DFDDD500E1E5E400E4E9EA00DDD9C7001715
      1000463E2D00E8E7DD00E5EAE900D3CEBE000C0B0800685F4E00EAEDE900E1E4
      E000E1E4E000E1E4E000E1E4E000E1E5E300E1E4E000DDD3C000DBC2AE00C9A2
      8500F1E7DC00000000000000000000000000000000000000000000000000FFFF
      FE00D3B29600CEAF9800DCCDB800E9E9E000E0E0D600544F4400070605000000
      000000000000161410002E2C2800504A4000515351004F483D002D2B27001512
      0E000000000000000000100E0A0066635800E5E5DF00E2DBCB00DBC3B100CAA5
      8B00F1E6DC000000000000000000000000000000000000000000000000000000
      0000FCF9F700D3B29200CDAB9200DDCBBA00E4DDD100EAE9E400ECEAE700ECEA
      E600EBE9E500EBE9E400EBE9E400EBE9E400EBE9E400EBE9E400EBE9E400EBE9
      E500EBE9E500ECEAE700EBEAE600E7E2DC00E1D4C300D6BBA600C8A08200EFE4
      D700000000000000000000000000000000000000000000000000000000000000
      0000FCF9F700D3B29400CDAE9700DAC6B200D4BE9E00DAC6AB00FCF9F7000000
      000000000000000000000000000000000000000000000000000000000000FAF8
      F600EDE6DA00EFE7DD00E2D3BD00D4BEA000D9C6AE00D4BDAB00C8A28500EFE4
      D700000000000000000000000000000000000000000000000000000000000000
      0000FCFAF700D5B29100CEAB9100DDCCBA00E0DDD300E4E8E700E9EEEE001717
      140032322F00F2F7F700E5EBEA00DCD9CC000E0C08006B614E00EBF0EF00E3E8
      E700E4E8E800E4E9E900E3E9E900E1E3DD00DFD6C500D8BBA600C9A08000F0E5
      D900000000000000000000000000000000000000000000000000000000000000
      0000FCFAF700D5B49600CEAE9600DDCDBA00E5E4DC00F2F5F200B7BAB2004F4A
      4100191712000000000000000000000000000000000000000000000000000000
      00001A191500605B4F00D0D0C200F1F2EC00E2DBCD00D6BDA900CAA38800F0E5
      D900000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00DDC2A800CAA38600D6BEA800E0D4C300E5E0D400E9E6
      E100EAEBEA00EBEDED00EBEDED00EBEDEF00EBEDEF00EBEDEF00EBEDED00EBEC
      EC00EAEAE600E6E2DA00E2DACB00DCCAB800CDAB9200CEAA8A00F1E9DF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00DDC2A900CAA68B00D6BEA900D9C5AC00E2D4BE00F8F5
      F0000000000000000000FEFEFE00F5F0E900F3EFE700FEFEFD00FAF9F600E4D7
      C200D1BA9A00D3BB9D00D6C2A500DAC5B100CEAE9700CEAB8C00F1E9DF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00DFC2A800CBA38500D8BDA800DFD5C200EAE8DF003E3A
      30000F0E0C00D5D8CE00F9FFFF00B0ADA0001A171100D0D2C200E8EFF100E4EB
      EB00E3E8E700E0E1D900DFD9CB00DCCBB600CEAB9100D0AA8900F2EAE0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00DFC3AB00CBA68B00D8BEAB00DFD5C500EBEAE100F2F4
      F000E1E4DB00A5A69F0075756E005A5A51005A5444005A5C560077787400A6A9
      A300E1E2D900F1F2EA00E6E2D800DDCBBA00CEAE9600D0AC8F00F2EAE0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECE0D300CEAB8F00CAA68C00D4BBA500DACA
      B500DDD1BE00DDD4C200DFD7C800DDD7C800DDD6C600DDD7C800DDD6C500DDD3
      C000DCCDBA00D7C2AD00CEB09800CAA38600DDC5AD00FAF8F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECE0D300CEAE9100CBA99100D4BAA500DCCA
      B500E4D9C600E4D7C300E0D1BA00D6C0A300D6C0A200DFCEB500DCCAAE00D7C2
      A600D9C6AE00D7C2AC00D0B49E00CAA68B00DDC5AE00FAF8F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEE1D500D0AB8E00CBA68B00DCC2AB00B39D
      8200090706000D0D0B0027272300100D0900574A3200E7E4D600DDD8C500DDD5
      C000DDD0BA00D9C2AD00D2B09800CBA38500DFC5AD00FBF9F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDE1D500D0AE9300CBA99000D6BDA800DCCD
      B800E2D9C800EBE5D600EDEADF00EDEADD00EDEADC00EDEADD00EDE9DC00EBE5
      D300E1D5C300D9C5AF00D2B29C00CBA68B00DFC6AF00FBF9F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFAF900E7D7C500D1B09400CBA6
      8C00CDAD9400D4BBA500D9C3AE00DCC8B600DDCABA00DAC5B200D7BEAA00D1B3
      9B00CBAA9100CEAB8F00DFC5AD00F3ECE6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFAF900E7D7C500D3B19700CBA8
      8E00CBAC9400D3BAA600D7C2AE00DDCABA00DDCBBD00D9C3B200D7C0AC00D1B7
      A200CDAC9500CEAE9200DFC5AE00F3ECE6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFBFA00E9D9C500D3B09200D8B0
      9400886B5800271F1900221C160068594C00E7D3BD00DDC7B300D9BEAA00D3B3
      9B00CEAA8F00D0AB8E00E0C5AD00F4EEE8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFBFA00E9D9C600D5B29800CDA9
      9000CEAF9800D8BDA800DCC5B100DFCBBA00DFCDBB00DCC6B400D9C2AC00D3B5
      A000CEAC9500D0AE9300E0C6AF00F4EDE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6EF
      E900E4D0BA00D0AB8F00C2957600B6866900B5856800BB8A6D00C69D7D00DCBE
      A500EFE5D900FEFEFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6EF
      E900E4D0BA00D0AC9100C2977400B7886500B5866300BB8C6900C69E7C00DCBE
      A600EFE5D900FEFEFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F0
      EA00F1E0CB00EECBAA00E1B38900CE997100B6856000BB896400C79D7800DDBE
      A500F0E7DB00FEFEFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F0
      EA00E5D2BB00D2AE9300C3997A00B88B6C00B78A6B00BD8F7000C8A08100DDC0
      A800F0E6DB00FEFEFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC00F0E5D900E1CE
      BA00D7C0A800D6C2AB00D6C5B200D6C6B500D4C6B500D4C6B300D6C3AE00D6C0
      A800DCC6AE00E9D7C600F9F3EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC00F0E5DB00E9D8
      C400E9D5BB00E8D8C000E7DBC700E7DCCB00E7DCCB00E7DCC900E7D8C400E8D6
      BD00E3D0B800E8D8C500F9F3EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC00F0E5D900E1CE
      B800D8BEA600D6C2AA00D6C5B200D6C7B300D6C7B300D5C5B200D6C2AD00D6BE
      A800DCC5AD00E9D8C500F9F3EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC00F0E5D900E1CE
      BA00D8C0A900D6C2AC00D6C5B200D6C6B500D5C6B500D5C6B400D6C3AF00D6C0
      AB00DCC6AF00E9D8C600F9F3EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00EBDDCE00D4B69B00D0BBA300DAD3
      C500E6E5E000EBEDED00ECF0F100EAF0F200EAF0F200EBF0F200ECF0F000E9EA
      E900E0DCD300D3C3B200D0B69B00DFC6AE00F9F3EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00EBDFD000D6B69B00D9C2AA009A8B
      76003534330036393A00383B3C00393B3C00383B3D00393B3C00373A3B003637
      37009B978E00DCCCB600D2B69B00E1C9B000F9F4EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00EBDDCE00D5B59A00D0BAA200DCD3
      C500F1F0EB00F9FBFB00FBFEFF00F9FEFF00F7FEFF00FAFEFF00FAFDFE00F7F7
      F600E4E0D800D3C2AE00D0B59A00E0C7AE00F9F4EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFE00EBDDCE00D5B79D00D0BBA500DBD3
      C500E6E5E000EBEDED00ECF0F100EAF0F200EAF0F200EBF0F200ECF0F000E9EA
      E900E0DCD300D3C3B200D0B79D00E0C8B100F9F4EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F2EC00D7BBA200D1BAA200DDD6C800E7E4DC00EAE5
      DF00EBE7E200ECEAE900EDEDEC00ECECEC00EBECEC00ECEDEC00EDECEB00ECE9
      E500EAE6E000E9E6E000E5E0D700D7C8B500CEB29400E9D9C800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F1EB00D9BBA000D3BAA200DFD8C900F1EDE7006459
      4600000000000000000000000000000000000000000000000000000000000000
      000062615E00F1EFE900E5E1D900D9C9B500D2B29500E9DBC900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F1EB00D8BA9E00D2B8A000DDD6C700E8E4DC00EBE8
      E0009A91820052514F0052525200515252005152510051525200515150006864
      5F00E1DCD200EAE8E100E4E0D800D8C7B300D0B09400E9D9C700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F1EB00D8BBA200D2BAA300DDD6C800E7E4DC00EAE5
      DF00EBE7E200ECEAE900EDEDEC00ECECEC00EBECEC00ECEDEC00EDECEB00ECE9
      E500EAE6E000E9E6E000E4E0D800D8C8B500D0B29800EADBCA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7EDE500E1C2A300E4D7C600E2D9CA00E2D7C500E4DACB00E6E0
      D600E9E5DD00EBE9E400EDEBEA00EDEDEB00EDEDEB00EDECEB00ECEAE700EAE7
      E100E7E2DA00ECE5DC00F2E9D900EDE5D600DFD7C800CEB69D00DFC5AB00FEFD
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000F0E6DC00D2B09200DCCCBA00E3DCCB00E3D9C500EFE7DB00695D
      4700000000000000000000000000000000000000000000000000000000000000
      000068646100F0E9E000E3DBC900E3DBC900E0D9C900D0B69D00E0C5AB00FEFD
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000F0E5DB00D0AE9100DBCBB800E3DBC900E3D8C400E7DDCE00D2C5
      B60041392D007C7C7B007C7C7C007C7C7C007C7C7C007C7C7C007F8080004241
      3F007D736600EEE7DC00E3D9C700E3D9C700DFD8C700CEB59B00DFC4AA00FEFD
      FC00000000000000000000000000000000000000000000000000000000000000
      000000000000F0E5DB00D0B19500DBCBBA00E2DBCA00E2D8C500E4DBCB00E6E0
      D600E9E5DD00EBE9E400EDEBEA00EDEDEB00EDEDEB00EDECEB00ECEAE700EAE7
      E100E7E2DB00E6DFD200E2D9C800E2D9C800DFD8C800D0B7A000DFC5AE00FEFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000F4E9DD00947051004C463E00AA957700E1D0B500E0D3BE00E2D9C800E5DD
      D000E7E1D700E9E5DD00EBE7E100EBE9E500ECE9E500EBE9E400EAE6E000E7E2
      DA00EAE2DA00CAB69800564D410097826600E2D0B200DFD4C200D3BBA300D6B8
      9A00FEFDFC000000000000000000000000000000000000000000000000000000
      0000EFE5D900D0B09400DFD3C000DFCEB200DFCBB000E1D5BE00EFE7D8006A5E
      4900000000000000000000000000000000000000000000000000000000000000
      000068645F00F0E8DC00E2D8C400DFD2B800DDCBAE00E1D6C200D5BBA300D8B8
      9A00FEFDFC000000000000000000000000000000000000000000000000000000
      0000EFE4D800CEAE9200DDD2BE00DDCCB000DDC9AE00E0D3BD00E5DCCB00C4BA
      AB00645A47000000000000000000000000000000000000000000000000009B98
      9500776B5900EDE4D800E1D6C200DDD0B600DCC9AD00E0D5C000D3BAA200D6B6
      9800FEFDFC000000000000000000000000000000000000000000000000000000
      0000EFE4D800CEB19600DDD2C000DDCDB200DDCAB100E0D3BE00E2D9C800E5DD
      D000E7E1D800E9E5DD00EBE7E100EBE9E500ECE9E500EBE9E400EAE6E000E9E2
      DB00E6DFD500E4DBCD00E1D6C300DDD0B800DCCAAF00E0D5C200D3BBA500D6B8
      9C00FEFDFC00000000000000000000000000000000000000000000000000F5EC
      E400BA9577001A161000000000001A160F00D1BB9A00E0D1BB00E1D4C000E2D9
      CA00E5DDD000E6E0D600E7E2DA00E9E4DC00E9E4DD00E9E4DC00E7E1D900E6E0
      D600E5D9C8002B261E00000000000D0A0600B5A08000DCC5A600DFD0BA00D3BD
      A300DFC6AD00000000000000000000000000000000000000000000000000F2EA
      E200D0AD8F00E1D6C200DBC4A600D9C4A500DFCCB000E1CCAB00332D25000F0E
      0C00000000000000000000000000000000000000000000000000000000000000
      00000E0E0D0054483A00E7DBC000DFCEB300DCC7AA00D9C0A000E0D2BA00D5BD
      A300E0C7AD00000000000000000000000000000000000000000000000000F2EA
      E100CEAB8E00E0D5C000D9C2A500D8C2A300DCC9AD00DFCEB600E4D8C200C7BD
      AE00605747000000000000000000000000000000000000000000000000008080
      82005D574F00EBE1D200E0D3BB00DDCCB200DBC5A800D8BE9E00DFD0B800D3BB
      A200DFC5AB00000000000000000000000000000000000000000000000000F2EA
      E100CEAE9200E0D5C200D9C3A800D8C3A600DCCAAF00DFCEB800E1D5C000E2D9
      CA00E5DDD000E6E0D600E7E2DB00E9E4DC00E9E4DD00E9E4DC00E7E1D900E6DF
      D500E4DBCE00E2D8C600E0D3BD00DDCDB400DBC6AB00D8C0A200DFD0BA00D3BD
      A500DFC6AE000000000000000000000000000000000000000000FBF7F500D6B5
      9700B3A89A00090A0A000000000007060600AE9E8600E6D7C000DFD0BA00E1D4
      C200E2D9C800E4DCCD00E5DDD100E6DFD400E6DFD400E6DFD300E5DCD000E6DD
      CE00D1C5B3001211100000000000000000008F826F00E7D4B600D7C0A200E0D3
      BE00D1B69B00EADACA0000000000000000000000000000000000FBF7F500D2B0
      9200E0D3BE00DBC5A600D9C0A200D9C2A300DDC9AB00DBC29D000F0D08000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000026211900E8D9BB00DDC9AD00DBC4A600D9C2A300D9C0A000E1D5
      BE00D3B69B00EADCCB0000000000000000000000000000000000FBF7F500D0AE
      9100DFD2BD00D9C4A500D8BEA000D8C0A200D9C4A600DDCBB000E4D6BE00BBAB
      940061523D00FFFFFB00FAF3E800FEFEFD0000000000FCF9F200FEFCF6008C89
      86004C443B00EBE0CC00DDCEB500DCC7AB00D9C2A500D8C0A200D8BE9E00E0D3
      BD00D2B59A00EADBC90000000000000000000000000000000000FBF7F500D0B1
      9500DFD2BE00D9C5A900D8C0A300D8C2A600D9C5A900DDCBB200DFD2BA00E1D5
      C200E2D9C800E4DCCD00E5DDD200E6DFD500E6DFD500E6DFD300E5DCD000E4DB
      CB00E2D8C500E0D3BE00DFCEB700DCC8AE00D9C3A800D8C2A500D8C0A200E0D3
      BE00D2B79D00EADBCA0000000000000000000000000000000000E0C6B000DDC8
      B200B5A38E000C0B0900000000000706060085705A00D4BA9500DFCDB300DFD0
      BA00E0D3BE00E1D6C300E2D7C800E4D9CA00E4D9CA00E4D9C800E2D7C600E4D7
      C500D0C2AB0015141300000000000001000073644F00C5AA8200D6C09E00D7C0
      A300E0D3C200D0B09200F7F3EF00000000000000000000000000E1C7B000D9C4
      AD00DDCBB000D9C0A200D9C2A300D9C2A300E1CCAB008B7A6400030201000302
      00000806030006050200040402000A0A08000000020006050400080603000706
      0300010100000B0A0800BAA58900E0CBAD00D9C2A300D9C2A300D9C2A300D9C0
      A200E1D5C200D2B09200F7F3EF00000000000000000000000000E0C5AE00D8C2
      AB00DCC9AE00D8BEA000D8C0A200D8C0A200D8C0A200DBC5AA00E7D6BB006857
      3F00A38C6900FEF9ED00F6EBD300FCF9F10000000000F7EEDB00F9F1DD00EDE3
      D00040362700C7B59B00E0CEB200D9C4A500D8C0A200D8C0A200D8C0A200D8BE
      A000E0D3C000D2AE9200F9F3F000000000000000000000000000E0CAB500DCCB
      B700E4D3B700E0CAA900E0CBAC00DDC8AB00D9C6AE00DBC6AC00DDCBB200DFD0
      BA00E0D3BE00E1D6C300E2D8C800E4D9CA00E4D9CA00E4D9C800E2D8C600E1D5
      C200E0D2BD00DFCEB700DCCAAF00D9C5A800D8C2A500D8C2A500D8C2A500D8C0
      A300E0D3C200D2B19600F9F3F0000000000000000000F4EDE700D0B29400E4D7
      C300AE9A7F000C0B0A0000000000010101000E0A040045392800E4D1B500DCCA
      B000DDCDB500DFD0BA00E0D1BD00E0D3BE00E0D3C000E0D3BE00DFD1BB00E1D1
      BB00CDBBA3001414120000000000000000000D090400261F1300D0B38C00D9C3
      A500DAC8AB00D7C3AD00DFC6AD000000000000000000F4EEE800D2B29400E0D5
      BE00D9C0A000D9C2A300D9C2A300D9C2A300E5D2B00040362900080501005241
      2700B2956E00A88250009B5D1800A8601400753C070094622300AD916900AA8C
      68002E251A000301000073655000E2CEAD00D9C2A300D9C2A300D9C2A300D9C0
      A200DCC9AB00D9C4AD00E0C7AD000000000000000000F4EEE800D0B09200DFD3
      BD00D8BE9E00D8C0A200D8C0A200D8C0A200D8C0A200E0CCAD00AD987C00473E
      3100F9F0DD00FAF1E000FBF4EA00FCF9F10000000000F9F0E000FBF5EA00FFF9
      E8008E806E0065553D00E7D5B500D8C0A200D8C0A200D8C0A200D8C0A200D8BE
      A000DBC7AA00D8C2AB00E0C7AD000000000000000000F5EFEA00D0A98300C39C
      6800A6793D00A6783B00A3784000B4885000D5B17E00D8C3A800DBC6AC00DCCA
      B100DDCDB500DFD0BA00E0D2BD00E0D3BE00E0D3C000E0D3BE00DFD2BB00DFD0
      B800DDCBB400DCC8AE00D9C5A800D8C2A500D8C2A500D8C2A500D8C2A500D8C0
      A300DBC8AC00D8C3AE00E0C8AF000000000000000000E0C8B000D7C2AD00DFCA
      AD00B09B82000C0B0A00000000000000000024201A002D271E00D0B89500D9C5
      A800DAC6AA00DCCAAE00DDCBB200DDCDB300DDCDB500DDCBB300DCCAB000DDCB
      B000C8B69A001413110000000000000000001A140B002C231700C0A88800DAC5
      A600D7C0A000DDCEBB00D1B39700F9F4F00000000000E1C9B000D9C2AD00DBC5
      A800D9C2A300D9C2A300D9C2A300D9C2A500E0C7A30019171200140F0700AE92
      6D00EDDFC500DDC29400946A3300AE732B00D3862C00CC985500E9DCC500EDDF
      C40079684A000705010038302400E3D0AE00D9C2A300D9C2A300D9C2A300D9C2
      A300D9C0A000DFD0BB00D3B39700F9F4F00000000000E0C7AE00D8C0AB00D9C4
      A600D8C0A200D8C0A200D8C0A200D8C0A200D9C2A300CCB394004C3C2600AE9E
      8300FFFFFB00F5E8CB00F6EDD800FDFBF600FEFCF900FAF4E900F5E8CB00FBF5
      EA00FCF2E10050402900957C5F00DCC5A600D8C0A200D8C0A200D8C0A200D8C0
      A200D8BE9E00DDCEBA00D2B29500F9F4F00000000000E5D2BE009A744500744E
      1B00795F37005F5343004C4846004F3C2400B87C2E00D9BE9A00D9C6AC00D9C3
      A600DBC6AB00DCCAAF00DDCBB200DDCDB400DDCDB500DDCBB400DCCAB100DBC8
      AE00D9C5A900D8C3A600D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2
      A500D8C0A200DDCEBB00D2B49900F9F4F000FEFCFB00D3B59800DCCBB600DCC6
      A600B09B82000C0B0A000000000000000000413A3200342D2200A38C6F00DCC8
      AA00D7C2A300D9C3A500D9C5A800D9C6A800D9C6AA00D9C5A800D9C5A600DAC6
      A600C6B295001413110000000000000000002C251B003B30220097806800DDC8
      AA00D7C2A300DCCAB000D3BAA200E9D7C600FEFCFB00D5B59800DDCCB600D9C0
      A200D9C2A300D9C2A300D9C2A300DDC7A800B8A080000A08060030251600C9AE
      8B00E5D3B60080736000000000000807070019150F00B29D7B00DFCBAB00DFCB
      AB00AB957800100C070016141000DBC2A000D9C2A500D9C2A300D9C2A300D9C2
      A300D9C2A300DDCBB000D5BAA200E9D9C700FEFCFB00D3B39700DCCBB500D8BE
      A000D8C0A200D8C0A200D8C0A200D8C0A200DDC7AA00988064005F4D3300F5DD
      A300EFD29800F2E0B800F7EEDB00F9F1E300F9F1E100F9F1E300F5EAD000F0D8
      A300F4DCA300B39160004E3C2400DDC5A600D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200DCC9AE00D3B8A000E9D8C500FEFCFB00D6BAA300C0A27900875F
      21004C4A480040403F004E4A430038322A009A744000DBB58000D0A87100D8C3
      A800D8C2A500D9C3A600D9C5A900D9C6A900D9C6AB00D9C5A900D9C5A800D8C3
      A600D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2
      A500D8C2A500DCCAB100D3BAA300E9D8C600F0E5D900D1B39A00DCCBB200DCC6
      A600AE9A82000B0B0A000000000000000000403B34004C40300072634D00E0CB
      AD00D7C2A300D7C2A300D7C2A300D7C2A300D7C2A300D7C2A300D7C2A300DAC5
      A600C6B095001412100000000000000000002C261E005545320066574300E1CB
      AD00D7C2A300D7C3A300D9C5B000DDC5AD00F0E6DB00D3B39A00DDCCB200D9C2
      A200D9C2A300D9C2A300D9C2A300E1CCAB0091806E000000000058422500EDCE
      9500E5CBA0005A4A3600060503000000000008070700C2AE9400DCC5AA00D9C4
      A600E9C99100251D110007080800B2A08800DDC7A800D9C2A300D9C2A300D9C2
      A300D9C2A300D9C4A300DBC5B000DFC5AD00F0E7DB00D3B39B00DCCBB000D8C0
      A000D8C0A200D8C0A200D8C0A200D8C0A200DDC7AA009B83650073664F00F4DC
      A500EED29700FAF4EA000000000000000000000000000000000000000000F2DF
      B300F1D69E00CCAA740058442A00DCC4A500D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C2A200D9C4AE00DDC4AB00F1E6DC00D5B79F008C6F4600412C
      1A00332E28003A383600483C2A003D32250074582600CD995400BB986800D9C6
      AF00D8C2A500D8C2A300D8C5AB00D8C5AE00D8C2A500D8C2A500D8C2A500D8C2
      A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2
      A500D8C2A500D8C3A500D9C5B100DFC6AF00DDC0A600D7BEAA00DAC6AA00DDC6
      A800B39E8200090807000000000000000000403B34007C6A5100443A2D00E2CD
      AE00D7C2A300D7C2A300D7C2A300D7C2A300D7C2A300D7C2A300D7C2A300DAC5
      A600CBB3950012100E0000000000000000002B251C00866F51003F362A00E1CB
      AB00D7C2A300D6C0A000DCCAB500D7BAA200DFC0A600D9BEAA00DCC7AA00D9C2
      A300D9C2A300D9C2A300D9C2A300E0CBAB009B8973000101010030241600E0B3
      6F00E5AA54008F662E00372B1D002B241900322A2100D6B38200DDC29B00E0CB
      AD00B6956900120F09000D0C0B00C7B29200DCC5A600D9C2A300D9C2A300D9C2
      A300D9C2A300D8C0A000DDCBB500D9BAA200DDC0A500D8BDA800DBC5A800D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200DDC7AA009B83650070634C00F4DD
      A800EFD59D00FAF3E8000000000000000000000000000000000000000000F2E0
      B600F2D9A300C7A6730058442A00DCC4A500D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D6BE9E00DCC9B300D8B8A000DFC3AC00DBBEA20075501C004F41
      2C00705830006047250060492D006E5B3D00CD8F4900D5A36100BE9C6900D2B1
      8300DBC6AB00D9C6AF00D5B89000D3B18300D8C5AB00D8C3A900D8C3A900D8C2
      A800D8C3A900D8C2A600D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2
      A500D8C2A500D6C0A200DCCAB500D8BBA500CAA07D00DCCAB500D7C3A500D7C2
      A500D9C09E00373129000F0B070019130B00423C3400AB947600332C2000D9C2
      A200D7C2A500D7C2A300D7C2A300D7C2A300D7C2A300D7C2A300D7C2A300D7C2
      A300DCC6A6004C423600100C070019150F00312B2100B398730030291E00D6BE
      9B00D9C3A500D7C0A200DCCAB200D4BAA200CBA07E00DDCBB500D9C4A500D9C2
      A300D9C2A300D9C2A300D9C2A300DBC4A600D2BA970015130E0000000000332D
      2500EAD2A000A876390021180A006D5939004F412C005B472C00D3AD7500D6BE
      9E0018151100000000002C261E00E5CEAD00D9C2A300D9C2A300D9C2A300D9C2
      A300D9C2A300D9C0A200DDCBB200D6BAA200C99E7C00DCC7B300D8C2A300D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200DDC7AA009B83650070634C00F4DD
      A800EFD59D00FAF3E8000000000000000000000000000000000000000000F2E0
      B600F2D9A300C7A6730058442A00DCC4A500D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8BEA000DCC9B000D5B8A000CAA28400DBC8B700A87C4100A871
      27006C4E2100010100000404030017130C008E632700CA8E3F00D6872100D087
      2700C29D6B00D5B48700DC9D4A00D68F2F00D2A97300D5BB9A00D5BA9600D29D
      5900D2A36800D8C3A800D8C5A900D8C3A600D8C2A500D8C2A500D8C2A500D8C2
      A500D8C2A500D8C0A300DCCAB200D5B8A200BD8E6B00DFCEBB00D7C2A300D7C2
      A300DAC5A600D7C0A000C2A68200866C4B003F393200D9C29E002E281E00C6AD
      8900E9D4B600E5D1B200E5D1B200E5D1B200E6D1B200E5D1B200E5D1B200E5D1
      B200E6D3B300EDD7B300D4B88F00A58F7200362E2500D6BB95002C272000AB95
      7800DCC6A800D7C0A200DCCAB000D3B6A000BD8E6C00E0D0BB00D9C2A300D9C2
      A300D9C2A300D9C2A300D9C2A300D9C2A300E5D0B00063543D00000000000303
      020091827100E7CC9E00BA925D007C613600BB9D7100C0AE9500DCC7A8006359
      49000000000004030100947C6300E0CBAB00D9C2A300D9C2A300D9C2A300D9C2
      A300D9C2A300D9C0A200DDCBB000D5B6A000BB8C6A00DFCEBA00D8C0A200D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200DDC7AA009B83650070634C00F4DD
      A800EFD59D00FAF3E8000000000000000000000000000000000000000000F2E0
      B600F2D9A300C7A6730058442A00DCC4A500D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8BEA000DCC9AE00D3B59E00BD906F00DFCEBE00DCC6AB00DBB2
      7800AB7E3F000A0600000000000000000000010100005A3A1800C3813000C283
      2F00D59D5100D9A255007F612C00A9742600E4AE5F00ECBB6F00DB9D4D00E6BA
      7100E0AF6600D0A56A00D3B89300D6BE9F00D8C2A600D8C2A500D8C2A500D8C2
      A500D8C2A500D8C0A300DCCAB100D3B7A000B6886400E0D1C200D7C0A200D7C2
      A300D7C2A300DAC5A600E9D6B8008B735800221E1700594B3B001D1911005E51
      42008878680082746400827363008C7C6B0092826F0086786800827363008274
      6400827363008E7D6D009A89780086796A00221D1600594937001D1811008573
      5D00E0CBAD00D7C2A200DAC8AD00D3B69D00B6886500E1D3C200D9C0A200D9C2
      A300D9C2A300D9C2A300D9C2A300D9C2A300DCC5A600D0B6910013100B000000
      000063503400E6D5B800E3D6C500E3A64D00E1B06900DDCEB600EAD5AE003226
      190000000000241F1800E1CBA600D9C2A500D9C2A300D9C2A300D9C2A300D9C2
      A300D9C2A300D9C2A200DCC9AD00D5B69D00B5866300E0D2C000D8BEA000D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200DDC7AA009B83650070644D00F4DF
      AB00EFD6A000FBF4EB000000000000000000000000000000000000000000F2E1
      BA00F2DBA600C7A8760058442A00DCC4A500D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A000DBC7AB00D3B59B00B78B6900E0D2C200D8C0A500D9C8
      B100E0C8A80099754500271C0F00100E0A00000000007A5A290016130E000E0B
      050050331700956019006C4A1A0041321F00362619006A4C2100BD8E4D00F7DF
      A800FBECCD00E0AF6900D0923D00D0A56900D9C3AB00D8C2A500D8C2A500D8C2
      A500D8C2A500D8C2A300DBC8AE00D3B79F00B8886500DFD0BE00D7C0A200D7C2
      A300D7C2A300D7C2A300E0CBAB00856E520036302800CDAE86004A4032001D17
      0E003B322600393024003B3226001E1A1200050301002D271C003A3125003930
      24003B3226001F1A100017120A002E2B2600342D2200C6A67900514537004C42
      3600E1CDAE00D7C2A200DAC8AD00D3B59D00B8886600E0D2BE00D9C0A200D9C2
      A300D9C2A300D9C2A300D9C2A300D9C2A300D9C2A300E5D2B000504538000000
      000030221000E7BB7600E6C99800E6A03600E8A64000E7C99700B6895000140E
      050000000000796B5800E2CEAE00D9C2A300D9C2A300D9C2A300D9C2A300D9C2
      A300D9C2A300D9C2A200DCC9AD00D5B59D00B6866400DFD0BD00D8BEA000D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200DDC7AA00987F630072624600FCE1
      A000F4D69200FFF4DF00FFFDF700FEFBF600FEFBF500FEFCF700FFFDF600F7E1
      AB00F7DB9A00D2AB6F00523F2600DCC4A500D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A000DBC7AB00D3B39B00B88B6A00DFD0BE00D8C0A300D8C2
      A500D8C3A800E2CEB100E2BA7C00C08A3F00735422009C6A25000F0B04000000
      000000000000050301002A1D0F007C684100816129003A2718001E191100221E
      170081715900E2B77400EFCD8A00E2AB5E00DBC8AE00D8C2A600D8C2A500D8C2
      A500D8C2A500D8C2A300DBC8AE00D3B59F00C2977400DCC8B600D7C2A300D7C2
      A300D7C2A300D7C2A300E0CBAB00836D51003F393100ECDABE0088745F004035
      2700EAD1AE00E1CAA800E9D1AD003E342800261F130073614700EAD4B200E1CB
      A600E6CEAA003930250058483500231D130039312600E7D1AD0098836A00342C
      2100E0CAAA00D7C2A300DCC8B000D4B59E00C2977500DDC9B600D9C2A300D9C2
      A300D9C2A300D9C2A300D9C2A300D9C2A300D9C2A300DDC7A600C7B08C00100E
      0A00000000006B421400A86C2400AB763300A5713000B26F23003A240B000000
      00001C1A1500DBC2A200DBC4A500D9C2A300D9C2A300D9C2A300D9C2A300D9C2
      A300D9C2A300D9C2A200DDC9B000D6B59E00C0957300DCC7B500D8C0A200D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200DCC5A600AB9274004A3C2600C7B5
      9700D6C4AA00D8CCB800F5E5C000FEEDC400FEEECC00FEEBC000F4E4BE00D3C5
      AD00D8C9AB00766347005F4A3100DDC7A800D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A000DCC7AE00D5B39D00C2997900DCC8B700D8C2A500D8C2
      A500D8C2A500D8C2A600D9C3A800DDC5A300E5CBA500D6B17B00B8956500664A
      21001A14090002010000000000001C170E00F0B56B00F0B87300C89A60005F4D
      2C00856E4800FFEDBB00E2C695009C764300D0A26200E9D3AF00DFCBB200D8C3
      A900D8C2A500D8C2A300DCC8B100D5B5A000D1AD8F00D7C0AD00D9C3A600D7C2
      A300D7C2A300D7C2A300E0CBAB00836D5100413A3100EFDCBD00C0A888002D28
      1F00CEB59700DCC8AA00CBB28F00332C20006B5A44003A332A00E0CBAD00DCC6
      AA00C3AA88002D281F00AA92730014120D002E271D00ECD6AE00CDB594002C27
      1F00C3AB8B00DDC6A800DAC6B000D4B69E00D3AD8F00D9C0AD00DBC4A600D9C2
      A300D9C2A300D9C2A300D9C2A300D9C2A300D9C2A300D9C2A300E6D2B0006B5B
      4400000000000000000007060300070705000605030009070300020100000303
      0100927E6400E1CCAE00D9C2A300D9C2A300D9C2A300D9C2A300D9C2A300D9C2
      A300D9C2A300D9C0A200DCC7B000D6B69E00D2AB8E00D8BEAB00D9C2A500D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200E0CBAA0078654A000C0B
      0A000D0E0F000C0C0D0017130D001B170E001B1710001B160D0016130D000C0D
      0E000C0D0E0028241F00D9C09D00D9C2A300D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8BEA000DBC5AE00D5B59D00D2AE9200D8C0AE00D9C3A800D8C2
      A500D8C2A500D8C2A500D8C2A500D8C3A600D8C3A800D9C6AF00E0CDB200E7D0
      AE00E0BB8700A27C49003F26140074491700EFBD8400E1A56200FFF2DC004238
      290014110C00635641007E66400017140E001710060061421C00BB966400E6CB
      A200E1CDB100D8C3A900DBC6B100D5B7A000E6D1BD00D0B29A00DAC8AD00D7C2
      A300D7C2A300D7C2A300E0CBAB008670540027221A006D5B420064513B001B17
      1100AB947600E2CEB30097836A00382F2300B59D7F002C261E00D3BA9800DFCB
      AE00947D6300362F2400E7D1AE00231F1A0016110A006D593E006D5A40001E19
      10009D886D00E4D1B200D9C3AE00D7B8A000E7D3BD00D2B29A00DCC9AD00D9C2
      A300D9C2A300D9C2A300D9C2A300D9C2A300D9C2A300D9C2A200DBC2A500E0C7
      A300564835000B0A0800070808000C0B09000B0A09000506070016120C00665A
      4600E5D0AD00D9C2A300D9C2A200D9C2A300D9C2A300D9C2A300D9C2A300D9C2
      A300D9C2A300D9C2A200DBC4AE00D9B8A000E7D2BB00D0B09800DBC7AB00D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D8C0A200DFC9AA00A38869000301
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000322E2800E4D0AE00D8C0A000D8C0A200D8C0A200D8C0A200D8C0
      A200D8C0A200D8C0A000D9C2AE00D8B8A000E6D2BD00D0B29C00DBC8AE00D8C2
      A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A500D8C2A300D8C2A300D8C2
      A600DBC6AF00E4D0B700E5C89C00D28E3700D5904300E5A65A00B19C7E000000
      0000000000000B070100A6560700C07C22007B6B4F00211B14001F180C00462A
      1500A07E4E00D8BA8E00DBC6B500D8B8A200F7F1EB00CEAB9100E9D7C200E7D3
      B300E7D3B300E7D3B300EFDDBD0094795A00302C26009E8F7900A09280003630
      2900796B5A00F7EBD600665B4A00574A3C00F2E2CB00362E2400B39D8200F4E7
      D4006255420063554100FAEAD000574838001C1811009E896E00A08F78003B34
      2C006A5D4800F9E7CB00DCC2AA00E1CBB600F7F1EB00CEAA8F00DDC9B200D9C2
      A200D9C2A300D9C2A300D9C2A300D9C2A300D9C0A200D9C4A600D9C5AB00DCC9
      B200F0E3CC00A37E48001F1D1A001F1E1B003F332100473218006C645700EBDD
      C400DBC9B000D9C5AD00D9C5A800D9C2A300D9C2A200D9C2A300D9C2A300D9C2
      A300D9C2A300DBC5A800D5B8A200E3CEB600F7F1EB00CCA88E00DCC7B000D8C0
      A000D8C0A200D8C0A200D8C0A200D8C0A200D8BEA000DFCBAD00988266000503
      0100010000000100000000000000010000000000000000000000000000000100
      0000000000002F2B2700E1CEB000D8C0A200D8C0A000D8C0A200D8C0A200D8C0
      A200D8C0A200D9C4A600D3B6A000E3CCB500F7F1EB00CDAB9200DCC8B200D8C2
      A300D8C2A500D8C2A500D8C2A500D8C2A500D8C0A300D8C3A800D8C5AC00D8C6
      AF00D8C6B100D8C6B200D9CAB800D6C3A800D2B28400D69F5B008F754F000F0D
      0A000000000017100400B1580400D6882200FDE1A300E7D6B10079694D00493A
      2200241B1000AB7B3700D9B48E00E2CEBD0000000000CAA580007B634800705F
      4400726045007260450077634700483A2A002B261F008672590088745B00352E
      26002C261C00806E5500241F170040362A00806F5700271F140041382D007F6D
      5500231E1600473D2D007F6D56003F362B001A150D00856C4B00887052004339
      2A002620160079664D009A785B00F3EBE20000000000D5B29400D9C0AA00D9C2
      A300D9C2A300D9C2A300D9C2A300D9C2A300DBC9B200DBCEB800DBCEBA00DBCE
      BA00E2D9C900CB913E000A0703000001020030210B00331B000041414300E5D9
      C500DBCEBA00DBCEBA00DBCEBA00DBCBB500D9C5A800D9C0A200D9C2A300D9C2
      A300D9C2A200DCCBB000CEAB8F00F1E7DD0000000000D3B09200D8BEA800D8C0
      A200D8C0A200D8C0A200D8C0A200D8C0A200D9C7B000E0D3BE00A6957D001612
      0B0018140D0018140D00110E090019160F0014120F0013100B0014110B001914
      0D001410090049413500E3D6C200D9C9B300D8C4A600D8BEA000D8C0A200D8C0
      A200D8C0A000DBC9AE00CCAA8E00F1E7DC0000000000D3B29600D8C0AB00D8C2
      A500D8C2A500D8C2A500D8C2A500D8C2A500D9C8B200D9CDB800D9CDBA00D9CD
      BA00D9CDBA00D9CDBA00D9CDBA00DBCEBE00DBD0C200D9CEC000DFD3C000CDBB
      A200746855003D2E2100B2956C00D9AE6E00DBB47B009273430018140D00100F
      0C00684D2100ECC68100D5A26600F0E5DB0000000000E2D0B60045382C003E39
      33003F3930003F393000423B33002D2923001B1A1800423F3A00403D3800423F
      3B00403E3900403D3800423F3B0042403B00403D380043413C00403E3900403D
      3800413E3A00423F3A00423E390033322F0018161200413A32003F393000413B
      3400413B330038322D00856C57000000000000000000E9DBC700CEAA8F00DCC7
      AD00D9C2A200D9C2A300D9C2A500DCD0BA00DDD5C500DDD5C400DDD5C400DDD5
      C500E3D9C500785F3300050301002B231600442E1200492400008F6F4400E2DB
      CC00DDD5C400DDD5C400DDD5C400DDD5C400DDD3C200DBC7AD00D9C2A200D9C2
      A300D9C2A300D9BDA800D5B09400FEFDFC0000000000E9D9C500CCA88E00DBC5
      AB00D8C0A000D8C0A200D8C0A300DBCEB800DCD3C400DDD3C400E1D5BE002823
      1B00000000000000000000000000000000000000000000000000000000000000
      0000040302009A8C7600E3DBCB00DCD3C200DCD2C000D9C5AB00D8C0A000D8C0
      A200D8C0A200D8BBA600D3AE9200FEFDFC0000000000E9D9C600CBAB9200DBC6
      AE00D8C2A300D8C2A500D8C2A600DBCEBA00DCD3C500DCD3C300DCD3C300DCD3
      C300DCD3C300DCD3C300DCD3C300DCD3C300DCD3C300DCD3C300DCD3C300E2DB
      CB00EBE2D500E9DFCE00DFD9CE00DCD5CD00DCD5CA00DBBD9200B1814100331B
      06006D340600E7AF5A00E4B56C00FDFAF50000000000FEFDFB00DDBB9D00E7D3
      BE00E6D4B600E6D3B300F1E5D30095856D0043413B00F3F0E600ECE7DF00EDE9
      DF00EDE9DF00ECE7DF00EDE9E000ECE9DF00ECE7DF00EDE9E000ECE9DF00ECE7
      DF00EDE9E000ECE9DF00F1ECE400B2AEA50038322A00EFE4D000E7D4BB00E7D4
      B500EAD9C300DCB69B00F2E5D7000000000000000000FDFCFA00D2AB8F00DBC4
      AE00D9C2A300D9C2A200DCCEB600DFDBCE00DFD9CC00DFD9CC00DFD9CC00DFDB
      CC00E5DFD0006F6B6400000103000D0A04000D0A04001E170D00D0B58600E1DD
      D300DFD9CC00DFD9CC00DFD9CC00DFD9CC00DFDBCE00DFD6C500D9C4A600D9C2
      A200DDC9B200CCA88E00EDE0D2000000000000000000FDFCFA00D0AA8E00D9C2
      AD00D8C0A200D8C0A000DBCCB500DDD9CC00DDD8CB00DDD8CB00E7E3D6006A63
      56000A0803000706050059411F000C0A0600000000003C2612002B1F11000101
      00002F261A00E0D6C000DFD9CC00DDD8CB00DDD9CC00DDD5C400D8C2A500D8C0
      A000DCC7B000CBA68C00EDDFD0000000000000000000FDFCFA00D0AC9200D9C3
      AF00D8C2A500D8C2A300DBCDB700DDD9CD00DDD8CB00DDD8CB00DDD8CB00DDD8
      CB00DDD8CB00DDD8CB00DDD8CB00DDD8CB00DDD8CB00DDD8CB00DDD8CB00DDD8
      CB00DDD9CB00DFD9CD00DDD9CB00DDD8CB00DDD9CD00DFD8CB00E0C8A600D2A2
      6100A3712900A6733600EFD8AC00000000000000000000000000EFE4D700CAA5
      8800DDC8AB00DFC39B00EAE0CA008B7C63003E3B3500ECE6D600E4DDCD00E4DD
      CD00E4DDCD00E4DDCD00E4DDCD00E4DDCD00E4DDCD00E4DDCD00E4DDCD00E4DD
      CD00E4DDCD00E4DDCD00EAE4D300A8A29400332E2600E7DDC300DFCAA600DFC6
      A000D4B89E00D7B89B00FFFEFE00000000000000000000000000EEE2D600CBA3
      8800DDCBB300D9C0A000DDD6C500E0DFD600E0DDD500E0DDD500E0DDD500E0DD
      D500E1E0D900D0C5B3006A512D003D2F1E00282218004A3E2A00D9DBD800E1DF
      D600E0DDD500E0DDD500E0DDD500E0DDD500E0DDD500E0DDD300DBC7AB00DCC5
      A800D8BBA600D8B69B00FFFEFE00000000000000000000000000EEE1D500C9A2
      8600DCC9B200D8BE9E00DCD5C400DFDDD500DFDCD300DFDCD300E5E3DB007B77
      6D00382813002F251600E49728003127170017161200B5561600A64E1600281F
      0E0082633300E0DDD200DFDCD500DFDCD300DFDCD300DFDCD200D9C5AA00DBC4
      A600D6BAA500D6B59A00FFFEFE00000000000000000000000000EDE1D500CAA5
      8B00DCCAB400D8C0A200DCD5C500DFDDD500DFDCD300DFDCD300DFDCD300DFDC
      D300DFDCD300DFDCD300DFDCD300DFDCD300DFDCD300DFDCD300DFDCD300DFDC
      D300DFDCD300DFDCD300DFDCD300DFDCD300DFDCD300DFDBD200D9C8AF00DBCA
      B200D5B8A200D6B7A0000000000000000000000000000000000000000000DCC0
      A3004C3A2900332D2300363027002A261F001D1B170036322A00353129003531
      2900353129003531290035312900353129003531290035312900353129003531
      2900353129003531290036322A002D2A23001A18130036302800342D2400342C
      2200916F5200FBF7F3000000000000000000000000000000000000000000DFC4
      AA00D0AE9700DDC9B000DDD3BE00E1E2DF00E1E1DC00E1E1DC00E1E1DC00E1E1
      DC00E0E2E000DFD2B000ED9425008B602500442F1600B66F2000E5E5DF00E1E1
      DC00E1E1DC00E1E1DC00E1E1DC00E1E1DC00E1E1DD00E0DDD500DBC7AB00DBC4
      B000CCA58600F6F2ED000000000000000000000000000000000000000000DDC2
      A800CEAD9500DCC7AE00DCD2BD00E0E1DD00E0E0DB00E0E0DB00E7E7E3007976
      6E002A1F0D001B150900E9952200171309000000000098420E00AA430C001E16
      0500946C3400DDDDD800E0E0DC00E0E0DB00E0E0DC00DFDCD300D9C5AA00D9C2
      AE00CBA38500F6F2ED000000000000000000000000000000000000000000DDC3
      AB00CEAF9900DCC8B100DCD2BE00E0E1DD00E0E0DB00E0E0DB00E0E0DB00E0E0
      DB00E0E0DB00E0E0DB00E0E0DB00E0E0DB00E0E0DB00E0E0DB00E0E0DB00E0E0
      DB00E0E0DB00E0E0DB00E0E0DB00E0E0DB00E0E0DC00DFDCD300D9C6AC00D9C3
      B100CDA98E00F7F3ED000000000000000000000000000000000000000000FFFE
      FC00AD8E7000866F620097897B009E9D9500A6ABAB009B9E9D009B9E9D009B9E
      9D009B9E9D009B9E9D009B9E9D009B9E9D009B9E9D009B9E9D009B9E9D009B9E
      9D009B9E9D009B9E9D009B9E9B009EA3A200A6AAA800978E800094837800896D
      5A00EAE0D400000000000000000000000000000000000000000000000000FEFD
      FC00D5B39500D0AE9500DFCEB800E0DFD600E2E6E500E2E5E200E2E5E100E2E5
      E100E2E6E300E2DDC90097692D00563E1F006A481F00BA854000E5E7E500E2E5
      E100E2E5E100E2E5E100E2E5E100E2E6E300E2E5E100DFD5C200DCC4B000CBA3
      8800F1E7DD00000000000000000000000000000000000000000000000000FEFD
      FC00D3B29400CEAD9400DDCCB600DFDDD500E1E5E400E1E4E100E8EAE8007C79
      6E00221A0C0016110900BA7924001410080000000000723A12006F3712001812
      0500795E3100E1E3DD00E1E4E100E1E5E300E1E4E000DDD3C000DBC2AE00C9A2
      8600F1E7DC00000000000000000000000000000000000000000000000000FEFD
      FC00D3B49800CEAF9800DDCDB800DFDDD500E1E5E400E1E4E100E1E4E000E1E4
      E000E1E4E000E1E4E000E1E4E000E1E4E000E1E4E000E1E4E000E1E4E000E1E4
      E000E1E4E000E1E4E000E1E4E000E1E5E200E1E4E000DDD3C200DBC3B100CAA5
      8B00F1E6DC000000000000000000000000000000000000000000000000000000
      0000FFFFFE00E1C0A000DCBAA000E9DAC800EBE9E000EDF2F000EFF3F300EDF3
      F200EDF2F100EDF2F100EDF2F100EDF2F100EDF2F100EDF2F100EDF2F100EDF2
      F100EDF2F200EFF3F300EDF3F300ECEDE900EAE2D300E2CBB600D7B08F00F9ED
      E400000000000000000000000000000000000000000000000000000000000000
      0000FCFAF700D6B39400D0AD9400DFCEBB00E1DFD500E3E8E700E5E9EA00E5E9
      E900E3E9E900E8E6DC001513110000000000050100004D3E2600E9EDED00E3E8
      E700E5E8E800E5E9E900E3E9E900E2E3DF00E0D8C700D9BDA800CBA28300F0E6
      DB00000000000000000000000000000000000000000000000000000000000000
      0000FCFAF700D5B29200CEAB9200DDCCBA00E0DDD300E3E8E700E8EEEE00BEBE
      B5000D0B09000000000007060300000000000000000003030200000101000000
      00005D574900EBF0F000E3E9E900E1E3DD00DFD6C500D8BBA600C9A08200F0E5
      D900000000000000000000000000000000000000000000000000000000000000
      0000FCFAF700D5B49600CEAE9600DDCDBB00E0DDD300E2E7E600E4E9EA00E4E9
      E900E2E7E600E2E7E600E2E7E600E2E7E600E2E7E600E2E7E600E2E7E600E2E7
      E600E4E7E700E4E9E900E2E9E900E1E2DD00DFD6C600D8BDA900CAA38700F0E5
      D900000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00DFC3AA00CBA58800D7BEAA00DFD4C300E0DFD400E2E5
      E100E4EAEA00E4ECED00E4ECED00E4ECED00E4ECED00E4ECED00E4ECED00E4EB
      EB00E2E7E600E0E1D900DFD9CB00DCCBB800CEAD9400D0AB8C00F2EAE0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00E0C4AA00CCA58800D9BEAA00E0D6C400E1E0D600E3E6
      E200E5EBED00E8E9E1001A171200000000000A05000054432700E9F1F300E5EB
      ED00E3E8E700E1E2DB00E0DBCC00DDCCB800D0AD9400D2AB8C00F2EAE1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00DFC2A800C9A28500D8BDAA00DFD5C200E0DFD500E7E9
      E3003F3D3500111213000E10110011121300121313000F1112000F1112001A1A
      1800B6B5A600E5E7E000DFD9CB00DCCBB600CEAB9200D0AA8B00F2EAE0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC00DFC3AB00CAA58A00D8BEAC00DFD5C300E0DFD500E2E5
      E100E4EAEA00E4ECED00E4ECED00E4ECED00E4ECED00E4ECED00E4ECED00E4EB
      EB00E2E7E600E0E1D900DFD9CB00DCCBB800CEAE9600D0AC8F00F2EAE0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDE1D400D0AD9100CBA88E00D6BDA600DCCB
      B600DDD3C000DDD6C300DDD9CA00DDD9CA00DDD9C800DDD9CA00DDD7C600DDD4
      C000DDD0BB00D9C3AE00D1B29A00CBA58800DFC6AE00FBF9F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEE2D600D2AD9100CCA88E00D8BDA600DDCC
      B600DFD5C000DFD6BE00A5927500918068009A856600BBA68300E0DBCB00DFD6
      C200DFD2BB00DBC4AE00D3B29A00CCA58800E0C7AE00FBF9F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDE1D300D0AB8F00CBA68C00D6BBA500DDCE
      B800E4D6BE00CCC4B000CEC7B600CCC7B600CCC7B500CCC7B600CCC4B300D8CC
      B600E3D6C000D8C2AD00D2B09800CBA38600DFC5AD00FBF9F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECDFD000D0AE9300CBA99000D6BDA800DCCB
      B700DDD3C000DDD6C300DDD9CA00DDD9CA00DDD9C800DDD9CA00DDD8C600DDD5
      C200DDD0BB00D9C3AF00D2B29C00CBA68B00DFC6AF00FBF9F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFBFA00E9D9C600D4B29500CDA8
      8E00CEAE9500D7BDA600DAC5B000DFCAB800DFCBBB00DCC6B300D9C0AB00D3B5
      9D00CEAB9200D0AD9100E0C6AE00F4EDE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFBFA00E9DBC700D6B29500CEA8
      8E00D0AE9500D9BDA800E7D6C000EDDFCE00EBDFD200E3D3C000DBC0AA00D5B5
      9D00D0AB9100D2AD9100E1C7AE00F4EEE8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFBFA00E9D9C500D5B09400CCA6
      8C00D2B09700DFC4AE00E1CCB600E5D3C000E5D5C200E3CEBA00E0C9B200D9BA
      A300CCAA8F00D0AB9100E0C5AD00F4EEE8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFBFA00E9D9C600D5B29800CDA9
      9000CEAF9800D8BDA800DBC5B100DFCAB800DFCBBB00DCC6B400D9C0AC00D3B5
      9F00CEAC9300D0AE9300E0C6AF00F4EDE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F0
      EA00E5D1BB00D1AD9100C3977400B8886500B6866400BD8C6A00C89E7C00DDC0
      A600F0E6DA00FEFEFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F0
      EA00E6D3BB00D3AD9100C4977500B8886600B6866500BD8C6B00C99E7C00DFC0
      A600F0E7DC00FEFEFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F0
      EA00E5D2BA00D2AB8F00C2957300B6866400B5856300BB8B6900C79D7B00DDBE
      A500EFE4D900FEFEFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F0
      EA00E5D2BB00D2AE9300C3997900B88B6A00B78A6900BD8F6E00C8A08000DDC0
      A800F0E6DB00FEFEFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7FFFF00A5A5A500A5A5A500C6DEC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6008484
      840042636300A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840029292900211821003129
      3100ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F7007B7B7B00211821002118210039394200B5B5B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084A5A5004242420042424200848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300424242008484
      84000021420000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6DEC600C6C6C600C6C6C600F7FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0021182100211821002118
      210073737300F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60042424A002118210021182100211821006B6B6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084C6C60084A5C60084A5C6008484A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A5008484
      8400424242004242420084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60084636300848484008484630084846300C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0021182100211821002118
      210073737300F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60042424A002118210021182100211821006B6B6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084C6C60084A5C60084C6E7008484A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042424200A5A5A5004263
      63004242420042424200F7FFFF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004263420042424200848484008463630042212100A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0021182100211821002118
      210073737300F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60042424A002118210021182100211821006B6B6B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084A5C60084A5C60084A5C6008484A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00C6C6C600C6C6
      C6004263630042212100FFFFFF00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042424200A5A5A5008463630000000000A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0021182100211821002118
      2100313139005252520063636300ADADB500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60042424A00211821002118210021182100313131005A5A
      5A006B636B00C6C6C600FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084C6C60084C6E70084C6E70084A5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FFFF00C6C6C600C6DEC600A5A5
      A5004242420042212100A5A5A500A5A5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004221210042424200848484008463630042212100A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0021182100211821002118
      210021182100211821002929290094949400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60042424A00211821002118210021182100211821002118
      210031313900ADADAD00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084A5C60084A5C60084A5C6008484A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FFFF00A5A5A500A5A5A5008484
      8400426363000000000084848400C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004221210042424200848484008463630042212100A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0021182100211821002118
      210021182100211821002929290094949400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60042424A00211821002118210021182100211821002118
      210031313900ADADAD00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6A58400C6A58400C6A58400C68463000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6DEC60084636300426363008463
      6300422121000000000042424200A5A5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004221210042424200A5A5A5004263630000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0021182100211821002118
      210021182100211821002929290094949400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60042424A00211821002118210021182100211821002118
      210031313900ADADAD00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6A58400C6A58400C6A58400C6A563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6DEC60042212100848484008463
      6300000000000000000042424200C6DEC6004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004263420042212100C6A5A5004263420000000000F7FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0021182100211821002118
      2100211821008C8C8C00A5A5A5005A5A6300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60042424A00211821002118210021182100292931007373
      7B009C9CA5007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000846363004263420084634200846363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FFFF00424242008463630084A5
      A500424242000021420084A5A500A5A5A5004221210084A5A500C6DEC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000848484004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0021182100211821002118
      2100211821009C9C9C00B5B5B50042424A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60042424A00211821002118210021182100292929008484
      8400ADADAD004A4A5200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424221004242420042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60084848400A5A5
      A5004263630042636300A5A5A5004221210084848400C6C6C60084A5A50084A5
      A500F7FFFF00000000000000000000000000C6C6C600C6DEC600000000000000
      000000000000F7FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000422100848463004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0021182100211821002118
      21002118210094949400CECECE0063636B00E7E7E700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60042424A00211821002118210021182100292929009494
      9400D6D6D60031293100FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60042422100426363004242420042212100C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6DEC6008484
      8400426363008484840084A5A50042212100A5A5A500FFFFFF00C6C6C600A5A5
      A5008484A500C6C6C6000000000000000000C6C6C600A5A5A500000000000000
      0000A5A5A5008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5A50000000000A5A5A5004263420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B6B6B0021182100211821003131
      310021182100948C9400E7E7E70073737300B5B5B500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFEFEF006B6B6B002118210021182100312931004A4A4A008C8C
      8C00E7E7E7004A4A4A00D6D6D600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6DEC6004242
      21004242420042634200424242004221210042634200C6DEC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60042636300A5A5A500848484008484A500C6DEC600C6C6C600C6C6C600F7FF
      FF00C6C6C600A5A5A50084A5A500C6DEC60042636300C6DEC600C6C6C6000000
      0000426363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084A5840042212100C6A5A5008463630042212100C6DEC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00DED6DE00BDBDBD00FFFF
      FF0073737B007B7B7B00FFFFFF00848484008C8C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00CECECE00DEDEDE009C949C007B7B
      7B00EFEFEF006B6B6B00ADADAD00FFFFFF00000000000000000000000000C6DE
      C60042634200C6C6C600C6A5A500848484008484630084636300424242004242
      4200424242004263420042424200424221004242420042636300848463008484
      8400A5A5A500C6C6C600C6DEC60084848400F7FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A5008484840042636300C6C6C600F7FFFF00C6C6C60084C6C600C6C6
      C600F7FFFF00C6DEC600A5A5A500A5A5A50042636300A5A5A50042424200C6C6
      C6004263630000000000C6C6C600F7FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500F7FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000004263420042424200C6A5A5008484630000422100A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007373730073737B00FFFFFF008C8C8C0063636300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700949494007B7B
      7B00FFFFFF007B7B7B0084848400FFFFFF00000000000000000000000000C6C6
      C600422121004263420042424200424242004242420042424200424242004242
      4200424242004242420042422100424242004242420042424200424242004263
      420042424200426342004263420042212100C6DEC600C6C6A500C6C6C600C6DE
      C600F7FFFF000000000000000000000000000000000000000000000000000000
      0000C6DEC600A5A5A50084848400A5A5A500C6DEC600F7FFFF00C6DEC600C6C6
      C600C6C6C600C6C6C600FFFFFF0084C6C60084C6C600A5A5A500424242008463
      84004242420000000000C6C6C600C6C6C6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084636300A5A5A5008484840000422100846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A50042212100F7FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084848400212121006363630039313900635A6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F7008C8C8C002929
      29005A5A5A0042424A006B6B6B00FFFFFF00000000000000000000000000C6C6
      C600424221004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      420042424200424242004242420042422100C6DEC600F7FFFF00C6DEC600C6C6
      C600C6C6A500A5A5A500C6C6C600000000000000000000000000000000000000
      0000F7FFFF00F7FFFF00C6DEC600C6C6C600C6C6C600C6C6C600C6DEC600C6DE
      C600C6C6C60084C6C600C6C6C600C6DEC600C6DEC600F7FFFF00C6C6C600A5A5
      A5004221420042636300C6DEC600848484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084636300A5A5A5008484840000422100846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A50042212100F7FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0073737B005A5A5A00DEDEDE00848484003939310039313100393131003931
      3100393131003931310039313100393131003931310039313100393131003931
      310039313100393131003931310039313100A5A5A500FFFFFF008C8C94005A5A
      5A00DEDEDE00A5A5AD0029292900FFFFFF00000000000000000000000000C6C6
      C600422121004221210042422100424242004242420042424200424242004242
      4200424221008463630042422100422121004242420042424200424242004242
      420042634200424242004242420042212100F7FFFF00FFFFFF00FFFFFF00C6DE
      C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000F7FFFF00C6DEC600C6C6C600C6C6C600C6C6
      C600F7FFFF00C6DEC60084A5C600C6C6C600C6C6C600A5A5A500F7FFFF00F7FF
      FF00A5A5A500C6C6C600A5A5A500424242000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000008463
      6300C6DEC6000000000000000000000000000000000000000000000000000000
      0000C6C6C600000000008484840084846300A5A5A5004242210042424200C6DE
      C60000000000000000000000000000000000000000000000000000000000C6DE
      C6004242210042212100C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00737373007B7B7B00FFFFFF007373730039393900C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5B5B50039313100BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A5A5A500393131007B7B7B00EFEFEF0094949C007373
      7B00FFFFFF00DEDEDE0039394200E7E7E700000000000000000000000000F7FF
      FF00A5A5A50084636300A5A5A500A5A5A500C6C6C600C6DEC600F7FFFF00C6C6
      C60042212100846363004242210042634200F7FFFF00C6DEC600A5A5A500A5A5
      A50042636300424221004242420042634200FFFFFF00F7FFFF00F7FFFF00C6DE
      C600F7FFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00C6C6C600C6C6
      C600C6C6C600C6DEC600F7FFFF00C6C6C600C6C6C6004242420084848400C6C6
      C600FFFFFF00C6DEC600A5A5A50042636300A5A5A50000000000000000000000
      0000000000000000000000000000000000000000000084636300424221004242
      4200A5A5A5000000000000000000000000000000000000000000000000000000
      00004263630042212100C6A5A5004263420084A584004263630000422100A5A5
      A500000000000000000000000000000000000000000000000000000000008484
      840042212100424242008484630000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00736B73008C848C00D6D6D600423942004A4A4A009C9C9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400393131008C8C8C00F7F7F700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00848484004242420084848400ADADAD009C9CA5007373
      7B00FFFFFF00E7E7E70052525200B5B5B500000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DEC600FFFF
      FF00846363004263630042212100C6C6C600F7FFFF00F7FFFF00F7FFFF00FFFF
      FF00A5A5A5004221210084A58400C6DEC600F7FFFF00FFFFFF00F7FFFF00C6C6
      C600C6DEC600C6C6C600C6DEC600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6DEC600C6DEC60042636300424242004263
      6300A5A5A500F7FFFF00C6C6C600C6C6C60042636300C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000426363004242
      210042634200C6DEC6000000000000000000000000000000000000000000C6DE
      C6000000000042424200C6C6A500424242008484630084848400004221004263
      6300F7FFFF000000000000000000000000000000000000000000C6DEC6000000
      000042634200846363004221210000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00737373007B7B7B00B5B5B5005A5A5A00A5A5A50073737300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF005A5A5A008C8C8C0063636300E7E7E700FFFFFF00FFFF
      FF00FFFFFF00F7F7F7007B7B7B0084848400949494007B737300A5A5AD007373
      7B00FFFFFF00EFEFEF00848484009C949C000000000000000000C6DEC600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6004263630000000000C6C6C600C6C6C600C6C6C600FFFFFF00F7FFFF00FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7FFFF00C6C6C600C6C6C600C6C6C600F7FFFF0084848400848484004221
      210000000000A5A5A500C6C6C600C6DEC600C6DEC60084848400C6DEC6000000
      0000000000000000000000000000000000000000000000000000426342004263
      42004221210084636300C6DEC600000000000000000000000000F7FFFF004242
      42000042210084848400848484004242420042424200C6C6A500424242004242
      420084846300F7FFFF00000000000000000000000000C6DEC600422121004242
      210084846300424242000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B004242420084848400848484008C8C8C0042424200FFFFFF00FFFF
      FF00FFFFFF00EFEFEF0039313100F7F7F70042393900DEDEDE00FFFFFF00FFFF
      FF00FFFFFF00D6D6D60073737300BDBDBD00B5B5B5005A5A5A008C8C8C006363
      6300D6D6D600BDBDC600848484006363630000000000F7FFFF00F7FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00FFFFFF00F7FFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5A5A50042424200F7FFFF00FFFFFF00C6C6C600C6DEC600FFFFFF00F7FF
      FF00F7FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6DEC600C6C6C600C6DEC60042636300A5A5A5004263
      6300424242000000000042636300A5A5A500F7FFFF00F7FFFF00A5A5A500C6DE
      C600000000000000000000000000000000000000000000000000424242008463
      6300424242000042210084848400C6C6C600F7FFFF00C6DEC600846363000042
      210042422100F7CEA500424242000042210042424200C6A5A500848484000042
      21004242420084848400C6C6C600C6DEC600C6C6C60042424200424221008463
      63008484630000000000C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084848C00292929004242420063636300424242004A4A5200EFEFEF00FFFF
      FF00FFFFFF00BDBDBD006B6B6B00FFFFFF006B636300A5A5A500F7F7F700FFFF
      FF00FFFFFF00BDBDBD008C848400D6D6D600DEDEDE00736B7300424242003131
      39005A5A5A005A5A5A00525252003939390000000000F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6C6C600C6DEC600C6C6C600C6DE
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6DEC60042424200848484008484
      A50042636300424242004221210000000000A5A5A500F7FFFF00F7FFFF00A5A5
      A500C6DEC60000000000000000000000000000000000F7FFFF00000000004263
      4200848463000042210042424200846363008463630042634200424221004242
      210084848400C6A5A50000422100424242000042210042636300F7CEA5004242
      4200422121004242420042636300846363004242420042422100424242008484
      840000000000422121000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C8C8C003131310094949400FFFFFF00CECECE0052525A00C6C6C600FFFF
      FF00F7F7F7009C9C9C00948C8C00FFFFFF009C9C9C0084848400EFEFEF00FFFF
      FF00FFFFFF009C9494008C8C8C00EFEFEF00FFFFFF0094949400292929008484
      8C00FFFFFF00FFFFFF00E7E7E7002121210000000000F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DEC6008463
      6300848484008484840084848400848484008484840000000000F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300424242008484
      A500424242004263630042424200000000000000000084848400C6DEC600F7FF
      FF0084A5A500C6C6C60000000000000000000000000000000000846363000000
      0000848463008463630042424200424242004242420042424200424242008463
      6300C6C6A5004263630000000000F7CEA5004221210042424200A5A5A500C6A5
      A500424242004242210042422100424221004242210042636300848463008463
      630000000000C6DEC6000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00847B84005A525200DEDEDE00FFFFFF00DEDEDE007B7B8400A5A5A500FFFF
      FF00F7F7F7006B6B6300C6C6C600FFFFFF00CECECE00635A5A00DEDEDE00FFFF
      FF00FFFFFF00736B730094948C00FFFFFF00FFFFFF00BDBDBD00393939008C8C
      8C00FFFFFF00FFFFFF00EFEFEF0052525A0000000000F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF0000000000F7FFFF004242
      2100426342004242420042424200424221008463630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FFFF00424242008484
      840084636300424242004242420000000000000000004221210042636300A5A5
      A500F7FFFF0042424200F7FFFF00000000000000000000000000C6DEC6000000
      000042424200848484008463630042634200424242004242420084636300C6A5
      A500848484000021420042424200F7CEA500848484000021420042636300C6C6
      A500C6A5A50042636300424242004263420084636300A5A5A500848484004221
      2100A5A5A50000000000000000000000000073737B00525252005A525A005A5A
      630039313900393139005A5A63005A5A5A00524A520031313100313131005A5A
      5A0052525200312929004A4A4A005A525A004A4A520031313100524A52005A5A
      5A005A5A630042394200424242005A5A5A005A5A5A004A4A4A00313131003939
      42005A5A5A005A5A5A0052525200313131000000000000000000F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00000000000000000000000000F7FFFF004242
      4200426342004242420042634200424242008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6DE
      C600A5A5A50042424200424221004242420000000000A5A5A500000000004221
      210084848400426384008484840000000000000000000000000000000000A5A5
      A500422121008463630084846300848463008484630084846300C6A584008484
      84004263630000000000C6A5840084846300C6A5840042424200004221008463
      6300C6A5A500C6A5A500C6A5840084848400A5A5A50084848400424242000000
      0000F7FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C6BD
      C6007B7B7B00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D6007B7B7B00ADAD
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000F7FFFF00F7FF
      FF00F7FFFF000000000000000000000000000000000000000000000000004242
      4200426342004242420042634200424242008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6DEC60042212100C6DEC6008463630000000000424242004242
      4200000000008484A50042426300F7FFFF000000000000000000000000000000
      0000426342004242210084636300848463008484840084846300848463004263
      63004221210084636300C6A584008484630084848400C6A58400424221000042
      21004263630084848400A5A5A50084A5840084848400424242004221210084A5
      840000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C6BD
      C6007B7B7B00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D6007B7B7B00ADAD
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      4200426342004242420042634200424242008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7FFFF000000
      0000000000004221210084A5A500A5A5A5000000000000000000000000000000
      0000C6C6C6004263630042422100424242004263420042424200424242004242
      210042424200C6A58400C6848400C6A5840084848400C6A5A500848463004242
      2100004221004242420042634200426342004242420042424200848484000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C6BD
      C6007B7B7B00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D6007B7B7B00ADAD
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042634200424242004263420042424200A5A5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A500000000000000000042638400C6C6C6000000000000000000000000000000
      000000000000C6C6C60042636300424242004242210042422100424221004242
      4200C6A58400C6A584008484840084848400C684840084848400C6A5A5008484
      6300424242004221210042424200424242004242420084848400000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C6BD
      C6007B7B7B00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D6007B7B7B00ADAD
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      210042424200424242004242420042422100A5A5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000000000C6DEC600000000000000000000000000000000000000
      0000000000000000000000000000A5A5A500848484008484840084848400C6C6
      A500C6C6A500C6A5A500C6A5A500A5A5A500C6A5A500C6A5A500C6A5A500F7CE
      A500C6A5A50084A5840084848400A5A5A500F7FFFF0000000000000000000000
      0000000000000000000000000000000000007B7B7B00525252005A5A5A004A42
      4A00313139004A4A4A005A5A5A005A525A005A525A005A525A005A525A005A52
      5A005A525A005A525A005A525A005A525A005A525A005A525A005A525A005A52
      5A005A525A005A525A005A525A005A525A005A5A5A004A4A4A00313139004242
      42005A5A5A005A525A005A525A005A5A63000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A50084A584008484840084848400848484004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00525252000000000000000000212121007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECECE005252520000000000000000002121
      21007B7B7B00EFEFEF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000000000000000000000000000
      000031313100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00101010000000000000000000000000000000
      00000000000031313100EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00101010000000000063636300DEDEDE00FFFFFF00ADADAD001010
      1000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00212121000000000063636300DEDEDE00FFFFFF00ADAD
      AD0010101000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF7
      FF00EFEFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADADAD000000000021212100FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADAD
      AD00000000001010100042424200424242004242420042424200424242004242
      420042424200313131000000000021212100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADADAD000000000021212100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00525A63000018
      730000003900FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00848484000000000073737300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700000000001008
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C8C8C000000000052525200FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDE
      DE000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00636363000000000042424200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7E70042424200393939004242
      420042424200313131005A5A5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE000000000000000000CECECE00FFFFFF00FFFFFF00FFFFFF006363
      630000000000313131007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000CECECE00FFFFFF00FFFFFF00FFFF
      FF00737373000000000052525200FFFFFF009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C00CECECE0000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF005252520000000000101010006363630084848400313131000000
      000000000000CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0073737300000000001010100063636300848484003131
      31000000000000000000BDBDBD00FFFFFF009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C00FFFFFF009C9C9C00525252006363
      63006363630063636300A5A5A500F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFEFEF0052525200000000000000000000000000000000001010
      10009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00636363000000000000000000000000000000
      0000101010009C9C9C00FFFFFF00FFFFFF009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C00FFFFFF00E7E7E700636363008C8C
      8C008C8C8C0073737300949494003939390000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00946331007B7B7B007B7B7B009C9C9C004242
      4200DEDEDE00EFDED600D6AD8400FFFFFF00EFDED600D6AD8400FFFFFF00FFFF
      FF00FFFFFF00EFDED600DEBDA5007B7B7B007B7B7B007B7B7B007B7B7B009C9C
      9C00EFEFEF00FFFFFF00FFFFFF00FFFFFF006363630073737300737373007373
      7300737373007373730073737300737373006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B008C8C8C009C9C9C0094949400949494008C8C8C008C8C
      8C008C8C8C007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00313131008C8C
      8C0084848400737373006363630029292900FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700F7EFE700B5733900FFFFFF00FFFFFF00F7EFE700BDB5
      B50063636300D6B59400D6B59400F7EFE700D6B59400D6B59400F7EFE700F7EF
      E700FFFFFF00D6AD8400CEAD940031313100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00636363006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B00636363005A5A5A004A4A
      4A004A4A4A00525252007B7B7B009C9C9C006B6B6B0094949400636363004A4A
      4A0042424200525252005A5A5A00636363006363630063636300636363006363
      630063636300636363006363630063636300FFFFFF00FFFFFF00FFFFFF004A4A
      4A00848484007B7B7B00848484007B7B7B004A4A4A00BDBDBD00A5A5A5000000
      0000F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEBDA500BD8C5200CE9C7300FFFFFF00FFFFFF00BD8C5200F7EF
      E70042424200A5734200EFDED600BD7B4200BD8C5200EFDED600CE9C7300E7CE
      B500FFFFFF00BD7B4200736B63009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE004A4A4A009C9C9C009C9C9C009C9C9C009C9C9C00737373009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000292929008C8C8C007373730084848400848484005A5A5A0084848400C6C6
      C6000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840042636300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6946300BD7B4200E7CEB500FFF7F700DEBDA500B5733900FFFF
      FF009C7B630042291000FFFFFF00B5733900B5733900FFFFFF00BD7B4200D6B5
      9400FFF7F7009C5A180031313100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004A4A4A009C9C9C009C9C9C009C9C9C009C9C9C0073737300BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000005A5A5A007B7B7B0084848400848484007B7B7B005252
      52005A5A5A000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004263630042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AD6B2900BD7B4200F7EFE700E7CEB500BD7B4200BD8C5200EFD6
      C600BD8C520029100000CEB5A500BD8C5200BD7B4200FFFFFF00B5733900B573
      3900EFDED600522900009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00313131004A4A4A004A4A4A004A4A4A004A4A4A0039393900CECE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000005A5A5A008C8C8C007B7B7B008484
      84007B7B7B006B6B6B00313131000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF0042212100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004242420084636300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7EFE700BD7B4200AD6B2900FFFFFF00D6AD8400BD7B4200D6B59400D6AD
      8400BD8C5200946B420039180000BD8C5200D6AD8400EFD6C600BD8C5200BD7B
      4200CEAD940029212100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00424242008484840084848400848484008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000848484008484
      84008484840084848400848484004A4A4A00181818000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084636300C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7CEB500BD7B4200C6946300FFFFFF00BD7B4200BD8C5200EFDED600BD7B
      4200BD7B4200EFD6C600393131008C5A2100EFD6C600D6AD8400BD7B4200D6AD
      84006B6352007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400BDBDBD00BDBDBD00BDBDBD00BDBDBD0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000005A5A
      5A0084848400848484008484840084848400737373004A4A4A00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C7300BD8C5200DEBDA500FFFFFF00B5733900B5733900FFFFFF00AD6B
      2900B5733900FFFFFF008452210029100000FFFFFF00BD7B4200BD7B4200DEC6
      B50021212100EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00848484009C9C9C00DEDEDE00DEDEDE009C9C9C0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000636363008484840084848400848484007B7B7B00636363003131
      31000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6DEC600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5733900BD8C5200F7EFE700EFD6C600BD7B4200BD8C5200EFD6C600BD8C
      5200BD7B4200EFDED600BD8C520029100000BDBDBD00AD6B2900AD6B29007B7B
      7B006B635200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CECECE0052525200BDBDBD00BDBDBD00BDBDBD00BDBDBD0052525200CECE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000007373730084848400848484008C8C8C007373
      73005A5A5A00181818000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700BD7B4200AD6B2900FFFFFF00D6AD8400BD7B4200D6B59400D6B59400BD8C
      5200D6AD8400D6B59400BD8C5200946B420029211000BD8C5200AD6B31001810
      1000CEAD9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C8C8C008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C8C008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000008C8C8C00848484008484
      8400848484005A5A5A00525252001010100000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00F7EFE700EFD6C600D6B5
      9400B5733900B5733900EFD6C600B5733900B5733900D6B59400BD7B4200BD7B
      4200D6AD8400BD7B4200BD7B4200D6AD84003129210052392100311800005229
      0000D6B59400EFD6C600EFD6C600F7EFE700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009494940084848400EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDE
      DE0073737300CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE007373
      7300DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF008484840094949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000737373008484
      84008C8C8C0039393900DEDEDE00848484004A4A4A000000000018181800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF0084848400FFFFFF00FFFFFF00FFFFFF00BD7B4200D6AD8400D6AD
      8400D6AD8400D6AD8400D6AD8400D6AD8400D6AD8400D6AD8400D6AD8400D6AD
      8400D6AD8400D6AD8400D6AD8400C69C7300181010009C9C9C00848484002921
      1000D6AD8400D6AD8400D6AD8400C6946300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD009C9C9C004242
      4200BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00ADAD
      AD009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C00ADADAD00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00424242009C9C9C00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00006B6B6B0029292900000000008C8C8C00A5A5A50084848400181818000000
      00007B7B7B00F7F7F700FFFFFF00FFFFFF00F7FFFF0084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00F7FF
      FF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FF
      FF00C6C6C60084636300FFFFFF00FFFFFF00FFFFFF00D6AD8400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD0073737300FFFFFF00FFFFFF003131
      3100FFFFFF00FFFFFF00FFFFFF00BD7B4200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00949494009C9C9C00ADADAD009C9C
      9C007373730052525200BDBDBD00BDBDBD00BDBDBD0084848400636363009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00FFFFFF00FFFFFF00FFFF
      FF009C9C9C006363630073737300BDBDBD00BDBDBD00BDBDBD00525252007373
      73009C9C9C00ADADAD009C9C9C0094949400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000094949400000000002121210094949400A5A5A5009C9C
      9C0000000000ADADAD00FFFFFF00FFFFFF00F7FFFF00A5A5A500C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00C6DEC600C6C6C600A5A5A500C6C6
      C600C6DEC60084848400C6C6C600C6C6C600C6C6C600A5A5A500C6C6C600C6C6
      C600A5A5A500C6C6C600F7FFFF00F7FFFF00FFFFFF00F7FFFF00F7FFFF00C6C6
      C600A5A5A500A5A5A500FFFFFF00FFFFFF00FFFFFF00B5733900FFF7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECECE0042424200FFFFFF00EFEFEF002121
      2100FFFFFF00FFFFFF00C6946300DEBDA500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD0073737300ADADAD009C9C
      9C009C9C9C009C9C9C008C8C8C00848484008C8C8C009C9C9C00DEDEDE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECECE00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEDEDE009C9C9C009C9C9C00848484008C8C8C009C9C9C009C9C
      9C009C9C9C00ADADAD0073737300ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF001818180000000000000000004242420008080800000000002929
      2900F7F7F700FFFFFF00FFFFFF00FFFFFF00C6DEC60084848400C6C6C600FFFF
      FF00C6DEC600C6DEC600C6DEC600F7FFFF00C6DEC600A5A5A50084848400C6DE
      C600F7FFFF0084848400C6C6C600C6DEC600C6DEC600A5A5A500A5A5A500C6DE
      C600C6DEC60084848400C6C6C600F7FFFF00C6DEC600C6C6C600A5A5A500C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00EFD6C600BD7B4200DEBD
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484003131310031313100ADAD
      AD00CE9C7300BD7B4A00D6B59400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00848484008C8C
      8C008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00BDBDBD00CECECE00CECECE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C008C8C8C0084848400EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000042424200000000000000
      000000000000EF6B6B00FF8C8C00FFCECE00C6C6C60084636300A5A5A500F7FF
      FF0084848400C6C6C600C6C6C600C6DEC600F7FFFF00A5A5A500A5A5A500F7FF
      FF00C6DEC600C6C6C600C6C6C600FFFFFF00F7FFFF00C6C6C600C6C6C600F7FF
      FF00F7FFFF0084848400A5A5A500F7FFFF00C6C6C6008484840084848400C6C6
      C600A5A5A500A5A5A500F7FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00BD7B
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6AD8400EFD6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00A5A5A500CECECE00FFFFFF00FFFFFF00CECECE00A5A5A500DEDE
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700FFFFFF00F7F7F70094A5
      A5006B181800FF000000FF000000FF000000A5A5A5004242420042636300A5A5
      A50042212100A5A5A500C6C6C600C6DEC600F7FFFF00A5A5A500C6DEC600C6C6
      C60084848400F7FFFF00C6C6C600F7FFFF00C6C6C600F7FFFF00F7FFFF00C6DE
      C600C6DEC600F7FFFF00C6C6A500F7FFFF00A5A5A50084848400F7FFFF00A5A5
      A5004242420084848400A5A5A50042424200FFFFFF00FFFFFF00FFFFFF00BD8C
      5200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6946300EFDED600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE009C9C9C00B5B5B500848484008484840084848400ADADAD00A5A5
      A500BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00A5A5A500ADADAD00848484008484840084848400B5B5B5009C9C9C00DEDE
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF393900FF000000FF000000A5A5A500C6C6C600C6C6C600C6DE
      C600A5A5A500A5A5A500C6C6C600C6A5A500A5A5A500A5A5A500848484008484
      840084636300A5A5A500A5A5A5008484840084848400A5A5A500A5A5A5008484
      840084848400A5A5A50084848400848484008463630084848400A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500FFFFFF00FFFFFF00FFFFFF00D6AD
      8400D6AD8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EFE700FFFFFF00FFFFFF00DEBD
      A500BD7B4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFE7E700FF000000FF000000C6DEC600FFFFFF00F7FFFF00F7FF
      FF00F7FFFF00C6DEC600C6DEC600C6C6C600C6C6C600C6C6C600C6C6C600A5A5
      A500A5A5A500A5A5A500C6C6C600A5A5A500A5A5A500A5A5A500C6C6C600A5A5
      A500A5A5A500C6C6C600C6C6C600A5A5A500A5A5A500C6C6C600C6C6C600C6DE
      C600F7FFFF00C6C6C600C6C6C600C6DEC600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6946300CE9C7300EFDED600FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD5A1800BD7B4200BD7B4200C694
      6300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFC6C600FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00C6DEC600C6DEC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFD6C600D6AD8400BD7B4200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7EFE700C6946300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF8C8C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BD7B4200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C7300D6AD8400DEBDA500B5733900F7EFE700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BD8C5200EFDED600FFFFFF00FFFFFF00EFDE
      D600C6946300EFD6C600EFD6C600FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700BD8C5200C6946300CE9C7300BD8C
      5200FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7FFFF0042FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF001010100021212100ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000C6C6C600848484000000000084848400FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADAD003939390021212100848484000000
      000000000000000000000000000000000000ADADAD0000000000313131000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000C6C6C600848484000000000084848400FF00
      0000FF000000FF000000FF000000FF000000C6C6C60084848400000000008484
      8400FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363630073737300737373007373
      7300737373007373730073737300737373006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B008C8C8C000000000094949400949494008C8C8C008C8C
      8C008C8C8C007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000BDBDBD004242420010101000636363000000
      000000000000000000000000000000000000737373002121210052525200BDBD
      BD0000000000000000000000000000000000000000006363630042424200CECE
      CE0000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000C6C6C600848484000000000084848400FF00
      0000FF000000FF000000FF000000FF000000C6C6C60084848400000000008484
      8400FF000000FF000000FF000000FF000000C6C6C60084848400000000008484
      8400FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C847B001818000021210800423929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636363006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B00636363005A5A5A004A4A
      4A004A4A4A00525252007B7B7B009C9C9C006B6B6B0094949400636363004A4A
      4A0042424200525252005A5A5A00636363006363630063636300636363006363
      6300636363006363630063636300636363000000000000000000000000000000
      0000000000000000000000000000DEDEDE003131310010101000ADADAD000000
      000000000000000000000000000000000000737373001010100042424200BDBD
      BD0000000000000000000000000000000000BDBDBD0039393900393939008484
      840000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000C6C6C600848484000000000084848400FF00
      0000FF000000FF000000FF000000FF000000C6C6C60084848400000000008484
      8400FF000000FF000000FF000000FF000000C6C6C60084848400000000008484
      8400FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004242730052639400394A7B00292952000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE004A4A4A0000000000000000000000000000000000737373009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000009494940084848400000000000000
      0000000000000000000000000000000000007B7B7B003131310042424200DEDE
      DE0000000000000000000000000000000000BDBDBD0042424200101010008484
      840000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000009494940084848400FF000000FF00
      0000FF000000FF000000FF000000FF000000C6C6C60084848400000000008484
      8400FF000000FF000000FF000000FF000000C6C6C60084848400000000008484
      8400FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000397394008CCEF70084C6EF00185A7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004A4A4A000000000000000000000000000000000073737300BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000007373730052525200CECECE000000
      00000000000000000000000000000000000000000000525252009C9C9C000000
      000000000000000000000000000000000000DEDEDE0021212100000000008484
      840000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000007373730052525200CECECE00FF00
      0000FF000000FF000000FF000000FF000000FF000000525252009C9C9C00FF00
      0000FF000000FF000000FF000000FF000000C6C6C60084848400000000008484
      8400FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5BD
      C6005A8CA500528CAD006B94A5005284AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00313131004A4A4A004A4A4A004A4A4A004A4A4A0039393900CECE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000006B6B6B004A4A4A00CECECE000000
      000000000000000000000000000000000000BDBDBD0073737300525252000000
      00000000000000000000000000000000000000000000ADADAD00737373000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000006B6B6B004A4A4A00CECECE00FF00
      0000FF000000FF000000FF000000FF000000FF0000007373730052525200CECE
      CE00FF000000FF000000FF000000FF000000FF000000ADADAD0073737300FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6D6
      D60084ADC600C6E7F700CEE7F7004A7B94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00424242008484840084848400848484008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000006B6B6B0018181800000000000000
      000000000000000000000000000000000000BDBDBD00949494005A5A5A000000
      000000000000000000000000000000000000000000007373730042424200CECE
      CE0000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000006B6B6B0018181800FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000949494005A5A5A00CECE
      CE00FF000000FF000000FF000000FF000000FF0000007373730042424200CECE
      CE00FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEC6
      AD0094846300BDAD8400BDBD8C00636B4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400BDBDBD00BDBDBD00BDBDBD00BDBDBD0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C0042424200000000000000
      000000000000000000000000000000000000DEDEDE00181818008C8C8C000000
      000000000000000000000000000000000000000000006363630042424200BDBD
      BD0000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000008C8C8C0042424200FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000181818008C8C8C00FF00
      0000FF000000FF000000FF000000FF000000FF0000006363630042424200BDBD
      BD00FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEB5
      9400CE7B3900D68C6300CE845A00CE7B21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00848484009C9C9C00DEDEDE00DEDEDE009C9C9C0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C0063636300000000000000
      0000000000000000000000000000000000000000000010101000ADADAD000000
      000000000000000000000000000000000000000000007B7B7B00292929000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000009C9C9C0063636300FF000000FF00
      0000FF000000FF000000FF000000FF000000FF0000001010100084848400FF00
      0000FF000000FF000000FF000000FF000000FF0000007B7B7B0029292900FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADB5
      AD0018292100394A3900394A3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CECECE0052525200BDBDBD00BDBDBD00BDBDBD00BDBDBD0052525200CECE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00000000000000
      0000000000000000000000000000000000000000000063636300BDBDBD000000
      000000000000000000000000000000000000000000009C9C9C00313131000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000BDBDBD0084848400FF000000FF00
      0000FF000000FF000000FF000000FF000000FF0000006363630084848400FF00
      0000FF000000FF000000FF000000FF000000FF0000009C9C9C0031313100FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      630021291800424A39003139290021291800F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C8C8C008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C8C008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00000000000000
      00000000000000000000000000000000000000000000A5A5A500BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00636363000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000BDBDBD0084848400FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000A5A5A50084848400FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0063636300FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000008
      000031392900525A4A003942310021211800A5948C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF009494940084848400EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDE
      DE0073737300CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE007373
      7300DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFEFEF008484840094949400FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00A5A5A5000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000BDBDBD0084848400FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF0000000000000000000000FFFFFF003939
      29009C8C840084736B0042392900424231004A4239003139210029292100394A
      310018181000636B4A00313121002129180029311800293921004A4239004239
      29005A4A420084736B008C7B73006B5A52005A524200CEC6BD00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000BDBDBD00BDBDBD009C9C9C004242
      4200BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00ADAD
      AD009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C00ADADAD00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00424242009C9C9C00BDBDBD00BDBDBD000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000BDBDBD0084848400FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF0000000000000000000000F7F7F7000000
      000042523900314229004A5A4200394A31003942310039423100313929002129
      18002121180000000000181810002129180039423100424A3900424A39004A5A
      4200525A4A00314231004A4A39001021100008180800EFE7E7006B635200948C
      8400DED6D600FFFFFF000000000000000000949494009C9C9C00ADADAD009C9C
      9C007373730052525200BDBDBD00BDBDBD00BDBDBD0084848400636363009C9C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00FFFFFF00FFFFFF00FFFF
      FF009C9C9C006363630073737300BDBDBD00BDBDBD00BDBDBD00525252007373
      73009C9C9C00ADADAD009C9C9C00949494000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000BDBDBD0084848400FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000008
      00002931210021292100424A3900313929003139290010211000182110003139
      2900101808004242310018181000181810002129180021291800424A39004A52
      390042523900394A3900394231002129210010181000E7DED600F7EFEF00FFF7
      F700E7E7DE00FFFFFF00FFFFFF00ADA59C00ADADAD0073737300ADADAD009C9C
      9C009C9C9C009C9C9C008C8C8C00848484008C8C8C009C9C9C00DEDEDE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECECE00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEDEDE009C9C9C009C9C9C00848484008C8C8C009C9C9C009C9C
      9C009C9C9C00ADADAD0073737300ADADAD000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000BDBDBD0084848400FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000808
      000000080000000800000808000018210800424A42006B736B00738473000810
      0800293121005A634A0029311800181810007B847B0073736B00102108001010
      08000810000021291800212918002931210029392900FFEFE700F7EFEF00FFF7
      F700EFE7E700F7EFEF00FFFFFF00C6BDBD00FFFFFF00EFEFEF00848484008C8C
      8C008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00BDBDBD00CECECE00CECECE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C008C8C8C0084848400EFEFEF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000BDBDBD0084848400FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF000000000000000000000073635A006B5A
      4A006B6352006B634A006B5A4A006B5A52006B5A52006B5A52006B5A52008473
      6300394231003942290000000000635A4A00635A52007B6B6300847B7300948C
      8400ADA59C00182110000008000073634A005A4A3900CEBDBD00FFFFFF00E7D6
      D600DED6CE00F7E7DE00C6B5B500C6BDB500FFFFFF00FFFFFF00FFFFFF008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00A5A5A500CECECE00FFFFFF00FFFFFF00CECECE00A5A5A500DEDE
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      840084848400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00A5A5A500000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000BDBDBD0084848400FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF000000FFFFFF00CEC6BD00FFFFFF00FFFF
      FF00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFE700EFE7DE00CEC6BD00CEBD
      B500DECEBD002129100000000000FFEFEF00FFF7F700C6BDB5008C847B00E7DE
      DE00FFFFFF00ADA59C00EFDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE009C9C9C00B5B5B500848484008484840084848400ADADAD00A5A5
      A500BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00A5A5A500ADADAD00848484008484840084848400B5B5B5009C9C9C00DEDE
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00000000000000
      000000000000000000000000000000000000EFEFEF00DEDEDE00000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000840000008400FF000000FF00
      0000FF000000FF000000FF000000FF000000EFEFEF00DEDEDE00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF000000DEDEDE00F7EFE700F7F7F700F7F7
      FF00F7EFF700F7E7E700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFE700F7EF
      EF00EFDED600F7F7F700EFD6C600EFDED600F7EFEF00F7EFF700F7F7F700FFF7
      F700FFFFFF00737B7B0021312900F7EFEF00FFF7F700B5ADA500FFFFFF00FFFF
      FF0094847B00DED6D600FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD009C9C9C0094949400000000000000
      00000000000000000000000000000000000000000000CECECE00EFEFEF000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      000000000000000000000000000000000000FF000000FF000000000084000000
      8400000084000000840000008400000084009C9C9C0094949400FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000CECECE00EFEFEF00FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD0084848400FF00
      0000FF000000FF000000FF000000FF000000F7EFEF00F7EFE700F7EFEF00FFF7
      FF00F7EFEF00EFDED600F7EFEF00F7EFEF00F7EFEF00DED6BD00D6D6C600525A
      5200526352004A5A5200525A6300525A5A0039524A00F7EFEF00F7EFEF00F7EF
      E700F7EFE700EFDED600EFDED600EFDECE00EFDEDE00E7DEDE00F7EFEF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0094949400CECECE000000
      00000000000000000000000000000000000000000000EFEFEF00ADADAD000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000084848400BDBDBD00000084000000
      8400000084000000840000008400000084000000840094949400CECECE00FF00
      0000FF000000FF000000FF000000FF000000FF000000EFEFEF00ADADAD00FF00
      0000FF000000FF000000FF000000FF000000F7F7F700F7E7E700EFDED600F7E7
      E700F7EFEF00F7EFEF00F7EFEF00EFE7E700E7D6CE0000000000DEDEDE00424A
      3900424A390039423100394A3100394229004A52420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00000000000000
      00000000000000000000000000000000000000000000BDBDBD008C8C8C00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00ADADAD00ADADAD000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000084848400BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD008C8C8C000000
      84000000840000008400000084000000840000008400ADADAD00ADADAD00FF00
      0000FF000000FF000000FF000000FF000000FFFFFF00EFDED600EFE7E700F7EF
      E700EFDEDE00EFE7DE000000000000000000000000000000000000000000424A
      39004252390031392900394A3100394231006B73630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00ADADAD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000084848400BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000084848400BDBDBD00FF00
      0000FF000000FF000000FF000000FF000000FF000000BDBDBD00ADADAD000000
      840000008400000084000000840000008400FFFFFF00FFF7EF00EFDED600EFD6
      CE00FFFFF700FFFFFF000000000000000000000000000000000000000000424A
      39004252390031392900394A390031422900737B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B500BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00000000000000000000000000ADADAD009C9C9C00000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      0000000000000000000000000000F7F7F700B5B5B500BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00FF000000FF000000FF000000848484009C9C9C00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000084848400BDBDBD00FF00
      0000FF000000FF000000FF000000FF000000FF00000084848400BDBDBD00FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000424A
      3900424A390031392900394A3900394231008C8C7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000009C9C
      9C0039393900BDBDBD00BDBDBD00BDBDBD008484840052525200BDBDBD00BDBD
      BD000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      0000000000000000000000000000F7F7F700FF000000FF000000FF0000009C9C
      9C0039393900BDBDBD00BDBDBD00BDBDBD008484840052525200BDBDBD00BDBD
      BD00FF000000FF000000FF000000FF000000FF00000084848400BDBDBD00FF00
      0000FF000000FF000000FF000000FF000000FF00000084848400BDBDBD00FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003142
      290031423100293921003942310031392900B5B5AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000CECE
      CE009C9C9C00CECECE000000000000000000ADADAD00A5A5A500000000000000
      00002121210042424200BDBDBD00BDBDBD00BDBDBD00525252008C8C8C00BDBD
      BD000000000000000000000000000000000000000000BDBDBD00BDBDBD000000
      0000000000000000000000000000FFFFFF00FF000000FF000000FF000000CECE
      CE009C9C9C00CECECE00FFFFFF00FFFFFF00ADADAD00A5A5A500FF000000FF00
      00002121210042424200BDBDBD00BDBDBD00BDBDBD00525252008C8C8C00BDBD
      BD00FF000000FF000000FF000000FF000000FF00000084848400BDBDBD00FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A59C
      A5007B7B73006B6B6B006B736B007B737300FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00009C9C9C00A5A5A500B5B5B5009C9C9C0094949400CECECE00000000000000
      00009C9C9C009C9C9C000000000000000000000000006B6B6B00CECECE000000
      00008C8C8C0010101000A5A5A500BDBDBD00BDBDBD009494940052525200BDBD
      BD00000000000000000000000000EFEFEF00FF000000FF000000FF000000FF00
      00009C9C9C00A5A5A500B5B5B5009C9C9C0094949400CECECE00FF000000FF00
      00009C9C9C009C9C9C00FFFFFF00FFFFFF00FFFFFF006B6B6B00CECECE00FF00
      00008C8C8C0010101000A5A5A500BDBDBD00BDBDBD009494940052525200BDBD
      BD00FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000EFEFEF00A5A5A5009C9C9C009C9C9C00CECECE0000000000000000000000
      0000C6C6C6009C9C9C00ADADAD00BDBDBD009494940094949400000000000000
      0000CECECE009C9C9C00CECECE000000000000000000BDBDBD00848484000000
      0000BDBDBD00BDBDBD00BDBDBD00ADADAD00FF000000FF000000FF000000FF00
      0000EFEFEF00A5A5A5009C9C9C009C9C9C00CECECE00FF000000FF000000FF00
      0000C6C6C6009C9C9C00ADADAD00BDBDBD009494940094949400FF000000FF00
      0000CECECE009C9C9C00CECECE00FFFFFF00FFFFFF00BDBDBD0084848400FF00
      0000BDBDBD00BDBDBD00BDBDBD00ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B5B50094949400848484009C9C9C00EFEFEF00000000000000
      00000000000094949400A5A5A500CECECE00CECECE00A5A5A500B5B5B5000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000B5B5B50094949400848484009C9C9C00EFEFEF00FF000000FF00
      0000FF00000094949400A5A5A500CECECE00CECECE00A5A5A500B5B5B500FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00949494007B7B7B0073737300ADADAD00000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000DEDEDE00949494007B7B7B0073737300ADADAD00FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000039212100BDB5AD00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000EFD6D60094847B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700D6D6D600D6D6D600D6D6D600D6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000F7F7000000000000F7
      F7000000000000F7F70000F7F70000F7F7000000000000F7F7000000000000F7
      F7000000000000F7F70000F7F70000F7F7000000000000F7F7000000000000F7
      F7000000000000F7F70000F7F70000F7F7000000000000F7F7000000000000F7
      F7000000000000F7F70000F7F70000F7F7000000000000000000000000000000
      000000000000000000000000000000000000F7EFEF00FFFFFF00E7CEC600EFDE
      D600F7E7E700EFD6D600EFDED600EFDED600F7E7DE00EFDEDE00EFDEDE00F7FF
      F700E7CEC600F7FFFF00FFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF002121210052525200393939002929290094949400F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000F7F70000F7F70000F7FF0000F7
      F70000F7FF0000F7F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7
      F70000F7FF0000F7F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7
      F70000F7FF0000F7F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7
      F70000F7FF0000F7F70000F7FF0000F7F7000000000000000000000000000000
      000000000000000000000000000000000000EFD6CE00FFFFFF00EFD6D600DEBD
      B500C6949C00B57B8400B57B7B00A56B6B00BD7B7B00C6848400B5847B00CEB5
      B500CEA5A500FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE008C8C8C00EFEFEF00ADADAD009494940063636300EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F7000000000000000000000000000000
      000000000000000000000000000000000000EFE7E700C6948C00DEA5A5007363
      5A00736B63006B5A5A00634A4A005A5A5A006B5252006B525A006B5252008463
      6300C69C9400C6949400CEA5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6D6D6006B6B6B00848484008C8C8C006363630039393900E7E7E700D6D6
      D6000000000000000000DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEB5B500846B
      6B004A424A004A42420052424A004A4242005A4A520052424A00424242006B52
      5A006B525A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6D6D6006B6B6B00848484008C8C8C006363630039393900E7E7E700D6D6
      D6000000000000000000DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000F7F70000F7F70000F7
      F7000000000000F7F7000000000000F7F7000000000000F7F70000F7F70000F7
      F7000000000000F7F7000000000000F7F7000000000000F7F70000F7F70000F7
      F7000000000000F7F7000000000000F7F7000000000000F7F70000F7F70000F7
      F7000000000000F7F7000000000000F7F7000000000000000000000000000000
      000000000000000000000000000000000000000000005A424A005A424A000810
      1000735A63007B6363006352520042393900523942005242420052424A005239
      4200A57B7B00635A630031393100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029292900181818004A4A4A00313131004A4A4A00393939000000
      00009C9C9C009494940000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000F7FF0000F7F70000F7FF0000F7
      F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7
      F70000F7F70000F7F70000F7FF0000F7F70000F7FF0000F7F70000F7FF0000F7
      F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7
      F70000F7F70000F7F70000F7FF0000F7F7000000000000000000000000000000
      000000000000000000000000000000000000392121005242420052424A00FFC6
      CE007B5A63005A4A5200634A4A005A424A004A3939006B525A0039313900EFA5
      A5008C6B6B0094737300634A5200292921000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0052525200313131007B7B7B0021212100737373006363
      63005A5A5A00636363000000000018181800F7F7F700F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000003110180042393900524A4A005A313900A57B
      7B007B636300947B7B004A4242004A3939005A424A005A4A52006B3939008C63
      6300734242008C6B6B00A57373008C637300636B630000000000000000000000
      0000000000000000000000000000000000002121210031313100313131003131
      310031313100313131003131310021212100F7F7F70000000000000000000000
      00000000000000000000EFEFEF00000000002121210021212100C6C6C6008C8C
      8C0039393900ADADAD0000000000181818000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000CED6005A292100210818007B52
      4200211018006B4A520000BDC60000FFFF0000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000FF
      FF0000BDC6005A3942006B4A5A0010D6D6000000000000000000000000000000
      00000000000000000000000000007B6B73005A4A4A00945A6300F7FFFF000000
      00000000000073636300CECECE00DEDEDE00D6D6D600947B8400000000000000
      00000000000063424200A5737300635252003939390000000000000000000000
      0000000000000000000000000000000000005252520000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000D6D6D60094949400BDBDBD00313131009494
      9400A5A5A500A5A5A50052525200B5B5B500393939006B6B6B00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000021ADA50031212900000808005A5A
      5A0018182100000800006B29290000FFFF000000000000F7F7000000000000F7
      F7000000000000F7F70000F7F70000F7F7000000000000F7F7000000000000F7
      F7000000000000F7F70000F7F70000F7F7000000000000F7F7000000000000FF
      FF004A212100393939001800000010949C000000000000000000000000000000
      00000000000000000000AD949400423939006352520000000000000000000000
      0000000000000000000000000000FFFFF7002121210000000000000000000000
      000000000000F7FFFF00845A5A00946B6B0084636B0000000000000000000000
      0000000000000000000000000000000000000000000021212100000000000000
      00000000000000000000212121000000000000000000FFFFFF00E7E7E7000000
      0000000000000000000000000000000000000000000000000000FFFFFF00ADAD
      AD00424242001010100073737300BDBDBD0029292900D6D6D6009C9C9C008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000008C8C003931290000000800847B
      730010182100101000003173840000FFFF0000F7F70000F7F70000F7FF0000F7
      F70000F7FF0000F7F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7
      F70000F7FF0000F7F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000FF
      FF0042293900394239001000000021B5AD000000000000000000000000000000
      000000000000000000002918180052424A006B4A4A0000000000000000000000
      0000DEDEDE0000000000291821000000000018212100EFE7E700525252002929
      29000000000000000000311818009C7373006B5A5A0063635A00000000000000
      000000000000000000000000000000000000A5A5A50010101000101010001010
      1000101010001010100018181800292929000000000008080800424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818180008080800DEDEDE000000000018181800424242001818
      1800080808000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000073FFFF000000000008100800847B
      730000080800101818006339390000FFFF0000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000FF
      FF0039212900424242000800000021B5B5000000000000000000000000000000
      000000000000AD9C9C006B525A006352520052525A0000000000EFF7F7003131
      39001818180042314A00B58C94006B5A5A0042292900946B73006B4A52004239
      42002129210000000000000000009C7373009C6B6B00635A6300000000000000
      000000000000000000000000000000000000101010009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C00ADADAD00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039393900CECECE00BDBDBD00000000004A4A
      4A0029292900000000000000000000000000C6DEC60000000000521829005218
      2900523929005218290052182900521829005239290052182900FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000042FFFF003121180000000000A59C
      8C0000000000000000002100000000FFFF0000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000FF
      FF00180008006B6352000000000031BDB5000000000000000000000000000000
      0000000000005A4242004A3942005A424200E7E7E700180808008C636B00846B
      730031313900002118004A4242008C6B7300634A4A003921210052424A004A39
      4200000000000000000000000000633131008C6B6B005A425200C6C6C6000000
      000000000000000000000000000000000000101010009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C00ADADAD00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039393900CECECE00BDBDBD00000000004A4A
      4A0029292900000000000000000000000000ADBDD60000000000ADBDD600ADBD
      AD00ADBDD600AD9CAD00C6DEC600AD9CAD00AD9CD600FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000FFFF004221210000000000B59C
      9C000000000000000000634A3900108C940000FFFF0000F7F70000F7F70000F7
      F7000000000000F7F7000000000000F7F7000000000000F7F70000F7F70000F7
      F7000000000000F7F70000F7F70000F7F7000000000000F7F70000FFFF0021E7
      EF00000000008C7B73000000000008949C000000000000000000000000000000
      00000000000063424200393131005A4A4A00BDBDBD003931390052424A00CE9C
      A50084636B00A58484009C736B000000000042423900DEDEDE00000000008463
      730000000000000000000000000039181800946B730039313900CECECE000000
      00000000000000000000000000000000000029292900C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600CECECE00393939000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5B5B5003939
      3900A5A5A500000000000000000000000000C6DEC60000000000ADBDAD00AD9C
      AD00C6DEC600AD9CAD00ADBDAD00ADBDAD00FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000000000FFFF00007B7B00000000005252
      4A000810100008080800847B84003910100000FFFF0000F7F70000F7FF0000F7
      F70000F7F70000F7F70000F7FF0000F7F70000F7FF0000F7F70000F7FF0000F7
      F70000F7F70000F7F70000F7FF0000F7F70000F7FF0000F7F70000FFFF0021AD
      B50000000000BDA59C000000000052FFFF000000000000000000000000000000
      000000000000845A5A003131310052394200424A4A0000000000000000000000
      0000524A4A0039424200000000004A313100737B7B00000000005A5A5A006B4A
      5200000000000000000000000000735A5A005A424A004A313900000000000000
      0000000000000000000000000000000000001010100029292900181818001010
      1000101010001818180021212100101010009C9C9C0000000000313131000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F70000000000000000000000000000000000000000000000000000000000F7F7
      F70000000000000000000000000000000000ADBDD60000000000ADBDAD00AD9C
      AD00ADBDAD00C6DEC600AD9CAD00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000000000FFFF005ACECE00000000003131
      31004A42420000080800212118002918100021ADB50000FFFF000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F70000FFFF004231
      4200101008007B6B6B000000000000FFFF000000000000000000000000000000
      000000000000A59C940063525A005A4242003942420000000000000000000000
      00002110180052525A00000000004A394200636B6B0000000000847B7B005A42
      4A00F7F7F70000000000000000007B636B0042393900635A5A00000000000000
      000000000000000000000000000000000000FFFFFF00000000004A4A4A006363
      6300636363004242420010101000C6C6C6008C8C8C00DEDEDE006B6B6B009494
      9400BDBDBD007B7B7B000000000000000000F7F7F700FFFFFF00000000000000
      00005A5A5A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6DEC60000000000ADBDAD00C6DE
      C600AD9CAD0084848400FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF00000000000000000000000000000000F7FF0000FFFF00080000000808
      00006B5263000810080010081000847B73000000000021FFFF0000F7FF0000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF000000000052EFF7000000
      0000846B7300000000004A73730000FFFF000000000000000000000000000000
      00000000000000000000B5736B00634A5200635A630000000000000000000000
      00003121210052394200737B7B00004AD6006B73630031313100CED6D6007B63
      6300ADADA50000000000E7E7EF00635252008C737300B5C6BD00000000000000
      00000000000000000000000000000000000000000000BDBDBD00EFEFEF000000
      00000000000063636300101010007B7B7B00ADADAD007B7B7B005A5A5A006363
      63000000000073737300525252005A5A5A003939390042424200D6D6D6000808
      080000000000E7E7E70000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADBDD60000000000AD9CAD00ADBD
      AD00ADBDD600FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000FFFF004A7373000808
      0800424A39001018180010101000524A4200293121002910180039FFFF0000FF
      FF000000000000F7F70000F7F70000F7F7000000000000F7F7000000000000F7
      F7000000000000F7F70000F7F70000F7F7000000000029FFFF00392121000000
      0000B5A58C000000000000CEC60000FFFF000000000000000000000000000000
      000000000000000000008C4A42006B5252005239390000000000000000000000
      0000735A5A0084636300212121004A39210010181800636B7300847B7B008C63
      6B006B6B6B00000000008C8C8C005A4A4A008C6B6B00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800000000004242420021212100A5A5A500BDBDBD009494940010101000EFEF
      EF00D6D6D600A5A5A5000000000018181800EFEFEF0010101000B5B5B500D6D6
      D60073737300080808000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000C6DEC60000000000ADBDAD00F7CE
      A500FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      00000000000000000000000000000000000000F7F7000000000010E7EF001000
      0000080808005A524A00080810000000000094847B0000080000522931006BF7
      FF0000FFFF0000F7F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7
      F70000F7FF0000F7F70000F7FF0000F7F70031FFFF00C6A5B50000000000A58C
      7B00100810000021210000FFFF0000F7F7000000000000000000000000000000
      000000000000000000008484840042313100735A52005A525200000000000000
      0000735A5A00846B73003939390008212100846B6B00000000009CA59C001818
      18005A635A0000000000291018005242420073525A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A500636363004A4A4A0008080800D6D6D600ADADAD0031313100BDBDBD001010
      10005A5A5A006363630008080800636363000000000000000000BDBDBD001818
      180021212100D6D6D60000000000525252001010100000000000000000000000
      000000000000000000000000000000000000ADBDD60000000000ADBDAD00ADBD
      AD00ADBDAD00FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      00000000000000000000000000000000000000F7F70000F7F70000FFFF00214A
      4A00080800004A423900393939001010100000000000AD8C8400292118001800
      0000B5A5AD0094FFFF0000FFFF0000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7FF0031F7F700D6FFFF00C6B5BD00000000004A393100847B
      73000000000000CED60000FFFF0000F7F7000000000000000000000000000000
      00000000000000000000CEDEE700423939007352520031423900000000008494
      8C005A52520052424A00524242006B4A5200B57B7B00BD8C9400422129003121
      2100CEB5BD00F7F7FF00523939006B5252004231310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE004242420000000000BDBDBD008C8C8C003131310000000000CECE
      CE00737373000000000000000000CECECE008484840052525200525252000000
      0000000000005252520073737300BDBDBD000808080000000000000000000000
      000000000000000000000000000000000000C6DEC60000000000525A5200525A
      5200525A520000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F7FF0000F7F70000F7F70000FF
      FF0031001000000808006B5A5A003131290010101800000800008C7B73002931
      290031212100180808008C7B8C00FFF7FF0073FFFF008CFFFF0084FFFF007BFF
      FF007BFFFF00FFFFFF0063A5AD00211008000000000029212100BDA59C000000
      00004A6B730000FFFF0000F7F70000F7F7000000000000000000000000000000
      0000000000000000000000000000A57B7B003931310063526300947B7B006B63
      5A00000000000000000042424200102921005A525A0008211800081008000000
      00000000000018181800634A5200846B73006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE004242420000000000BDBDBD008C8C8C003131310000000000CECE
      CE00737373000000000000000000CECECE008484840052525200525252000000
      0000000000005252520073737300BDBDBD000808080000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      000000000000000000000000000000000000FF000000FF00000000000000FF00
      000000000000FF00000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F7F70000F7F70000FF
      FF0000D6D6000800000008101000736363003939310000080800000808004239
      310084736B004A393100635A4A00211818002908000021293900524252005A39
      3100733921002900000010080800000000004A393900B5A59C00000000000018
      210000FFFF0000F7F7000000000000F7F7000000000000000000000000000000
      00000000000000000000000000008C4A4A0021212100BD949400422931005252
      520010101800523942005A424A005A424A00634A52008C6B6B00101818009C9C
      9C00211821006B525A005A4A5200100000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C001818180039393900000000000000000000000000CECE
      CE00DEDEDE00BDBDBD0094949400000000007B7B7B00A5A5A500737373002929
      2900000000000000000000000000292929000000000000000000000000000000
      0000000000000000000000000000000000008484840052392900ADBDD600A5A5
      A50000000000C6DEC600FFBDD600C6DEC600C6DEC60000000000A5A5A500ADBD
      D600FFCECE008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F7FF0000F7F70000F7FF0000F7
      F70000FFFF0000D6D6000800000000080800635252006B635A00000010000008
      08000008100018180800423139005242420084736B00182118007B6B63003931
      3100001021000000000000000000B59C8C00947B7300000000000018210000FF
      FF0000F7F70000F7F70000F7FF0000F7F7000000000000000000000000000000
      0000000000000000000000000000EFEFEF00AD7373005242420084636B008463
      6B00734A52006B52520052394200523942005A525200737373007B6363005A42
      4A00AD848400634A52006B525A00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300737373000000
      0000B5B5B500C6C6C600CECECE0000000000000000006B6B6B00848484008C8C
      8C009C9C9C004A4A4A005A5A5A00080808000000000000000000000000000000
      0000000000000000000000000000000000008484840052182900C6DEC600A5A5
      A50000000000C6DEC600ADBDD600FFBDD600C6DEC60000000000A5A5A500C6DE
      C600ADBDD6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F7F70000F7F7000000000000F7
      F70000F7F70000FFFF0008E7DE005221210000000800212121009C8473006B63
      6300291818000008080000080800000808000000000000000800000000000000
      000010080800A5948400E7C6AD0018182100000000005A737B0000FFFF0000F7
      F70000F7F70000F7F7000000000000F7F7000000000000000000000000000000
      00000000000000000000000000000000000000000000422931004A4242003939
      3900634A52006352520052424200524A4A0052424A005252520084636B003939
      39004239420029181800FFF7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE006363630039393900393939009C9C9C006B6B6B0084848400737373002929
      29003939390084848400C6C6C600737373005A5A5A006B6B6B007B7B7B000000
      0000000000000000000000000000000000008484840000182900A5A5A5008484
      840000000000A5A5A500A5A5A500A5A5A500A5A5A5000000000084848400A5A5
      A500A5A5A5008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000FFFF0000FFFF000073730008000000001029002929
      21007B6B5A0094847300947B73009473630073636300A5948C00BD9C9400CEB5
      A500AD948C0021182100000008000031310000CECE0000FFFF0000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F7000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C006B52
      5A009C7B7B007B6363005A4A4A004A3942008C7373008C7373005A5252005242
      42006B5A63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600B5B5B50000000000C6C6C600D6D6D600ADADAD007B7B
      7B003939390018181800292929008C8C8C00949494006B6B6B0094949400D6D6
      D600000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F7F7000000000000F7
      F7000000000000F7F70000F7F70000F7F70000FFFF0042FFFF00007B73000800
      0800000000000008100018182100001018002118180008081000000008000000
      000000000000002131005AC6C60000FFFF0000FFFF0000F7F7000000000000F7
      F7000000000000F7F70000F7F70000F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000031292900C68C840084636B0031313100BD949400634A4A00735A63006B63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840042424200D6D6D600636363004242
      4200C6C6C600DEDEDE00CECECE00000000006B6B6B0084848400A5A5A5003131
      310000000000CECECE000000000000000000000000000000000084848400ADBD
      AD00AD9CAD00AD9CAD00ADBDAD00AD9CAD00ADBDAD00AD9CAD00ADBDAD00AD9C
      AD00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F7F70000F7F70000F7FF0000F7
      F70000F7FF0000F7F70000F7FF0000F7F70000F7F7000000000000FFFF0000FF
      FF0039FFFF000073730000737B0052736B0000737B00007B7300007373004AB5
      AD0000FFFF0000FFFF0000FFFF0000F7F70000F7F70000F7F70000F7FF0000F7
      F70000F7FF0000F7F70000F7FF0000F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A424A00000000001821210052424A0000000000BD8C9400182121002929
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF008484840031313100000000000000
      000000000000D6D6D600C6C6C60094949400000000003939390031313100C6C6
      C60094949400000000006363630000000000000000000000000084848400AD9C
      AD00ADBDAD00ADBDAD00ADBDAD00AD9CAD00ADBDAD00AD9CAD00ADBDAD00AD9C
      AD00525A52000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A00212121004A4242004A394200845A630039292900213129003121
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600EFEFEF001818
      18001010100094949400ADADAD001818180029292900EFEFEF007B7B7B000808
      0800A5A5A500D6D6D600E7E7E70021212100000000000000000084848400ADBD
      AD00ADBDAD00ADBDAD00AD9CAD00ADBDAD00ADBDAD00AD9CAD00ADBDAD00AD9C
      AD00525A52000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042424200212929007B73730010181800A5ADAD00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600EFEFEF001818
      18001010100094949400ADADAD001818180029292900EFEFEF007B7B7B000808
      0800A5A5A500D6D6D600E7E7E70021212100000000000000000084848400AD9C
      AD00AD9CAD00AD9CAD00ADBDAD00AD9CAD00AD9CAD00ADBDAD00AD9CAD00AD9C
      AD00525A52000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F7F70000F7F70000F7
      F7000000000000F7F70000F7F70000F7F7000000000000F7F70000F7F70000F7
      F7000000000000F7F7000000000000F7F7000000000000F7F70000F7F70000F7
      F7000000000000F7F70000F7F70000F7F7000000000000F7F70000F7F70000F7
      F7000000000000F7F7000000000000F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000424242003131310063636300313131007B8484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000525252003939390000000000A5A5A500000000007B7B7B00B5B5
      B5008484840052525200424242004A4A4A00000000000000000084848400AD9C
      AD00AD9CAD00AD9CAD00AD9CAD00AD9CAD00AD9CAD00AD9CAD00AD9CAD00AD9C
      AD00525A52000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F7FF0000F7F70000F7FF0000F7
      F70000F7F70000F7F70000F7FF0000F7F70000F7FF0000F7F70000F7FF0000F7
      F70000F7F70000F7F70000F7FF0000F7F70000F7FF0000F7F70000F7FF0000F7
      F70000F7F70000F7F70000F7FF0000F7F70000F7FF0000F7F70000F7FF0000F7
      F70000F7F70000F7F70000F7FF0000F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000524A4A00393939005A5A5A00293131008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF004A4A
      4A007B7B7B000000000029292900D6D6D600000000000000000084848400ADBD
      AD00ADBDAD00ADBDAD00ADBDAD00ADBDAD00ADBDAD00ADBDAD00ADBDAD00ADBD
      AD00525A52000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F70000F7F70000F7F7000000000000F7
      F70000F7F70000F7F7000000000000F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042181800000000004229290000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7004242420029292900000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F70000F7FF0000F7F70000F7F70000F7
      F70000F7FF0000F7F70000F7F70000F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5AD9400D6C6B500DED6C600E7D6CE00E7DED600E7DED600E7DE
      CE00DECEC600CEBDAD00636B7300000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00212121005252
      5200C6BDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6B5B500525252002929290052524A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5A59400CEC6B500DED6C600DED6CE00E7DED600E7D6CE00E7DE
      CE00DED6C600C6B5A5006B737300000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EFEF00EFDEDE00EFDE
      DE00EFE7DE00F7EFE700F7E7E700F7F7F700EFE7DE00F7EFE700F7EFE700EFCE
      CE00EFE7E700F7EFEF00F7F7EF00EFDEDE00E7D6CE0052524A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007B0000007B000000730000087B
      0800B5BDB5009CB59C009CB59C009CB59C009CB59C00C6C6C6006BA56B000084
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADA58C00CEC6AD00DECEBD00E7D6CE00E7DECE00E7DECE00E7DE
      CE00DECEBD00C6B5A500737B8400000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFCECE00FFEFEF00E7C6
      C600C68C9400BD848400AD7373009C636300A56B6B00AD737300AD6B7300AD6B
      6B00A56B6B00AD737B00AD737B00F7DEDE00F7DEDE006B6B6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000840000007B0000006B0000006B
      0000E7CEE700C6C6C600CEC6CE00CEC6CE00CEC6CE00FFD6FF007BAD7B00007B
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD9C8400C6B5A500DED6BD00DED6C600E7DECE00E7D6CE00E7D6
      C600E7D6C600CEB5AD00AD949C00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7DE00D69C
      94004A3939001821210018101800100810001810180021182100292129002921
      290018182100393139007B525A00D6A5A500FFEFEF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007B0000D6C6D600D6C6D600B5BD
      B500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600ADBDAD00D6C6
      D600006B0000007B000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7CEAD00CEB59C00EFDECE00DED6C600E7D6CE00EFE7D600E7DECE00B5AD
      9C00DED6C600BDAD9C0000000000424242000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CE
      CE00423131005A4A52005A4A4A005A4A4A00524A4A005A4A520063525A00634A
      520052424A00635252005A4A520094949400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007B0000C6C6C600E7CEE700C6C6
      C600BDBDBD00C6BDC600C6C6C600C6C6C600BDBDBD00C6C6C600C6C6C600BDBD
      BD00006B0000007B000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      D6000000000031312100EFDECE00C6B5A500BDAD9C00BDAD9C00BDB59C00AD9C
      9400A5948400A594840000000000EFCEB500F7F7F70000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00523942006B52
      5A007B5A63004A394200846B7300846B6B005A4A520052424200312931004231
      42004A39420063424A00BD848400423139007B73840029212100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008400004A944A00D6CED600BDBD
      BD00DECEDE00BDBDBD00C6C6C600BDC6BD00BDBDBD00C6BDC600D6C6D600007B
      0000007B00000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C84
      630094846B00FFF7E700AD9C8C00BDAD9C00BDB59C00C6BDA500C6B5A500BDB5
      A500E7D6BD00ADA59400A59C84008C8473003131390000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A4242004A3942005242
      4A008C6B6B0018212100735A5A005242420052424A005A4A4A004A3939005A42
      4A0039313900AD7B7B009C737B0084636B00846B73007352630042423900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000840000007B0000007B00000084
      0000106B1000EFD6EF00BDC6BD00BDBDBD00D6CED600086B0800007B0000007B
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063523900EFDE
      C600F7EFDE00DECEB500DED6BD00EFDECE00EFE7CE00FFEFDE00FFFFF700EFE7
      D600EFE7D600EFDEC600EFE7CE00E7D6BD00E7C6B50042424A00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0063424A004231390052424A00524A
      4A0073424A00734A4A0052424A006B525A00524A4A005A4A4A005A4A4A005239
      4A008C5A5A005A2929007B5252005A424A00946B73008C636B008C737B00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008400000084000000840000007B
      000073A57300DEC6DE00C6C6C600BDBDBD00C6C6C60052945200007300000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6AD9400BDB5
      A500BDB5AD00F7EFD60000000000FFF7E700DECEBD002118180018000000DED6
      BD00DED6CE00E7D6C600CEC6AD00C6BDA500D6CEBD004A525A00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6ADB5006B5A5A005A424A00846B6B00FFFF
      FF00FFFFFF00FFFFFF00C6B5BD00AD949400EFF7F700F7F7F700FFFFFF007352
      5A00FFFFFF00FFFFFF00FFFFFF006B4242005A5252009C7373005A5252005252
      5200FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000073
      0000C6C6C600CEC6CE00C6C6C600BDC6BD00BDBDBD0094AD9400007300000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEB59C00BDAD
      9C00B5AD9C00CEC6AD008C847300F7E7CE00FFEFE70000000000F7F7EF001818
      1000DED6C600E7D6C600D6BDA500CEBDAD00DECEBD004A4A5200000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00523942004A4242005A4A4A00A5A5A500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A524A00FFF7F7007B847B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A5009C73730084636300735A
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000073
      0000C6C6C600CEC6CE00C6C6C600BDC6BD00BDBDBD0094AD9400007300000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEBDA500B5AD
      9400ADA59400EFE7CE009C8C7B00CEC6BD00D6CEBD00CEC6BD00AD9C8C000000
      0000DEE7DE00E7DEC600C6BDA500D6C6B500E7DECE0052525A00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7D6D6006352520052424A006B4A4A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008C8C8C00634A4A0031292900FFEFEF00424A4A007B84
      7B0073636B005A5A5A00FFFFFF00FFFFFF00FFFFFF008C6363009C737300634A
      4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000073
      0000C6C6C600CEC6CE00C6C6C600BDC6BD00BDBDBD0094AD9400007300000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6C6AD00B5AD
      9400AD9C8C00D6C6AD0021292900EFE7CE00DEC6B500CEC6BD00BDBDB5002921
      0000FFFFF700E7DEC600CEBDA500DECEBD00EFE7DE005A5A5A00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00210000005242420052424A0039394200FFFFFF00FFFF
      FF00848484005A424A00524252008C6B73006B5A5A0063525200180810004A39
      390052424A0052424A0029292900FFFFFF00FFFFFF0042394200A5737300845A
      5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000073
      0000D6C6D600CEC6CE00C6C6C600C6C6C600BDBDBD00A5B5A500007300000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6C6AD00B5AD
      9400AD9C8C00FFEFCE008C847300FFFFEF00000000008C847B0084735A000000
      0000DED6C600E7DEC600C6B59C00DED6C600EFE7DE006B636B00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B636B0052424A00634A4200FFFFFF007B737300946B
      7300634A52007B636300001818005A4A4A0052424A0094737300212929001010
      1800524242004A394200FFF7F700FFFFFF00FFFFFF00FFFFFF009C7373007352
      5200FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000006B0000DECEDE00BDBDBD00CEC6CE00CEC6CE00007B0000007B0000007B
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEC6A500ADA5
      9C009C948400D6C6AD00B5B5BD00E7D6C60000000000948C7B00A59C9C000000
      0000DED6C600EFDECE00C6B59C00DED6C600EFE7DE007B737300000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00947B7B0052424A005A424200B5ADAD004A3131004A42
      420018181800635252004A394200B5B5B500AD7B84002929290094949400FFFF
      FF00292129005A4A5200FFFFFF00FFFFFF00FFFFFF00FFFFFF00845A63006B4A
      4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000005A0000639C6300B5BDB500BDBDBD00CEC6CE00218C2100B5C6B500218C
      2100006B0000007B0000007B0000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6C6AD00CEC6
      B5009C8C7300C6BDA50084736300DECEBD0000000000DEDED6008C8473000000
      0000DED6BD00EFDECE00CEBDAD00E7D6C600E7E7D600847B7300000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BD8C8C00634A52005242420042424200FFFFFF00FFFF
      FF00FFFFFF007B737B006B525200A59C9C00A5A5A50052424A00A5ADA500FFFF
      FF0073737300634A5200F7F7F700FFFFFF00FFFFFF00FFFFFF007B6363005239
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008400000084000000840000007B
      000042944200F7D6F700BDBDBD00BDBDBD00BDBDBD00D6C6D600B5BDB500E7CE
      E700A5B5A500006B000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEBDAD00ADA5
      8400848473004A42390010100800D6CEB50000000000FFF7EF00E7DED6000000
      0000DED6C600E7E7D600C6B59400E7D6C600DEDED600847B6B00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF005A2929005A4242005A4A4A005A636300FFFFFF00FFFF
      FF00FFFFFF00CED6DE00635252006B6B6B00EFE7E7005A4A5200949C9400FFFF
      FF009C9C9C006B525200ADADAD00FFFFFF00FFFFFF00D6D6DE006B525A00634A
      4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000007B00000073
      0000FFDEFF008CA58C006B946B00C6C6C600C6C6C600BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00D6C6D6009CAD9C00398C3900007B0000007B0000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7D6BD00ADA5
      8C009C8C7300C6BDA500E7DEC600EFDECE00FFFFF700736B5200947B6B00CEC6
      AD00DED6CE00EFE7D600C6B59C00F7EFDE00FFFFFF008C847300000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B5ADAD0052424A00634A52004A424A00F7F7FF00FFFF
      FF00FFFFFF00EFEFEF004A4A4A006B736B004A6BAD0094B5EF00635A42004A4A
      4A00CED6D600735A630052524A00FFFFFF00FFFFFF0039292900634A52007352
      5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000007B0000007B
      00004A8C4A000073000000000000C6C6C600DECEDE00C6C6C600C6C6C600BDBD
      BD00BDBDBD00BDBDBD00D6C6D600FFD6FF00006B0000007B0000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000636B73005252
      4200947B6300B5AD8400D6C6A500D6C6A500D6C6A500CEBD9C00F7E7C600CEBD
      9C00D6C6A500CEBD9C00BD9C8400947B6B002129290000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF008C6B6B005A4A4A0052423900ADADAD00FFFF
      FF00FFFFFF00FFFFFF0042313900393131002931310042424200393939008484
      84007B736B00735A5A004A4A4200FFFFFF00FFFFFF00523942005A4A52006342
      4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      00000084000000840000107B1000FFD6FF00C6C6C600BDBDBD00C6C6C600C6C6
      C600C6C6C600C6C6C600C6BDC600BDBDBD00D6C6D600D6C6D60000520000007B
      0000007B00000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000821
      2900182110002931180039312100423929004A4218005A4A21006B5229004239
      290039391800393921001821080018210000F7F7F70000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A56B6300524242006B52520052524A00FFFF
      FF00FFFFFF00FFFFFF005A424200292929005A424200293131009C7B7B001818
      2100636B6B0052394200737B7B00FFFFFF00FFFFFF00634A5200524242004A31
      3900FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      00000084000000840000007300005A9C5A00FFDEFF00BDBDBD00BDBDBD00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00BDBDBD006BA5
      6B0000630000007B000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001829
      310010290800212908002929100029291800313118004A392900424221003931
      180029310800292918002129180031210000F7F7F70000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00845252005A4A4A0073525A00635A5A00FFFF
      FF0073736B005A5A52006B5252005A4A4A005A424A00735252007B5A5A009C7B
      7B00392929002118180063424200FFFFFF009C9CA500634A5200634A5200635A
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000007B0000006B0000A5B5A500DECEDE00BDBD
      BD00BDBDBD00C6C6C600C6C6C600C6C6C600C6C6C600BDBDBD00BDBDBD00B5BD
      B500E7CEE7004A9C4A00007B0000007B00000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003142
      520018211000212108002129080029211800312918004A422900524218003131
      100029291000212908002129100021290000FFFFFF0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A59CA500BD8484005242420039293100636B
      6300B5B5BD00D6D6D600B5BDC60018292900424242003939390042424A002929
      310052525200FFFFFF00FFFFFF00DEE7E7005A424200634A4A009C848400CED6
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      00000084000000840000008400000084000000840000007B0000007300006BA5
      6B00FFDEFF00C6BDC600BDBDBD00BDBDBD00C6C6C600C6C6C600C6C6C600C6C6
      C600BDC6BD00C6BDC600D6C6D6005A9C5A0000730000007B0000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000525A
      73002121000018290000292908003131180029291000524229004A4221004231
      210029212100182908002129100021310000FFFFFF0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C5A5A004A394200947373005A39
      4A0063635A0073636300393131004A3942004A3942005A424A004A3942006B52
      5A00423942006B6B6300394242005A424A006B525A004239390021101800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000007B0000006B
      000000730000EFCEEF00C6BDC600BDBDBD00BDBDBD00C6C6C600C6C6C600C6C6
      C600C6C6C600BDBDBD00B5BDB500EFD6EF00006B0000007B0000007300000084
      0000008400000084000000840000008400000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00292910003121080021210000211810001029080000080000000000001818
      1000181810001821000010210000182921000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A57B84005A4A4A007B5A
      63004A3939007B5A5A00634A52005A4A52004A3942005A424A00735A63008473
      7B0084636B00523942006B525200312931005A4A4A00846B7300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000007B000000840000007B000073A57300D6C6D600C6BDC600C6C6C600C6C6
      C600C6C6C600BDBDBD00C6BDC600298C2900005A000073A57300ADB5AD000073
      0000007B00000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000183100001021000018290800102100002929100021310000212908001829
      00002129080021290000182118009C9CA5000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000003939
      39004239390052424A00182121006352520052424A005A4A4A00735A63006B5A
      63007B636300423939003131310084636B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000007B0000007B00000073000000730000BDBDBD00D6C6D600B5BDB500BDBD
      BD00C6C6C600BDBDBD00D6C6D6001873180000630000E7CEE700DEC6DE00BDBD
      BD00007300000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818000018180000182900002121080021211000291808002129
      1000212908002121100031290000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C7B8400424242008C636B0073525A0052424A006B5A5A008C6B6B006B5A
      630063525200524A4A008C8C9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      000000840000008400000084000000840000007B0000007B0000DECEDE00EFCE
      EF00D6C6D600CEC6CE00DEC6DE00005A0000A5B5A500E7CEE700BDC6BD00BDBD
      BD00A5BDA500006B0000007B0000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000101800002121080018210000181810001821080018290000BD9C
      6300102908001829080031293100FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00948C8C00635252008C6B6B006B5252005A4A4A00947373005242
      4A0052424200ADA5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      00000084000000840000008400000084000000840000007B0000005A0000319C
      3100A5B5A500D6C6D600DECEDE00006B0000EFD6EF00C6C6C600BDC6BD00BDBD
      BD00FFDEFF007BA57B0000630000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000393918000000000000000000102100000808000008100800A58C
      5200212900001821000039392100FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00080810002939390084636300313131003131310029313100C694
      9C0042393900424A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000007B0000319431003184310094AD9400EFCEEF00CEC6CE00C6C6C600C6C6
      C600BDBDBD00CEC6CE00CEC6CE00007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000393118000010000008080000212908003942210052522900947B
      5A00312910001821080031312900FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0039292900424242006B525A004A394200635252005A4A5200735A
      5A00313939004A424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      000000840000007B0000007B0000218421007BA57B0073A57300BDBDBD00D6C6
      D600D6C6D600D6C6D600FFDEFF00006B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003939180000000000000800002129000042391800393918009473
      5200312910001021000029211000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6CED600B5A5A5005252520039394200313131005A5A5A002921
      21009CA59C00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      000000840000008400000084000000840000007B0000007B0000007B0000007B
      0000007300000073000000730000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFF7FF00393910000000000008100000212108003939180039391000CE9C
      7B00293108002121100042393100000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFD6D60052525200524A4A005A424A00736363002129
      29007B847B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001029000010180800182908001021080039391800423110002929
      0000182108000829000084848C00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00524A52004A424200423942005A5A5A002129
      2900848C8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001008000000000000000000000000000029180000312108000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00521818004A101000000000005A3939000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424A4A00524A52009C948C00BDADA500CEBDB500ADA5A5006B5A63002931
      3100DEDEE7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000848400000000FF000000FF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF000000FF0084000000840000008400
      0000840000000000000000000000000000000000000084000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      B500BDAD9C00DECEBD00E7DECE00E7DEDE00EFE7DE00E7DED600DED6C600CEBD
      AD00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0084840000848400008484
      000084840000C6C6C600C6C6C60084840000C6C6C600C6C6C600C6C6C6008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000008400000000000084840000848400008484
      00008484000084840000848400000000FF000000FF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF000000FF00FF000000840000008400
      0000840000000000000000000000000000000000000084000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      C600B5AD9C00DECEBD00E7DECE00E7DED600E7E7D600E7D6CE00DECEC600CEB5
      A500C6C6BD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0084840000848400000084
      8400008484008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      000084840000C6C6C600848400000000FF000000FF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000000000000000000000000000000000000C6C6C600000000000000
      00000000000084000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000FF000000FF0000000000FF000000FF00FF000000FF0000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6CE
      D600BDAD9C00D6CEBD00E7DED600E7DED600E7DED600E7DECE00DECEBD00C6B5
      AD00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0084840000848400008484
      0000848400008484000084840000848400008484000084840000848400008484
      000084840000848400008484000084840000FFFF000000000000000000008484
      0000848400008484000084840000848400008484000084840000008400008484
      00008484000000000000848400000000FF000000FF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000840000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      00008400000084000000840000000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEE7
      EF00B5A59C00D6C6B500E7D6CE00E7DECE00E7DED600E7D6CE00DECEBD00C6B5
      9C00CECECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0084840000848400008484
      000084840000848400008484000084840000FFFF000000000000848400000000
      000000000000FFFF00000000000000000000000000000000000000000000FFFF
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000848400000000FF000000FF00FF000000FF0000000000
      000000000000C6C6C60000000000C6C6C6000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000FF000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF0000000000000000000000840000000000000000000000000000000000
      00008400000084000000840000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000084000000840000000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CED6
      DE00BDAD9C00E7E7D600DED6C600E7D6CE00E7DED600E7DEC600DECEBD00C6B5
      A500292931000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0084840000848400008484
      0000848400008484000084840000848400000000000000000000FFFF00000000
      0000FFFF0000000000000000000000000000000000000000000000000000FFFF
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000848400000000FF000000FF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000FF00000000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000C6C6C60000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000084000000840000000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      F70052523900EFE7DE00E7D6C600E7DECE00E7E7D600B5AD9C00E7DECE00B59C
      9400FFFFE700DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0084840000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      0000000000008484000084840000848400008484000084840000848400008484
      00008484000084840000848400000000FF000000FF00FF000000FF0000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C600000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF0000000000000000000000840000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      00000000000084000000840000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B736B00EFDE
      D600FFFFE700CECEBD00BDAD9C00BDAD9C00BDB5A500ADA594009C8C7B00A594
      8400FFF7EF003139420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0084840000848400008484
      0000848400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000848400000000FF000000FF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000C6C6C60000000000FF000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000840000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000C6C6C600C6C6
      C6000000000084000000840000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00080800009C94
      7B00A59C8C00B5AD9400B5AD9C00C6BDA500C6B5A500BDADA500DECEB500AD9C
      8C00B5A58C00CED6C6009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0084840000848400008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000848400000000FF000000FF00FF000000FF000000FF00
      0000FF0000000000000000000000FF0000000000000000000000000000000000
      0000FF00000000000000000000000000000000000000FF000000000000000000
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000084000000000000000000
      0000C6C6C60000000000C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6
      C6000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C6000000000084000000840000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000E7D6B500FFF7DE00A59C
      8400D6C6B500DECEBD00DED6C600E7D6CE0000000000DED6C600DED6C600C6BD
      A500F7EFE700F7F7DE00FFE7B500FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000FF008484000084840000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000008400
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000848400000000FF000000FF00FF000000FF000000FF00
      0000FF0000000000000000000000FF0000000000000000000000000000000000
      0000FF00000000000000000000000000000000000000FF000000000000000000
      0000FF000000FF0000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000FF0000000000000000000000C6C6
      C60000000000C6C6C60000000000C6C6C60000000000C6C6C600000000000000
      00000000000000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
      00008400000084000000840000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000CEBDAD00FFEFD600AD9C
      7B00B5AD9400FFF7D600DED6C60000000000E7DEC600EFDECE00E7DEC600D6C6
      AD00FFEFE700EFE7D600CEC6AD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000FF0084840000848400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400008484000084840000848400008484000084840000848400008484
      00008484000084840000848400000000FF000000FF00FF000000FF000000FF00
      0000FF0000000000000000000000FF0000000000000000000000000000000000
      0000FF00000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C60000000000C6C6C60000000000000000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6C6000000
      00008400000084000000840000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000D6C6B500FFF7E700AD9C
      8400F7EFD60039211800FFFFEF00F7EFE700EFE7D60000000000E7D6CE00D6C6
      AD00F7F7E700E7DECE00CEC6B500F7EFF7000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000FF00000000000000000000000084840000000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF0000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600000000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000D6C6AD00FFFFEF00A59C
      8400736B5A004231310000000000FFFFFF00736B4A008C8C7B007B7B6B00DEC6
      B500EFE7D600EFDEC600CEBDB500E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000FFFF00000000
      00000000000000000000C6C6C600C6C6C60000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000848400000000000000
      0000FF00000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000C6C6C60000000000C6C6C60000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000C6C6C60000000000C6C6C600000000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000CEBDAD00FFF7EF00AD9C
      8400FFEFDE00EFE7D600DED6C600000000007B73630010080000DED6C600D6C6
      AD00F7EFDE00E7DEC600C6BDB500DED6D6000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000FFFF0000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF0000000000FF00FF0000000000000000000000000000000000
      0000FF000000FF0000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF00000000000000C6C6C60000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000C6C6C6000000
      00000000000000000000C6C6C60000000000C6C6C60000000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000C6BDAD00FFF7EF00AD9C
      8400D6CEBD0063635A00DEDEC60000000000FFFFFF0000000000DED6C600DEC6
      AD00F7E7DE00D6CEBD00D6CEC600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000000000000000000000000000C6C6
      C600FFFF0000FFFF0000FFFF0000FFFF000000000000C6C6C600840000008400
      00000000000000000000C6C6C600FFFF0000FFFF0000FFFF0000FFFF00000000
      00000000000000000000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000848400000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000C6C6C6000000
      0000C6C6C600000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000084000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000C6BDAD00FFFFF700B5A5
      8C00D6C6B500DED6BD00DED6C60000000000EFDED60000000000DEDEBD00DECE
      B500EFEFE700CEC6B500DED6CE00C6BDBD000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF000000000000FFFF
      0000FFFF000000000000C6C6C600C6C6C600C6C6C600C6C6C60000848400C6C6
      C600FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000C6C6C6000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      000000000000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000FF000000FF000000FF00000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000C6C6C60000000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF0000000000000000000000C6C6C60000000000C6C6C60000000000C6C6
      C6000000000000000000C6C6C600000000000000000000000000C6C6C6000000
      00000000000000000000C6C6C600000000000000000084000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000C6BDAD0000000000B5AD
      8C0031312900BDADA500DED6C600000000000000000000000000DED6C600D6CE
      C600EFEFDE00CEC6AD00DED6DE00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000084000000840000008400C6C6C600C6C6
      C600FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      000000000000FF000000FF000000FF00000000000000C6C6C60000000000C6C6
      C600FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000000000000000000000000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF000000000000000000000000000000C6C6C60000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600000000008400000084000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000C6B59C0000000000AD9C
      8C00D6C6AD008C7B6300D6CEBD00000000002110000018100000DED6C600DED6
      B500E7E7DE00BDAD9C00D6BDB500B5BDBD000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF000000000000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF000000FF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000FF000000FF000000FF00000000000000C6C6C60000000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF0000000000000000000000C6C6C60000000000C6C6C600000000000000
      00000000000000000000C6C6C60000000000C6C6C60000000000000000000000
      000000000000C6C6C60000000000840000008400000084000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000052524200948C
      6B00ADA58400BDB594009C8C7B009C947B00CEBDA5009C948400A5A58C00A594
      7B00A5846B006B635A0018292900000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF000000000000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000C6C6C60000000000C6C6
      C600FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000000000000000000000000000FF00
      0000FF00000000000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001021
      10003139210031391000313921004A4A2100735A290042392900393910003931
      2900212110004A636B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000C6C6C600C6C6C600FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000FF000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000000000000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000008400000084000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001821
      0800212110002921180029291800523129005252210039311800213108002129
      10002121100052636B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000C6C6C600FFFF0000FFFF0000FFFF
      0000FFFF000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000000000000000000000000000FFFF00000000000000000000000000000000
      0000FFFF000000000000000000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000C6C6C60000000000C6C6
      C600FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000FF000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000084000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      18002131100029291800293110004A4229005A4A290031391000292910002929
      0800102908004A636B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000C6C6C600FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF000000000000FFFF
      000000000000000000000000000000000000000000000000000000000000FFFF
      00000000000000000000000000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000FF000000FF000000FF000000FF00000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000FF000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000000000000000000000000000C6C6C6000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C60000000000C6C6C6000000000000000000FF00
      0000FF0000000000000000000000000000000000000084000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002118
      1800182100002129000021291000424221006B42310031311800292118001829
      1000212118005A6B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000C6C6C60000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF00000000
      0000FFFF00000000000000000000000000000000000000000000FFFF00000000
      0000FFFF000000000000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF0000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000084000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000182939001821
      0800183100001021100018290800182100002129080029211000212118002929
      080021291800B5B5BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000FFFF0000C6C6
      C600FFFF0000C6C6C600C6C6C60000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      000000000000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      000000000000FF000000FF000000FF000000FF0000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000000000000000000000000000C6C6C6000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C6000000000000000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002121
      0000182100002129000029210800212900002929100018291000213108002129
      0800182900000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000000000000000FFFF
      000000000000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF0000000000FF00FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000810
      0000210808001821000010290800182910002129080018210000212110001829
      0000293131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000840000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002121000094845200181808001821000018210000A5845200212900002929
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF00000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000008400
      00008400000084000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002118
      0000182100009C8C6B002921080039421000524A3100947B4A00313108001029
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000008484000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      00008400000084000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001808
      000018181800948463002129000039391800424231009C7B5200212110001018
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000FFFF00000000
      0000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF00000084000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001821100094846300182900002939080029390800C6946B00212900001821
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FFFF0000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000FF000000FF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000840000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010210000182108001829000031310800524A210018290000183108002121
      0000A59C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001021000010181000393121009C84630018290800102100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000084840000FFFF000084840000FF
      FF000084840000FFFF0000848400008484000084840000848400000000000000
      0000000000000000000000FFFF0000FFFF000084840000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600840000008400000084000000FF000000840000008400000084000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000084840000FFFF000084840000FFFF000084840000FFFF000084
      8400008484000084840000848400008484000084840000848400000000000084
      84000000000000FFFF0000FFFF00008484000084840000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      8400008484000084840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      000000FFFF0000FFFF000000000000FFFF000084840000FFFF00008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084000000FF00000084000000FF00000084000000FF00000084000000FF00
      000084000000FF00000084000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000848400008484000084840000FFFF00C6C6C60000FFFF00C6C6C6000084
      8400C6C6C6000084840000848400008484000084840000000000008484000084
      840000FFFF0000FFFF0000FFFF0000FFFF000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000000000000848400008484000000000000848400008484000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000000848400840000008400000084000000840000008400
      000084000000840000008400000084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000848400008484000000000000FFFF000084840000FF
      FF000084840000FFFF0000FFFF00008484000084840000FFFF000084840000FF
      FF000084840000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000000000008484000084
      8400008484000000000000848400008484000084840000000000000000000084
      8400000000000000000000848400008484000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000084000000FF000000840000008400000084000000FF00
      0000840000000084840000848400FF00000084000000FF00000084000000FF00
      000084000000FF00000084000000FF00000084000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000FF000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000084840000FFFF000084840000FFFF00008484000084
      8400008484000084840000848400008484000000000000FFFF000084840000FF
      FF00008484000084840000FFFF000084840000FFFF0000FFFF0000FFFF000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000000000000000000084
      8400008484000084840000000000008484000084840000000000000000000000
      0000008400000084840000848400008484000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000FF000000008484000084840084000000FF00000084000000840000008400
      0000FF000000840000008400000084000000FF00000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000FF000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000084
      840000FFFF000084840000FFFF000084840000FFFF000084840000FFFF000084
      8400008484000084840000848400008484000000000000FFFF000084840000FF
      FF0000848400008484000084840000FFFF0000FFFF0000FFFF00008484000084
      84000084840000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000000000000000000000
      0000008484000084840000000000000000000084840000000000008484000084
      8400008484000084840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000008400000084000000FF00000084000000FF00000084000000FF00
      0000840000000084840000848400FF00000084000000FF00000084000000FF00
      000084000000FF00000084000000FF00000084000000FF000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C6000000FF000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000084840000FF
      FF00008484000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      840000FFFF000084840000000000000000000000000000000000000000000000
      0000008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000848400008484000084
      8400000000000000000000000000008484000084840000848400000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000840000008400000084000000840000008400000084000000FF0000008400
      000000848400008484000084840084000000FF000000FF000000FF0000008400
      0000FF00000084000000FF00000084000000FF0000008400000084000000C6C6
      C600C6C6C600C6C6C600C6C6C6000000FF000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400000000000000
      000000000000000000000000000000FFFF000084840000FFFF000084840000FF
      FF00008484000084840000848400008484000000000000FFFF000084840000FF
      FF0000848400008484000084840000FFFF0000FFFF000000000000FFFF000084
      84000084840000FFFF00000000000000000000000000C6C6C600000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000084000000848400008484000084840000848400000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000840000008400000084000000FF00000084000000FF000000840000000084
      8400008484000084840000848400FF00000084000000FF00000084000000FF00
      000084000000FF00000084000000FF00000084000000FF00000000848400C6C6
      C600C6C6C600C6C6C600C6C6C6000000FF000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C60000000000C6C6
      C600C6C6C600C6C6C600C6C6C60000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      000000FFFF000084840000FFFF000084840000FFFF000084840000FFFF000084
      840000FFFF000084840000848400008484000000000000FFFF000084840000FF
      FF0000848400008484000084840000FFFF0000FFFF0000FFFF0000FFFF000084
      840000FFFF000084840000000000000000000000000000000000000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000848400008484000084840000848400000000000084
      000000848400008484000084840000FFFF0000FFFF0000000000008484000000
      0000000000000000000000000000000000000000FF0000000000000000008400
      000084000000840000008400000084000000FF00000084000000840000000084
      840000848400008484000084840000848400FF000000FF000000FF000000FF00
      0000FF00000084000000FF000000FF000000FF00000084000000008484000084
      8400C6C6C600C6C6C600C6C6C6000000FF000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000848400008484000000000000FFFF00008484000084
      840000848400008484000084840000FFFF0000FFFF0000FFFF000084840000FF
      FF000084840000FFFF0000000000000000008400000000000000C6C6C6000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      84000084840000FFFF0000FFFF0000000000000000000084840000FFFF0000FF
      FF00000000000000000000000000000000000000FF0000000000000000008400
      000084000000FF00000084000000FF00000084000000FF000000840000000084
      84000084840000848400008484000084840000848400FF00000084000000FF00
      000084000000FF00000084000000FF00000084000000FF000000008484000084
      8400C6C6C600C6C6C600C6C6C6000000FF000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000000000000000000000000000FFFF00C6C6C600C6C6C600C6C6C6000084
      8400C6C6C60000848400C6C6C600008484000000000000FFFF0000FFFF000084
      84000084840000848400008484000084840000848400008484000084840000FF
      FF0000FFFF000000000000000000000000008400000000000000000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      84000084840000848400008484000084840000FFFF00008484000084840000FF
      FF0000FFFF000000000000000000008484000084840000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000FF0000000000000000008400
      000084000000840000008400000084000000FF00000084000000008484000084
      84000084840000848400008484000084840000848400FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000084000000008484000084
      8400C6C6C600C6C6C600C6C6C6000000FF000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000C6C6C600C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000848400008484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000084
      84000084840000FFFF000084840000848400008484000084840000FFFF0000FF
      FF00008484000000000000000000000000008400000000000000000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      840000FFFF000084840000FFFF0000FFFF000084840000FFFF0000FFFF000000
      000000000000008484000084840000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000FF0000000000000000008400
      0000840000008400000084000000FF00000084000000FF000000008484000084
      840000848400008484000084840000848400FF000000FF00000084000000FF00
      0000FF000000FF00000084000000FF00000084000000FF000000008484000084
      8400C6C6C600C6C6C600C6C6C6000000FF00000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6C600C6C6C6000000
      00000000000000000000C6C6C60000000000C6C6C60000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      84000084840000000000000000000000000000FFFF000084840000FFFF000084
      840000FFFF000084840000FFFF000084840000FFFF000000000000FFFF0000FF
      FF00008484000084840000848400008484000000000000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000840000000000000000000000C6C6
      C6000084840000FFFF0000848400008484000084840000FFFF000084840000FF
      FF000084840000FFFF000084840000FFFF0000FFFF0000FFFF0000FFFF000000
      00000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000084
      8400000000000000000000000000000000000000FF0000000000000000008400
      000084000000840000008400000084000000FF00000084000000008484000084
      8400008484000084840000848400FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000008484000084840000848400008484000084
      8400C6C6C600C6C6C600C6C6C6000000FF00000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6000000000000000000C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF000084840000FFFF000084840000FFFF000084840000FF
      FF000084840000FFFF000084840000FFFF000084840000FFFF000000000000FF
      FF0000FFFF00008484000084840000FFFF000084840000FFFF0000FFFF000000
      0000000000000000000000000000000000008400000000000000000000000000
      0000008484000084840000FFFF000084840000FFFF000084840000FFFF000084
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000008484000084
      8400000000000000000000000000000000000000FF0000000000000000008400
      000084000000FF00000084000000FF00000084000000FF000000008484000084
      840084000000FF00000084000000FF00000084000000FF000000FF000000FF00
      0000FF000000FF000000FF000000008484000084840000848400008484000084
      8400C6C6C600C6C6C600C6C6C6000000FF00000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000C6C6C6000000
      000000000000000000000000000000000000C6C6C60000000000000000000000
      0000C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      00000000000000FFFF0000848400008484000084840000848400000000000000
      0000000000000000000000000000000000008400000000000000000000000000
      0000C6C6C60000FFFF000084840000FFFF000084840000848400008484000084
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000084840000848400008484000084
      8400000000000000000000000000000000000000FF0000000000000000008400
      0000840000008400000084000000840000008400000084000000008484000084
      8400FF000000FF000000FF000000FF00000000848400FF000000FF000000FF00
      0000FF000000FF000000FF000000008484000084840000848400008484000084
      8400C6C6C600C6C6C600000000000000FF000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000C6C6C600C6C6
      C6000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084840000000000000000000000000000FFFF0000FFFF0000FFFF00C6C6
      C60000848400C6C6C60000848400C6C6C60000848400C6C6C600008484000000
      0000000000000000000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      000000000000C6C6C60000FFFF0000FFFF0000FFFF0000000000008484000000
      0000008484000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      8400008484000000000000848400008484000084840000848400008484000000
      0000000000000000000000000000840000000000FF0000000000000000000000
      0000840000008400000084000000FF00000084000000FF000000840000000084
      840000848400FF000000840000000084840000848400FF00000084000000FF00
      0000FF000000FF00000084000000FF000000008484000084840000848400C6C6
      C600C6C6C600C6C6C600000000000000FF000000000000000000000000000000
      0000000000000000000000000000C6C6C600000000000000000000000000C6C6
      C60000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000848400008484000084840000848400C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      000000000000C6C6C60000FFFF0000FFFF000000000000FFFF0000FFFF000084
      840000000000000000000084840000FFFF000084840000848400000000000000
      0000000000000084840000848400008484000084840000848400008484000000
      0000000000000000000084000000840000000000FF0000000000000000000000
      0000840000008400000084000000840000000084840084000000008484000084
      84000084840000848400008484000084840000848400FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000084000000FF000000C6C6
      C600C6C6C60000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000000000000000
      0000C6C6C600C6C6C600000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000848400C6C6C60000000000000000000000000000FF
      FF000084840000FFFF000084840000FFFF000084840000FFFF000084840000FF
      FF000084840000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      000000000000C6C6C600C6C6C60000FFFF000084840000FFFF0000FFFF0000FF
      FF00008484000000000000000000000000000000000000000000000000000084
      84000084840000848400008484000084840000FFFF0000848400008484000000
      0000000000000000000084000000840000000000FF0000000000000000000000
      0000000000008400000084000000FF0000000084840000848400008484000084
      84000084840000848400008484000084840000848400FF00000084000000FF00
      000084000000FF000000840000000084840000848400FF000000C6C6C600C6C6
      C6000000000000000000000000000000FF000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000848400008484000000000000FFFF000084840000FFFF000084
      840000FFFF000084840000FFFF000084840000FFFF000084840000FFFF000084
      840000FFFF000084840000FFFF00008484000084840000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      000000000000000000000084840000FFFF0000FFFF000000000000FFFF0000FF
      FF0000FFFF000084840000000000000000000000000000848400008484000084
      840000FFFF00008484000084840000FFFF0000FFFF0000848400C6C6C6000000
      0000000000008400000084000000840000000000FF0000000000000000000000
      0000000000008400000084000000840000000084840000848400008484000084
      84000084840000848400008484000084840000848400FF000000FF000000FF00
      0000FF000000FF000000FF000000008484000084840084000000C6C6C6000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C60000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C60000000000C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000848400008484000084
      8400008484000084840000848400008484000084840000848400000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000084840000FFFF000000000000FF
      FF0000FFFF0000848400008484000084840000848400008484000084840000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000848400000000000000
      0000000000008400000084000000840000000000FF0000000000000000000000
      0000000000000000000084000000FF0000000084840000848400008484000084
      84000084840000848400008484000084840000848400FF00000084000000FF00
      000000848400FF00000084000000008484000084840000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C6000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000084840000000000C6C6C600C6C6C60000FF
      FF0000FFFF0000FFFF0000FFFF000084840000FFFF000084840000FFFF000084
      840000FFFF000084840000000000000000000000000000848400000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000008484000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000840000008400000084000000840000000000FF0000000000000000000000
      0000000000000000000000000000840000000084840000848400008484000084
      84000084840000848400FF000000008484000084840000848400FF000000FF00
      0000008484008400000000848400008484000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000C6C6C60000000000C6C6C60000000000C6C6
      C600C6C6C6000000000000000000000000000000000000000000C6C6C600C6C6
      C6000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000848400008484000084
      84000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084840000FF
      FF000084840000FFFF0000848400008484000084840000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000084
      8400000000000084840000FFFF0000FFFF0000FFFF0000848400008484000000
      00000000000000000000000000000000000000FFFF0000000000000000008400
      0000840000008400000084000000840000000000FF0000000000000000000000
      0000000000000000000000000000000000008400000000848400008484000084
      8400008484000084840084000000FF000000008484000084840000848400FF00
      000084000000FF00000000848400000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000848400008484000084840000FFFF000084
      840000FFFF000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      840000FFFF000084840000FFFF00008484000084840000848400000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000084840000848400840000008400000084000000FF0000008400
      0000840000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000848400008484000084840000FF
      FF000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00008484000084840000848400008484000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000FF00000084000000FF00000084000000FF000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000FFFF000084840000FFFF000084840000FFFF0000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FCFE
      FE000000000000000000000000000000000000000000FEFEFE00FAFAFA00F4F4
      F400FEFEFE00FCFCFC00FCFCFC00FEFEFE0000000000FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A1
      A200B2ADAE000000000000000000FCFCFC0000000000615C5D00575253006762
      6300817C7D005C575800524D4E002D282900726D6E00FFFDFF00FFFDFF000000
      000000000000FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F7009183
      8500BFB9BA00A9ABAB00EFEFEF00FDFDFD00888686007E787900282223007670
      7100928C8D00807A7B0078727300736D6E00625B5E005D555C0050484F003C3C
      3C0047474700F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C6008400000084000000840000008400000084000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00E8E3E4001F19
      1A00BEB8B9009892930099939400787273006B656600AFA9AA00BCB6B7006A68
      6800ABA7A600A49E99009A959400928D8C008E898800868180007D7877007871
      7400726B6E00625B5E00615B5C00554F5000FFFAFB00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6008400
      0000840000000000000000000000000000000000000000000000840000008400
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001D1819001B15
      1600C2BCBD00A49E9F00B1ABAC00A6A0A1009A949500B9B3B400BAB4B500A9A7
      A700B9B5B400B1ABA600AAA5A400A6A1A000A49F9E00A19C9B0097929100908A
      8B008E888900847E7F007E7879007B757600F7F2F300FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C6000000
      0000C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000C6C6C60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F0002A252600201A
      1B00A39D9E00C1BBBC00C1BBBC00BFB9BA00B3ADAE00C1BCBD00AAA5A600A09F
      A100C8C4C300BBB2AF00B7B2B100B3AEAD00B1ACAB00AFAAA900A9A4A300A9A4
      A100A7A29F009A959200979192009B959600918C8D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000084840000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C6000000
      0000C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCDCD00110F0F00201A
      1B0078727300262021003F393A009B959600B4AFB1007E7A7F00989696007474
      7A00CAC4C900B7ACAE00B8B3B200B9B4B300B9B4B300B8B3B200B4AFAE00B1AC
      AB00AEA9A800A7A2A100A5A09F00A49F9E00A5A1A000A5A5A500FBFBFB00FAFB
      F700F0F0F000FFFEFF00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000C6C6C600000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8A8A001C1A1A002721
      2200A7A1A2009F999A008D848100756C690058505000201C21007F7D7D002820
      2700E6DFE4003E393A002D262900564F5200807A7B00938E8D00A39E9D00A5A0
      9F00B0ABAA00B0ABAA00B3AEAD00B0ABAA00B1ACAB008A858600645F60006E6B
      6700837E7F004D484A00F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600000000000000000000000000C6C6C60000000000C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6008400000084000000840000008400
      000084000000FFFF000084000000840000008400000084000000840000008400
      0000840000008400000084000000C6C6C6000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C3C300201B1C001C18
      1700ACA7A600FFFFFE00FFFFFC00FFFCF900B1ACAB00A6A3A5007F7D7D003028
      2F00FFFDFF0064605F00554E51004D464900504A4B004C484700403C3B00332E
      2F006E696A00908B8C0095908F00A19C9B00AFAAA9006E686900918B8C009D98
      9500918B8C0059545600F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      000000000000C6C6C600C6C6C60000000000C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6008400000084000000840000008400
      0000FFFF00008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000C6C6C6000000000000000000000000000000
      00000000000000000000000000000000000000000000BAB5B7002A232600ABA7
      A200817B7600B5AAA600C9C3BE00ECE4E4003F373700CFC3C30089828500B5B0
      B200D4CFCE00B9B0AC00A79E9B0092898600837A770070696600625B58005C54
      5400585050004C444400453F40003B353600403A3B00706A6B00A19B9C00A59E
      9B00A19B9C003D3A3C00C7C5C500000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600840000008400000084000000FFFF
      000084840000FFFF000084000000840000008400000084000000840000008400
      0000840000008400000084000000C6C6C6000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B2B100241F1E00DED5
      CC00E8DBD300B09E9700F9E8DF00EDE3DC00EEE5E100CFC4C000FFFEFE00B7B3
      AE00C7C4C000FEFEFE00FFFEFF00FFFEFF00F8F3F200EAE1DD00CFC6C200BFB6
      B200ACA39F00948B870081787500756C6900665F5C006E686900686263009C95
      92009C969700504D4F00B4B2B200000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600840000008400000084000000FF00
      0000FFFF0000FF000000FFFF0000FF000000FF000000FF000000FF000000FF00
      0000840000008400000084000000C6C6C6000000000000000000000000000000
      00000000000000000000000000000000000000000000CCC9C500B6B1AE009C90
      8A00A89A9400AB9B9500D4C5C200F0ECEB00FFFFFE00FDFAF500C5C2BE00B8B2
      AB00FFFFFC00FCFCFC00FAFFFE00FAFFFE00FCFEFE00FFFEFF00FFFEFF00FEFF
      FD00F7F8F600EFF0EE00DDD7D200C4BEB9006A636000655F60007B757600766D
      6A00645E5F002B282A00C0BEBE00000000000000000000000000000000000000
      00000000000000848400000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600000000000000000000000000C6C6
      C60000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C60084000000FF000000FF000000FFFF
      000084840000FFFF0000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000084000000C6C6C6000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFBFB0000000000F9FB
      FB00FDFFFF00FBFDFD00867B7700F8F9F700D7CCCE00FBF7F600E4DCDC00B4A5
      A200BCADAA00C0B1AE00C1B9B900CCC4C400D7CFCF00E7E2E300F7F2F300FFFD
      FD0000000000FFFDFD00FFFDFC00FEFCFB00797574006C646400FFF7F700FEF9
      F600ECEAEA00C6C5C70000000000000000000000000000000000000000000000
      0000008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000848400008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FF000000FF000000FF00
      0000FFFF000084840000FFFF0000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFFFF00FDFFFF00FBFF
      FF00FBFFFF00FBFFFF00FCF7F800EEEFEB00FFF6F300F4F0EF00F8F0F000CDC1
      BF00EEE2E000D9CDCB00CFC3C300CABEBE00C1B5B500BDB4B100C0B7B400C6BF
      BC00D2CBC800EEE7E400F8F4F300FFFCFB00817C7B00B6AEAE00C5BDBD00CCC7
      C400D8D6D600BBBABC00FDFDFD00000000000000000000000000000000000000
      00000084840000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000848400008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C60000000000FF00
      0000FF000000FFFF0000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFFFF00FDFFFF000000
      000000000000FEFEFE0000000000FFFFFE009D989700FCF0EC00DCCBC800F9EE
      F000595354008482820032292600938A8700F5E9E700F5E6E300E8DBDD00CDC7
      C000D2C8C100D0C2BC00C6BBB7008B7A77007D686600D9C9C300433431002419
      1500897F7F00BDB7B800FEFEFE00000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      000000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
      0000C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE0000000000F8F8F800FFFFFE00B4ABA800978A88008276
      72009489850088827D00B2A8A800473D3D00BFB7B70068636000332B2C00211B
      1C00261E1F00E2D7D900E9E0DD0090838100EEE2E2009286840089786F009B92
      8E00F7F2EF00FFFEFF00FEFEFE00000000000000000000848400000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000000000000000000C6C6C60000000000C6C6C60000000000C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FFFDFE00F6F5
      F100FAF5F200A59C9900C5BEC1009D96990048434500514B4C008D807E00907E
      7F008D7F80008A808000746F700000000000F7F9F900FEFEFE00FDF9F400ADA9
      A400D7D4D000F9F9F90000000000000000000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000FFFF00C6C6C60000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF00C6C6C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600000000000000000000000000C6C6C60000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFFFF0000000000FBFD
      FD00ACAAAA0087818200221C1D001D161B00726B7000201A1B00FFFFFE00A395
      9600877B7B00BAAEAE00FDFDFD00FDFFFF00FDFFFF000000000000000000FFFD
      FC00FDFDFD000000000000000000000000000084840000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600000000000000000000000000C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC0092909000BDB7B800181213001D161B006B6469009590910000000000FDFF
      FF00FDFFFF00FAFCFC0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA004C4A4A00ABA5A60079737400352E330059525700AEA9AA00FEFEFE00FDFF
      FF00FDFFFF00FDFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000FFFF0000FFFF000000000000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE000000000000000000000000000000000000000000FCFB
      FF00BAB6BB003D363B00443C4300827A8100453E4300F8F2F300FFFEFF00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000848400008484000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000C6C6C600C6C6C600C6C6
      C60000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000FFFF0000FFFF000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C60000000000C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE000000000000000000000000000000000000000000F8F8
      F80000000000C9C3C4008B838A004B434A006B6469007D777800645E5F00FCFC
      FC00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000848400008484000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF000000000000000000C6C6C600C6C6C60000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000FFFF0000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FE00FFFDFC00A39E9D003B333A006B636A00585156008E8889008F898A00B9B9
      B900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      000000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C60000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000FFFF0000FFFF000000000000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C60000000000C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFD
      FF00FDFDFD00C2B8B800908B8C00938A8D00A0999E00C2C4C4009D9B9B009D97
      9800F7F2F3000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000FFFF0000FFFF000000000000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFD
      FF00FBFDFD00FAF0F000C3B1AA00A9A09C00FFFFFE00FBFDFD00A3A1A100A7A1
      A2007E797A00FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      000000FFFF0000FFFF000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C60000000000C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      FF00FAFFFF00FFFDFC00EBE6E30000000000FAF9FB00FBFDFD00FBF9F900ACA6
      A700B3AEAF00F9F9F90000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      000000FFFF0000FFFF000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700A49D
      A000948D90006D646700DCD4D500FBFBFB00F8FFFF00F7FCFA00FBFEFC00FFFE
      FF0000000000FDFFFF0000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000000000FF
      FF0000FFFF000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6FE
      F400533F3A008D5D5C00723F46006A4549004D2F34004A313B006A5B6300EAE5
      E60000000000FBFDFD00FDFDFD00FBFFFF000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FF
      FF000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C6000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FE00FFFEFE00D3BBBD008B6D6C00967070009F747700754D4F0070494B006945
      4B0055353A0053383C004D3236003B282B000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000C6C6C6000000000000848400008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000FFFF0000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFEFF00FFF3F500CFBC
      B7009C817D0095726F00946A6B007D5354000000000000000000000000000000
      0000000000000000000000000000C6C6C600000000000000000000000000C6C6
      C600000000000000000000848400008484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FEFEFE00FCFEFE00FAFFFE0000000000F4FF
      FF00F4FCFC00FBFFFF00FFF9F600FFFEFB000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000C6C6C6000000
      000000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FE00FFFFFE00FFFFFE00FCFEFE00FDFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600100000100010000000000001600000000000000000000
      000000000000000000000000FFFFFF00FF8001FFFF8001FFFF8001FF00000000
      FE00007FFE00007FFE00007F00000000FC00003FFC00003FFC00003F00000000
      F800000FF800000FF800000F00000000F0000007F0000007F000000700000000
      E0000007E0000007E000000700000000C0000003C0000003C000000300000000
      C0000001C0000001C00000010000000080000001800000018000000100000000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000040000000000000000000000000000000380000000000000
      0000000000000000008000000000000000000000000000000018000000000000
      0000000000000000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000000000000080000000800000008000000000000000
      80000001800000018000000100000000C0000001C0000001C000000300000000
      E0000003E0000003E000000300000000E0000007E0000007E000000700000000
      F000000FF000000FF000000F00000000F800001FF800001FF800001F00000000
      FE00003FFE00003FFE00003F00000000FF0000FFFF0000FFFF0000FF00000000
      FFE003FFFFE003FFFFE003FF00000000FF8001FFFF8001FFFF8001FFFF8001FF
      FE00007FFE00007FFE00007FFE00007FFC00003FFC00003FFC00003FFC00003F
      F800000FF800001FF800000FF800000FF0000007F000000FF0000007F0000007
      E0000007E0000007E0000007E0000001C0000003C0000003C0000003C0000001
      C0000001C0000001C0000001C000000180000001800000018000000180012001
      8000000080000000800000008000400000000000000000000000000000068800
      000000000000000000000000000F9000000000000000000000000000003FE100
      00000000000000000000000007FFC6400000000000000000000000007FFFCC72
      0000000000000000000000004FFFF0F800000000000000000000000047FFE07E
      00000000000000000000000001E187FE00000000000000000000000020E01FFE
      00000000000000000000000020003C7C0000000000000000000000002000600C
      8000000080000000800000008000000080000000800000008000000080000000
      800000018000200180000001C0000001C0000001C0FE1F01C0000001C0000001
      E0000003E03E1C03E0000003C0000003E0000007E03E1C07E0000007E0000007
      F000000FF01FE00FF000000FF000000FF800001FF80C001FF800001FF800001F
      FE00003FFE00003FFE00003FFE00003FFF0000FFFF0000FFFF0000FFFF0000FF
      FFE003FFFFE003FFFFE003FFFFE003FFFF8001FFFF8001FFFF8001FFFF8001FF
      FE00007FFE00007FFE00007FFE00007FFC00003FFC00003FFC00003FFC00003F
      F800000FF800000FF800000FF800000FF0000007F0000007F007E007F0000007
      E0000007E0000007E007E007E0000007C0000003C0000003C0008003C0000003
      C0000001C0000001C0008001C000000180000001800000018000800180000001
      8000000080000000800000008000000000000000000000000000000000000000
      00000000000000000003E0000000000000000000000000000003E00000000000
      00000000000000000003E0000000000000000000000000000003E00000000000
      00000000000000000003E0000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000001800000008000000080000000
      80000001800000018000000180000001C0000001C0000001C0000001C0000003
      E0000003E0000003E0000003E0000003E0000007E0000007E0000007E0000007
      F000000FF000000FF000000FF000000FF800001FF800001FF800001FF800001F
      FE00003FFE00003FFE00003FFE00003FFF0000FFFF0000FFFF0000FFFF0000FF
      FFE003FFFFE003FFFFE003FFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFF80000001
      FFF0FFFFC3FFFFFFFFFFFFFF00000000FFF0FFFF81FFFFFFFFFC3FFF00000000
      FFF0FFFF81FFFFFFFFF81FFF00000000FFF0FFFF80FFFFFFFFF81FFF00000000
      FFF0FFFF80FFFFFFFFF81FFF00000000FFF0FFFF00FFFFFFFFF81FFF00000000
      FFF0FFFF00FFFFFFFFF81FFF00000000FFF0FFFF00FFFFFFFFF81FFF00000000
      FFF0FFFF007FFFFFFFF81FFF00000000FFF0FFFF001FFFFFFFF83FFF00000000
      FFF0FFFF80073BFFFFF83FFF00000000FFE07FFFC00333FFFFF83FFF00000000
      FFC03FFFE00013FFFFF81FFF00000000E000007FF00000FFCFF81FFB00000000
      E0000007F00000FFCFF81FF100000000E0000001F00000FFCFF81FF100000000
      E0000001FE0000FF87F00FE100000000E0000001FF80007F87F00FE100000000
      E0000001FFE0003F83E007C100000000C0000001FFF0001F81C0038100000000
      80000007FFFC000F80000001000000008000000FFFFF00078000000300000000
      8000403FFFFF8003C00000030000000080407FFFFFFF8001C000000700000000
      C1C07FFFFFFFE001E000000700000000C7E07FFFFFFFF840F000000F00000000
      FFE07FFFFFFFFFC0F000001F00000000FFE07FFFFFFFFFE0F800003F00000000
      FFE07FFFFFFFFFF1FE00007F00000000FFE07FFFFFFFFFFBFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF80000001800000008000000080000000FFFFFFFF
      000000000000000000000000FFFFFFFF000000000000000000000000FFFFFFFF
      000000000000000000000000FFFFFFFF000000000000000000000000FFFFFFFF
      000000000000000000000000FFFFFFFF00000000000000000000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000001000000010000000000000001FFFFFFFFFFFFFFFFFFFFFFFF80000000
      FFFFFFFFFFFFFFFFFE1FFFFF00000000FFFFFFFFFFFFFFFFFE1F1FFF00000000
      FFFFFFFF00010000FE1F0F8F00000000FFF0FFFF00000000FE1F0F0F00000000
      FFF0FFFF0003C000FF3F0F0F00000000FFF0FFFF0003C000FF1F9F0F00000000
      FFE0FFFF00000000FF1F1F9F00000000FFE0FFFF00000000FF3F1F8F00000000
      FFE0FFFF00000000FF3F1F8F00000000FFE0FFFF00000000FF3F9F9F00000000
      FFE0FFFF00000000FF3F9F9F00000000FFE07FFF00000000FF3F9F9F00000000
      FFE07FFF00000000FF3F9F9F00000000C000000700000000FF3F9F9F00000000
      C000000300000000FF3F9F9F00000000E000000000000000FF3F9F9F00000000
      E000000000000000FF3F9F9F00000000C000000000000000FF3F9F9F00000000
      00000000000000003F3F9F9F000000000000000100000000C03F9F9F00000000
      0000000700000000FF001F9F0000000000407FFF00000000FF3F801F00000000
      03E07FFF00000000FF3F9F800000000003E07FFF00000000073F9F9E00000000
      FFE07FFF00000000E00F9F9E00000000FFE07FFF00000000E3300F9E00000000
      FFE07FFF00000000F033900E00000000FFFFFFFF00000000F070319000000000
      FFFFFFFF00000000FFF8381F00000000FFFFFFFF00000000FFFFF83F00000000
      FFFFFFFF00000000FFFFFFFF00000000FF8FF1FFFFF07FFFFFFE0000A8A8A8A8
      FF0001FFFFF01FFFFFF8000000000000FF0003FFFFF01FFFFFF8000022222222
      FF0001FFFFF00DFFFFFC000000000000FFC007FFFFF00DFFFFF800008A8A8A8A
      FF8001FFFFF800FFFFF8000000000000FF0000FFFFF8003FFFF8000000222220
      FE00007F007C007FFFF8000000000000FE18387F007E001FFFF8000000A8A8A0
      FC7C787F811FC00FFFFC000000000000FC750C3F001FF807FFFC000000222220
      F840063F007FFE070000000000000000F8000E1F007FFE0700000000000A8880
      F8000E1F007FFFC70000000100000000F8724E3F001FEFEF0000000100222200
      F872463F000327FF0000000700000040FC70043F980003FF000000078008A880
      FC70043FE800037F0000000F40000000FC30047FE000027F0000003F00002000
      FC20007FF020007F00001FFF00000000FE08187FF020007F0002FFFF80000002
      FE0000FFF800007F0003FFFF00000000FE0000FFFF81007F0003FFFF20000002
      FF8001FFFFE0001F0003FFFF00000000FFC007FFFFF8000F0003FFFFA8000028
      FFF00FFFFFFE00038007FFFF00400000FFF00FFFFFFE08018007FFFF22200222
      FFF00FFFFFFF80008007FFFF00000000FFF80FFFFFFF80008007FFFF888A888A
      FFF81FFFFFFFF9408007FFFF00000000FFF81FFFFFFFFFC48007FFFF22222222
      FFF81FFFFFFFFFF18007FFFF00000000FFF801FF00000000001FFFFFE00FFFFF
      FFF801FF000000007FFFFFFF00000000FFF801FF00000000003FFFFF00000000
      FFF801FF000000005FFFFFFC00000000FFF002FF00000000FF5FFFFE00000000
      FFE8027F00000000EE9FFFF800000000FFE0007F00000000D77FFFF800000000
      FFC0003F000000008AFFFFF800000000FFC0003F0000000097FFFFFC00000000
      FFC0403F00000000FD3FFFFC00000000FFC0103F00000000F73FFFFC00000000
      FFC0003F00000000E8FFFFFC00000000FFC0803F00000000DFFFFFFC00000000
      FFC0803F00000000C0FFFFFC00000000FFC0803F00000000FE7FFFF000000000
      FFC0803F00000000FF7FFFF000000000FFC0003F00000000F7FFFFF002000000
      FFC0007F00000000E7FF01F000000000FFE0007F00000000ECFCFE7C00000000
      FFE0007F00000000FCF3D7BC00000000FFE0007F00000000FBE7D7DC00000000
      FFE0007F00000000F7D7DF8C00000000FFE000FF00000000F1BBFF8C00000000
      FFF000FF00000000FDABBBA000000000FFF000FF00000000FD6BBBE400000000
      FFF000FF00000000F86FBF7100000000FFF000FF00000000FDC3FF0E00000000
      FFF000FF00000000FC3F87F200000000FFF000FF00000000FFE0781E00000000
      FFF001FF00000000FFFFFFFC00000000FFF801FF00000000FFFFFFFF00000000
      FFF803FF00000000FFFFFFFF00000000000000000000000000000000FFF007FF
      000000000000000004900000FFE007FF000000800000000004900000FFE007FF
      000000000000000005500000FFE007FF000000040000000005500000FFE007FF
      000200000000000004900000FFE007FF00100000000000000410AA00FFE003FF
      00A008000000000004950000FFC003FF0000000000000000050AA840FF8001FF
      0000000000000000021443A0FF8080FF0000000000000000012AA540FF8000FF
      000000000000000000551280FF8000FF000000000000000000AA7500FF8200FF
      00AC00000000000000F4E280FF8100FF000000000000000000A9D500FF8100FF
      03E0801C0000000001D2E200FF8100FF200000080001000002A55500FFA180FF
      0000000008000000036FA000FFA000FF200000000000080002AD5000FF8001FF
      00C00FF40000000407DEA000FFC003FF000FBFFE0000000006800500FFC003FF
      00078EF60000000007BA8A80FFC003FF0100AFEE0000800006554480FFC003FF
      7E8117D400000000076A8880FFC003FF41000FC80800080006540740FFE007FF
      6B001FC00000000006A800C0FFE007FF7C007F000000400002F00000FFE007FF
      2000CE000000040002C00000FFE007FF00007E000040000800000000FFE007FF
      16000E000000000000000000FFE007FF380004000000000000000000FFF007FF
      000000000000000000000000FFF00FFF00000000FFFFFFFFFFFFFFFFFFFFFFFF
      7FFC007EFFFFFFFFFE003C1FFFFFFFFF7FF0001EFFFC1FFFF000000FFFFF1FFF
      7FE0000EFFF81FFFE0000007FF8003FF7FC00006FFFB9FFFC0000003FC0000FF
      7F000002FFBB9EFFC0000003F800007F7E000002FF12847FC0000001F800007F
      7C000000FE06C23FC0000001E000003F78000000FC1FF71F800000010000001F
      78000000F91FD99F000000010000001F70000000FC08313F000000010000000F
      70000000FE01EA3F000000014000000760000000FC00773F0000000140000007
      60000000E083DD03800000036000000060000000C1007B83C000000360000000
      60000000C1092BF3C00000076000000260000000C94AAB33E000000F70000006
      60000000C14B23F3E000001F7000000660000002C14C0383E00000FF3800000E
      70000002FCA7873FE00000FF3800000C70000006FCB0033FE000007F1800001C
      7800000EFE58023FF000003F1C0000187800001EFC67011FF81F801F0C000038
      7C00007EF918299FFC00001F060000307E0000FEFC87C53FFC00001F00C00060
      7F0001FEFE00027FFC00001F0FE01F607FC007FEFF381CFFFE00003F3FFFFF80
      7FF01FFEFFF91FFFFF00787FFFFFFFC07FFFFFFEFFF81FFFFFE003FFFFFFFFF0
      7FFFFFFEFFF81FFFFFFFFFFFFFFFFFF87FFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF80BFFFFFFF3FFFE07FFFFF
      FFF83FFFE6801BFFFFFF3BFFCE1FFFFFFFE00FFFC00003FFFFFF09FF8F07FFFF
      FFC007FF8000003FFFFB08FF8343FFFFFF87C3FFC000003FFFF3947F0370FFFF
      FF0001FF8000007FFFF3223F00F87FFFFE0000FF80000001FFF0411F01DE1FFF
      FE0000FF80000001FFB0808F408707FFFC00007F80000001FF390047A02103FF
      FC00007F80000001FF320027CE780007FC00007F80000001FF040017F1FE0001
      FC00007F80000001FB08020FFC380000FC00007FA0000803F3900400FFC00000
      FE0000FF80000001F3200000FFE00000FE2008FF9A000001F0400010FFC00000
      FF1551FFFA000001B0802039FF840000FF8EA3FFFF8001033901400FFE000001
      FFC747FFFFA000673202800FF8000000FFE38FFFFFE023FF0405010FF0000004
      FFED6FFFFFE003FF0802039FE0000806FFF39FFFFBE00FFF900400FFC0000806
      FFF11FFFFBE807FFA0E000FFC0000829FFF39FFFFFE00FFF415010FFC000100F
      FFF11FFFFFE007FF81F039FFC000100FFFF39FFFFFE003FFC1500FFFF000205F
      FFF11FFFFFE103FFE0E00FFFF000203FFFE2CFFFFFFFC00BF0010FFFF800407F
      FFD017FFFFFFE008F8039FFFFC0080FFFFC7C7FFFFFFE000FC00FFFFFF0101FF
      FFD837FFFFFFF800FE00FFFFFF8007FFFFE00FFFFFFFF820FF10FFFFFFC03FFF
      FFFFFFFFFFFFFFE0FFB9FFFFFFF0FFFF00000000000000000000000000000000
      000000000000}
  end
  object Open1: TOpenDialog
    DefaultExt = 'csv'
    Filter = 'Csv|*.csv'
    Left = 332
    Top = 288
  end
end
