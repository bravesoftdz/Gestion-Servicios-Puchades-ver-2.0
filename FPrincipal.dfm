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
  Position = poDesktopCenter
  ScreenSnap = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 232
    Top = 0
    Width = 2
    Height = 715
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 715
    Width = 1184
    Height = 22
    Panels = <>
  end
  object Panel2: TPanel
    Left = 234
    Top = 0
    Width = 950
    Height = 715
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 233
    ExplicitWidth = 951
    object PageControl2: TPageControl
      Left = 1
      Top = 1
      Width = 948
      Height = 713
      Align = alClient
      DockSite = True
      TabOrder = 0
      ExplicitWidth = 949
    end
    object DBGrid1: TDBGrid
      Left = 208
      Top = 144
      Width = 353
      Height = 297
      DataSource = DataSource1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 232
    Height = 715
    Align = alLeft
    DockSite = True
    DragMode = dmAutomatic
    TabOrder = 2
    ExplicitLeft = 1
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
    Left = 426
    Top = 296
  end
end