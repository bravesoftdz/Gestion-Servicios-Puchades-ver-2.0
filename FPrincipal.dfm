object principal: Tprincipal
  Left = 1509
  Top = 0
  Caption = 'Gesti'#243'n Servicios Puchades ver 2.0'
  ClientHeight = 861
  ClientWidth = 1385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 842
    Width = 1385
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    VisualStyle = vsGradient
    object RzDBStatusPane1: TRzDBStatusPane
      Left = 0
      Top = 0
      Height = 19
      Align = alLeft
      ParentShowHint = False
      ExplicitLeft = 1385
      ExplicitHeight = 20
    end
    object RzProgressStatus1: TRzProgressStatus
      Left = 100
      Top = 0
      Height = 19
      Align = alLeft
      ParentShowHint = False
      PartsComplete = 0
      Percent = 0
      TotalParts = 0
      ExplicitLeft = 1385
      ExplicitHeight = 20
    end
    object RzDBStateStatus1: TRzDBStateStatus
      Left = 200
      Top = 0
      Height = 19
      Align = alLeft
      ExplicitLeft = 1385
      ExplicitHeight = 20
    end
    object RzFieldStatus1: TRzFieldStatus
      Left = 300
      Top = 0
      Height = 19
      Align = alLeft
      Caption = ''
      ExplicitLeft = 1385
      ExplicitHeight = 20
    end
    object RzVersionInfoStatus1: TRzVersionInfoStatus
      Left = 400
      Top = 0
      Height = 19
      Align = alLeft
      Field = vifProductVersion
      ExplicitLeft = 1385
      ExplicitHeight = 20
    end
    object RzClockStatus1: TRzClockStatus
      Left = 500
      Top = 0
      Height = 19
      Align = alLeft
      ExplicitLeft = 1385
      ExplicitHeight = 20
    end
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 0
    Width = 1385
    Height = 29
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 0
    VisualStyle = vsGradient
  end
  object RzSplitter1: TRzSplitter
    Left = 0
    Top = 29
    Width = 1385
    Height = 813
    Position = 243
    Percent = 18
    Align = alClient
    TabOrder = 1
    BarSize = (
      243
      0
      247
      813)
    UpperLeftControls = (
      RzGroupBar1)
    LowerRightControls = (
      pagecontrol2)
    object RzGroupBar1: TRzGroupBar
      Left = 0
      Top = 0
      Width = 243
      Height = 813
      GradientColorStart = clBtnFace
      GradientColorStop = clBtnShadow
      GroupBorderSize = 8
      Align = alClient
      Color = clBtnShadow
      ParentColor = False
      TabOrder = 0
      object RzClientes: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 11
        Items = <
          item
            Caption = 'Listado'
            OnClick = RzClientesItems0Click
          end
          item
            Action = DataModule1.crearclientes
          end>
        Opened = True
        OpenedHeight = 77
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Clientes'
        ParentColor = False
      end
      object RzGroup1: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 13
        Items = <
          item
            Action = DataModule1.listapresupuestos
          end
          item
            Action = DataModule1.insertarpresupuesto
          end>
        Opened = True
        OpenedHeight = 77
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Presupuestos'
        ParentColor = False
      end
      object RzGroup2: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 5
        Items = <
          item
            Action = DataModule1.listaObras
          end>
        Opened = True
        OpenedHeight = 57
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Obras'
        ParentColor = False
      end
      object RzGroup3: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 9
        Items = <
          item
            Action = DataModule1.listafacturas
          end
          item
            Action = DataModule1.insertarFactura
          end>
        Opened = True
        OpenedHeight = 77
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Facturas'
        ParentColor = False
      end
      object RzGroup4: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 11
        Items = <
          item
            Action = DataModule1.lstadmnistradores
          end
          item
            Action = DataModule1.crearadministrador
          end>
        Opened = False
        OpenedHeight = 77
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Administradores'
        ParentColor = False
      end
      object RzGroup5: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 15
        Items = <
          item
            Action = DataModule1.actFacturascompras
          end
          item
            Action = DataModule1.actNominas
          end
          item
            Action = DataModule1.actlistsegurossociales
          end
          item
            Action = DataModule1.actseguro
          end>
        Opened = True
        OpenedHeight = 117
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Gastos'
        ParentColor = False
      end
      object RzGroup6: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 14
        Items = <
          item
            Action = DataModule1.actConfiguracion
          end
          item
            Action = DataModule1.actEmpresa
          end>
        Opened = True
        OpenedHeight = 77
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Configuraci'#243'n'
        ParentColor = False
      end
      object RzGroup7: TRzGroup
        Items = <
          item
            Action = DataModule1.actEstadisticasVentaCompras
          end>
        Opened = True
        OpenedHeight = 47
        DividerVisible = False
        Caption = 'Estadisticas'
        ParentColor = False
      end
    end
    object pagecontrol2: TRzPageControl
      Left = 0
      Top = 0
      Width = 1138
      Height = 813
      Hint = ''
      Align = alClient
      Color = 16119543
      FlatColor = 10263441
      ParentColor = False
      ShowCloseButton = True
      ShowCloseButtonOnActiveTab = True
      TabColors.HighlightBar = 1350640
      TabOrder = 0
      TabStyle = tsSquareCorners
      OnClose = pagecontrol2Close
      FixedDimension = 19
    end
  end
  object AppEvent1: TApplicationEvents
    Left = 1318
    Top = 42
  end
end
