object principal: Tprincipal
  Left = 0
  Top = 0
  Caption = 'Gesti'#243'n Servicios Puchades ver 2.0'
  ClientHeight = 737
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenuPrincipal
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 238
    Top = 57
    Width = 2
    Height = 658
    ExplicitLeft = 232
    ExplicitTop = 0
    ExplicitHeight = 715
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 715
    Width = 1184
    Height = 22
    Panels = <>
  end
  object Panel2: TPanel
    Left = 240
    Top = 57
    Width = 944
    Height = 658
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 234
    ExplicitWidth = 950
    object DBGrid1: TDBGrid
      Left = 232
      Top = 200
      Width = 401
      Height = 265
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 232
    Height = 652
    Align = alLeft
    Alignment = taLeftJustify
    AutoSize = True
    DockSite = True
    DragMode = dmAutomatic
    ShowCaption = False
    TabOrder = 2
    VerticalAlignment = taAlignTop
    OnDockOver = Panel1DockOver
    ExplicitLeft = -4
    ExplicitTop = 58
    ExplicitHeight = 658
  end
  object PageControl2: TPageControl
    Left = 240
    Top = 57
    Width = 944
    Height = 658
    Align = alClient
    DockSite = True
    Images = DataModule1.ImageList1
    TabOrder = 3
    OnDockDrop = PageControl2DockDrop
    OnDockOver = PageControl2DockOver
    ExplicitLeft = 234
    ExplicitWidth = 950
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 0
    Width = 1184
    Height = 57
    Align = alTop
    TabOrder = 4
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 257
      Height = 48
      ButtonHeight = 41
      ButtonWidth = 49
      Caption = 'ToolBar1'
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        AllowAllUp = True
        Caption = 'Nuevo'
        ImageIndex = 0
      end
    end
  end
  object MainMenuPrincipal: TMainMenu
    Left = 520
    Top = 40
    object ddd1: TMenuItem
      Caption = 'Clientes'
    end
    object Provedores1: TMenuItem
      Caption = 'Provedores'
    end
    object Administradores1: TMenuItem
      Caption = 'Administradores'
    end
    object rabajadores1: TMenuItem
      Caption = 'Trabajadores'
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.fdClientes
    Left = 626
    Top = 40
  end
end
