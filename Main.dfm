object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Model Maker Express'
  ClientHeight = 699
  ClientWidth = 1216
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnMouseWheel = FormMouseWheel
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    1216
    699)
  PixelsPerInch = 105
  TextHeight = 14
  object Label2: TLabel
    Left = 584
    Top = 36
    Width = 35
    Height = 14
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 624
    Top = 36
    Width = 35
    Height = 14
    Caption = 'Label3'
  end
  object Label1: TLabel
    Left = 663
    Top = 36
    Width = 35
    Height = 14
    Caption = 'Label1'
  end
  object DisplayLabel: TLabel
    Left = 825
    Top = 36
    Width = 64
    Height = 14
    Caption = 'DisplayLabel'
  end
  object Memo1: TMemo
    Left = 798
    Top = 90
    Width = 180
    Height = 218
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Snap: TCheckBox
    Left = 405
    Top = 36
    Width = 63
    Height = 17
    Caption = 'Snap'
    TabOrder = 0
    OnClick = SnapClick
  end
  object highLight: TCheckBox
    Left = 456
    Top = 36
    Width = 77
    Height = 17
    Caption = 'HighLight'
    TabOrder = 2
  end
  object Input: TEdit
    Left = 708
    Top = 32
    Width = 120
    Height = 22
    TabOrder = 3
    Text = 'Input'
    OnKeyDown = InputKeyDown
  end
  object dtm: TCheckBox
    Left = 523
    Top = 36
    Width = 47
    Height = 17
    Caption = 'DtmZ'
    TabOrder = 8
  end
  object main_panel_site: TdxDockSite
    Left = 229
    Top = 59
    Width = 763
    Height = 632
    Color = clBackground
    ManagerColor = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    DockingType = 5
    OriginalWidth = 763
    OriginalHeight = 632
    object dxLayoutDockSite2: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 763
      Height = 632
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
    end
    object main_panel: TdxDockPanel
      Left = 0
      Top = 0
      Width = 763
      Height = 632
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Color = clMenuHighlight
      ManagerColor = False
      AllowFloating = True
      AutoHide = False
      Caption = 'MM Express'
      DockingType = 0
      OriginalWidth = 185
      OriginalHeight = 140
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 759
        Height = 608
        Align = alClient
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        object pbox: TImage
          Left = 0
          Top = 0
          Width = 759
          Height = 587
          Align = alClient
          OnMouseDown = PBox1MouseDown
          OnMouseMove = PBox1MouseMove
          OnMouseUp = pboxMouseUp
          ExplicitWidth = 758
          ExplicitHeight = 585
        end
        object status_bar: TdxStatusBar
          Left = 0
          Top = 587
          Width = 759
          Height = 21
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Panels = <
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
            end
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.Alignment = taRightJustify
              Fixed = False
              Width = 300
            end
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.Alignment = taRightJustify
              Fixed = False
              Text = 'X:'
              Width = 200
            end
            item
              PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
              PanelStyle.Alignment = taRightJustify
              Fixed = False
              Text = 'Y:'
              Width = 200
            end>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
        end
      end
    end
  end
  object dxDockSite1: TdxDockSite
    Left = 5
    Top = 465
    Width = 216
    Height = 225
    Color = clHotLight
    ManagerColor = False
    Anchors = [akLeft, akTop, akBottom]
    DockingType = 5
    OriginalWidth = 216
    OriginalHeight = 225
    object dxLayoutDockSite1: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 216
      Height = 225
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
    end
    object dxDockPanel1: TdxDockPanel
      Left = 0
      Top = 0
      Width = 216
      Height = 225
      Color = clMenuHighlight
      ManagerColor = False
      AllowFloating = True
      AutoHide = False
      Caption = 'Object Inspector'
      DockingType = 0
      OriginalWidth = 185
      OriginalHeight = 140
      object main_oi: TcxVerticalGrid
        Left = 0
        Top = 0
        Width = 212
        Height = 201
        Align = alClient
        TabOrder = 0
        OnEdited = main_oiEdited
        OnEditValueChanged = main_oiEditValueChanged
        Version = 1
        object shape_info_heading: TcxCategoryRow
          ID = 0
          ParentID = -1
          Index = 0
          Version = 1
        end
        object shape_info_row1: TcxEditorRow
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 1
          ParentID = -1
          Index = 1
          Version = 1
        end
        object shape_info_row2: TcxEditorRow
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 2
          ParentID = -1
          Index = 2
          Version = 1
        end
        object shape_info_row3: TcxEditorRow
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 3
          ParentID = -1
          Index = 3
          Version = 1
        end
        object main_oiCategoryRow1: TcxCategoryRow
          ID = 4
          ParentID = -1
          Index = 4
          Version = 1
        end
        object shape_info_row4: TcxEditorRow
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 5
          ParentID = -1
          Index = 5
          Version = 1
        end
        object shape_info_row5: TcxEditorRow
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 6
          ParentID = -1
          Index = 6
          Version = 1
        end
        object shape_info_row6: TcxEditorRow
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 7
          ParentID = -1
          Index = 7
          Version = 1
        end
        object shape_info_row7: TcxEditorRow
          Properties.DataBinding.ValueType = 'String'
          Properties.Value = Null
          ID = 8
          ParentID = -1
          Index = 8
          Version = 1
        end
      end
    end
  end
  object tool_panel_site: TdxDockSite
    Left = 5
    Top = 59
    Width = 216
    Height = 390
    DockingType = 5
    OriginalWidth = 200
    OriginalHeight = 362
    object dxLayoutDockSite3: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 216
      Height = 390
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
    end
    object dxTabContainerDockSite1: TdxTabContainerDockSite
      Left = 0
      Top = 0
      Width = 216
      Height = 390
      Color = clMenuHighlight
      ManagerColor = False
      ActiveChildIndex = 1
      AllowFloating = True
      AutoHide = False
      DockingType = 0
      OriginalWidth = 185
      OriginalHeight = 140
      object tool_dock_panel: TdxDockPanel
        Left = 0
        Top = 0
        Width = 212
        Height = 341
        Color = clBackground
        ManagerColor = False
        AllowFloating = True
        AutoHide = False
        Caption = 'Structure'
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        object tlStructure: TcxTreeList
          Left = 0
          Top = 0
          Width = 212
          Height = 341
          Align = alClient
          Bands = <
            item
            end>
          OptionsData.Editing = False
          OptionsView.CheckGroups = True
          TabOrder = 0
          OnNodeCheckChanged = tlStructureNodeCheckChanged
          Data = {
            00000500970000000F00000044617461436F6E74726F6C6C6572310100000012
            000000546378537472696E6756616C75655479706502000000445855464D5400
            00060000006B006A006C006B006C006A00445855464D54010200000000000000
            08020000000000000000FFFFFFFFFFFFFFFFFFFFFFFF01000000080000000000
            00000000FFFFFFFFFFFFFFFFFFFFFFFF1A040802000000}
          object tlPlanetsColumn1: TcxTreeListColumn
            Caption.Text = 'Project'
            DataBinding.ValueType = 'String'
            Width = 155
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
      end
      object dxDockPanel2: TdxDockPanel
        Left = 0
        Top = 0
        Width = 212
        Height = 341
        AllowFloating = True
        AutoHide = False
        Caption = 'Layers'
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        object tlLayers: TcxTreeList
          Left = 0
          Top = 0
          Width = 212
          Height = 319
          Align = alClient
          Bands = <
            item
              Caption.Text = 'Show'
            end>
          OptionsView.CheckGroups = True
          OptionsView.ShowRoot = False
          Styles.Background = cxStyle1
          Styles.BandBackground = cxStyle1
          Styles.BandContent = cxStyle1
          TabOrder = 0
          OnCanSelectNode = tlLayersCanSelectNode
          OnNodeCheckChanged = tlLayersNodeCheckChanged
          Data = {
            00000500760000000F00000044617461436F6E74726F6C6C6572310100000012
            000000546378537472696E6756616C75655479706501000000445855464D5400
            00060000006C006B006A00680068006A00010000000000000008020000000000
            000000FFFFFFFFFFFFFFFFFFFFFFFF0A040801000000}
          object cxTreeList1Column1: TcxTreeListColumn
            Caption.Text = 'Normal'
            DataBinding.ValueType = 'String'
            Width = 128
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
        object ToolBar1: TToolBar
          Left = 0
          Top = 319
          Width = 212
          Height = 22
          Align = alBottom
          Caption = 'ToolBar1'
          Color = clBackground
          GradientEndColor = clMaroon
          ParentColor = False
          TabOrder = 1
          object Button3: TButton
            Left = 0
            Top = 0
            Width = 97
            Height = 22
            Caption = 'New'
            TabOrder = 1
            OnClick = Button3Click
          end
          object Button2: TButton
            Left = 97
            Top = 0
            Width = 96
            Height = 22
            Caption = 'Delete'
            TabOrder = 0
            OnClick = Button2Click
          end
        end
      end
    end
  end
  object dxDockSite2: TdxDockSite
    Left = 996
    Top = 58
    Width = 216
    Height = 302
    Color = clBackground
    ManagerColor = False
    Anchors = [akTop, akRight, akBottom]
    DockingType = 5
    OriginalWidth = 216
    OriginalHeight = 302
    object dxLayoutDockSite4: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 216
      Height = 302
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
    end
    object dxDockPanel4: TdxDockPanel
      Left = 0
      Top = 0
      Width = 216
      Height = 302
      Color = clMenuHighlight
      ManagerColor = False
      AllowFloating = True
      AutoHide = False
      Caption = 'Blocks'
      DockingType = 0
      OriginalWidth = 185
      OriginalHeight = 140
      object ToolBar2: TToolBar
        Left = 0
        Top = 255
        Width = 212
        Height = 23
        Align = alBottom
        Caption = 'ToolBar2'
        TabOrder = 0
        object Button1: TButton
          Left = 0
          Top = 0
          Width = 105
          Height = 22
          Caption = 'Add'
          TabOrder = 0
        end
        object Button4: TButton
          Left = 105
          Top = 0
          Width = 92
          Height = 22
          Caption = 'Delete'
          TabOrder = 1
        end
      end
      object tlBlocks: TcxTreeList
        Left = 0
        Top = 0
        Width = 212
        Height = 255
        Align = alClient
        Bands = <
          item
          end>
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.CheckGroups = True
        TabOrder = 1
        OnClick = tlBlocksClick
        OnDblClick = tlBlocksDblClick
        OnNodeCheckChanged = tlBlocksNodeCheckChanged
        Data = {
          00000500970000000F00000044617461436F6E74726F6C6C6572310100000012
          000000546378537472696E6756616C75655479706502000000445855464D5400
          00060000006B006A006C006B006C006A00445855464D54010200000000000000
          08020000000000000000FFFFFFFFFFFFFFFFFFFFFFFF01000000080000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFF1A040802000000}
        object cxTreeListColumn1: TcxTreeListColumn
          Caption.Text = 'Blocks'
          DataBinding.ValueType = 'String'
          Width = 155
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
    end
  end
  object dxDockSite3: TdxDockSite
    Left = 996
    Top = 366
    Width = 216
    Height = 322
    Anchors = [akRight, akBottom]
    DockingType = 5
    OriginalWidth = 216
    OriginalHeight = 322
    object dxLayoutDockSite5: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 216
      Height = 322
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
    end
    object dxDockPanel5: TdxDockPanel
      Left = 0
      Top = 0
      Width = 216
      Height = 322
      AllowFloating = True
      AutoHide = False
      Caption = 'Irrigation'
      DockingType = 0
      OriginalWidth = 185
      OriginalHeight = 140
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 212
        Height = 298
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Nodes'
          object nodetree: TTreeView
            Left = 0
            Top = 0
            Width = 204
            Height = 247
            Align = alClient
            Indent = 19
            TabOrder = 0
            OnClick = nodetreeClick
          end
          object ToolBar3: TToolBar
            Left = 0
            Top = 247
            Width = 204
            Height = 22
            Align = alBottom
            Caption = 'ToolBar3'
            TabOrder = 1
            object Button5: TButton
              Left = 0
              Top = 0
              Width = 185
              Height = 22
              Caption = 'Add'
              TabOrder = 0
              OnClick = Button5Click
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Pipes'
          ImageIndex = 1
          object PipeTree: TTreeView
            Left = 0
            Top = 0
            Width = 204
            Height = 269
            Align = alClient
            Indent = 19
            TabOrder = 0
            OnClick = PipeTreeClick
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 916
    object File1: TMenuItem
      Caption = 'File'
      object New1: TMenuItem
        Caption = 'New'
        OnClick = New1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Save1: TMenuItem
        Tag = 1
        Caption = 'Save'
        OnClick = Save1Click
      end
      object Open1: TMenuItem
        Tag = 2
        Caption = 'Open'
        OnClick = Save1Click
      end
      object OpenTotfile1: TMenuItem
        Tag = 3
        Caption = 'Open Tot file'
        OnClick = Save1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object SelectAll1: TMenuItem
        Tag = 1
        Caption = 'Select &All'
        OnClick = SelectAll1Click
      end
      object DeSelect1: TMenuItem
        Tag = 2
        Caption = 'Select &None'
        OnClick = SelectAll1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Delete1: TMenuItem
        Caption = '&Delete Selected'
        OnClick = Delete1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object CreateTriangles1: TMenuItem
        Caption = 'Create Triangles'
        OnClick = CreateTriangles1Click
      end
    end
    object DataBase1: TMenuItem
      Caption = 'DataBase'
      OnClick = DataBase1Click
    end
    object Dtm1: TMenuItem
      Caption = 'Dtm'
      OnClick = Dtm1Click
    end
  end
  object BarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Irrigation')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 708
    Top = 4
    DockControlHeights = (
      0
      0
      52
      0)
    object dxBarManager1Bar2: TdxBar
      Caption = 'Modes'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 979
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'SelectSpeed'
        end
        item
          Visible = True
          ItemName = 'MoveSpeed'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarManagerBar1: TdxBar
      Caption = 'Elements'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 100
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 979
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'LineAdd'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarManagerBar2: TdxBar
      Caption = 'Undo'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 549
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 979
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'UndoButton'
        end
        item
          Visible = True
          ItemName = 'Redo'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarManagerBar3: TdxBar
      Caption = 'Irrigation'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 1106
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object MoveSpeed: TdxBarButton
      Tag = 10
      Caption = 'Move'
      Category = 0
      Hint = 'Move'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object SelectSpeed: TdxBarButton
      Tag = 1
      Caption = 'Select'
      Category = 0
      Hint = 'Select'
      KeyTip = '0'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Add'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'LineAdd'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object LineAdd: TdxBarButton
      Tag = 100
      Caption = '2P Line'
      Category = 0
      Hint = '2P Line'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object dxBarButton1: TdxBarButton
      Tag = 101
      Caption = 'Parallel'
      Category = 0
      Hint = 'Parallel'
      KeyTip = '1'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object dxBarButton2: TdxBarButton
      Tag = 700
      Caption = 'Image'
      Category = 0
      Hint = 'Image'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object dxBarButton3: TdxBarButton
      Tag = 200
      Caption = 'Circle'
      Category = 0
      Hint = 'Circle'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object dxBarButton4: TdxBarButton
      Tag = 201
      Caption = '3Arc'
      Category = 0
      Hint = '3Arc'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object dxBarButton5: TdxBarButton
      Tag = 1000
      Caption = 'Block'
      Category = 0
      Hint = 'Block'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object UndoButton: TdxBarButton
      Tag = 1
      Caption = 'Undo'
      Category = 0
      Hint = 'Undo'
      Visible = ivAlways
      OnClick = UndoButtonClick
    end
    object dxBarButton6: TdxBarButton
      Tag = 800
      Caption = 'Area'
      Category = 0
      Hint = 'Area'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object dxBarButton7: TdxBarButton
      Tag = 900
      Caption = 'DtmPnt'
      Category = 0
      Hint = 'DtmPnt'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object Redo: TdxBarButton
      Tag = 2
      Caption = 'Redo'
      Category = 0
      Hint = 'Redo'
      Visible = ivAlways
      OnClick = UndoButtonClick
    end
    object dxBarButton8: TdxBarButton
      Tag = 102
      Caption = 'Lnode+'
      Category = 0
      Hint = 'Lnode+'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object dxBarButton9: TdxBarButton
      Tag = 104
      Caption = 'Poly Line'
      Category = 0
      Hint = 'Poly Line'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object dxBarButton10: TdxBarButton
      Tag = 1010
      Caption = 'Add Node'
      Category = 1
      Hint = 'Add Node'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
    object dxBarButton11: TdxBarButton
      Tag = 1020
      Caption = 'Add Pipe'
      Category = 1
      Hint = 'Add Pipe'
      KeyTip = '11'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectSpeedClick
    end
  end
  object LoadDial: TOpenDialog
    DefaultExt = 'Mex'
    Filter = 'Express|*.Mex'
    Left = 860
    Top = 8
  end
  object SaveDial: TSaveDialog
    DefaultExt = 'Mex'
    Filter = 'Express|*.Mex'
    Left = 816
    Top = 8
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1004
    Top = 4
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
    end
  end
end
