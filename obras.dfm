object FObras: TFObras
  Left = 1509
  Top = 0
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Obra'
  ClientHeight = 782
  ClientWidth = 1194
  Color = clBtnFace
  Constraints.MaxWidth = 1200
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1194
    Height = 782
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 55
      Width = 1186
      Height = 93
      Align = alTop
      Anchors = [akTop, akRight]
      Caption = 'Datos del Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 12
        Top = 18
        Width = 1169
        Height = 63
        Margins.Left = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = 'Datos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object BTBuscarCliente: TButton
          Left = 701
          Top = 16
          Width = 32
          Height = 32
          HotImageIndex = 0
          ImageAlignment = iaCenter
          ImageIndex = 0
          Images = DataModule1.icopeque
          PressedImageIndex = 0
          Style = bsCommandLink
          TabOrder = 0
          StyleElements = []
          OnClick = BTBuscarClienteClick
        end
        object rDBEdit1: TrDBEdit
          Left = 65
          Top = 24
          Width = 41
          Height = 21
          CharCase = ecUpperCase
          DataField = 'idcontactos'
          DataSource = dscliente
          ReadOnly = True
          TabOrder = 1
          DBEditLabel.OwnCaption = 'C'#243'digo'
          DBEditLabel.ShowRequiredBold = True
          DBEditLabel.Position = lpLeftCenter
        end
        object rDBCIF: TrDBEdit
          Left = 157
          Top = 24
          Width = 140
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cif'
          DataSource = dscliente
          ReadOnly = True
          TabOrder = 2
          DBEditLabel.OwnCaption = 'C.I.F'
          DBEditLabel.ShowRequiredBold = True
          DBEditLabel.Position = lpLeftCenter
        end
        object rDBNombre: TrDBEdit
          Left = 358
          Top = 24
          Width = 337
          Height = 21
          CharCase = ecUpperCase
          DataField = 'nombre'
          DataSource = dscliente
          ReadOnly = True
          TabOrder = 3
          DBEditLabel.OwnCaption = 'Nombre'
          DBEditLabel.ShowRequiredMark = False
          DBEditLabel.Position = lpLeftCenter
        end
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 154
      Width = 1186
      Height = 151
      Align = alTop
      Caption = 'Datos Obra'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object spaprobado: TShape
        Left = 1020
        Top = 75
        Width = 25
        Height = 17
        Shape = stCircle
      end
      object spEjecutado: TShape
        Left = 1020
        Top = 98
        Width = 25
        Height = 17
        Shape = stCircle
      end
      object spcarpetas: TShape
        Left = 1020
        Top = 121
        Width = 25
        Height = 17
        Shape = stCircle
      end
      object Label2: TLabel
        Left = 1056
        Top = 76
        Width = 55
        Height = 13
        Caption = 'Aprobado'
      end
      object Label3: TLabel
        Left = 1056
        Top = 99
        Width = 56
        Height = 13
        Caption = 'Ejecutado'
      end
      object Label4: TLabel
        Left = 1056
        Top = 122
        Width = 51
        Height = 13
        Caption = 'Carpetas'
      end
      object Shape2: TShape
        Left = 791
        Top = 59
        Width = 1
        Height = 81
      end
      object rDBNumero: TrDBEdit
        Left = 77
        Top = 32
        Width = 121
        Height = 21
        DataField = 'ID_obra'
        DataSource = dsobras
        TabOrder = 0
        DBEditLabel.OwnCaption = 'N'#250'mero'
        DBEditLabel.ShowRequiredBold = True
        DBEditLabel.Position = lpLeftCenter
      end
      object rDBDescripcion: TrDBEdit
        Left = 279
        Top = 32
        Width = 554
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Descripcion'
        DataSource = dsobras
        TabOrder = 1
        DBEditLabel.OwnCaption = 'Descripci'#243'n'
        DBEditLabel.ShowRequiredBold = True
        DBEditLabel.Position = lpLeftCenter
      end
      object rDBDateTimeInicio: TrDBDateTimePicker
        Left = 110
        Top = 72
        Width = 88
        Height = 21
        Date = 43695.754134594910000000
        Time = 43695.754134594910000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        DataField = 'FechaComienzo'
        DataSource = dsobras
        DBEditLabel.OwnCaption = 'Fecha Inicio'
        DBEditLabel.Position = lpLeftCenter
        DBEditLabel.Font.Charset = DEFAULT_CHARSET
        DBEditLabel.Font.Color = clWindowText
        DBEditLabel.Font.Height = -11
        DBEditLabel.Font.Name = 'Tahoma'
        DBEditLabel.Font.Style = []
        DBEditLabel.ParentFont = False
        FormatEmpty = '__.__.__'
      end
      object rDBDateTimeFinal: TrDBDateTimePicker
        Left = 279
        Top = 73
        Width = 88
        Height = 21
        Date = 43695.754134594910000000
        Time = 43695.754134594910000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        DataField = 'FechaFin'
        DataSource = dsobras
        DBEditLabel.OwnCaption = 'Fecha Final'
        DBEditLabel.Position = lpLeftCenter
        DBEditLabel.Font.Charset = DEFAULT_CHARSET
        DBEditLabel.Font.Color = clWindowText
        DBEditLabel.Font.Height = -11
        DBEditLabel.Font.Name = 'Tahoma'
        DBEditLabel.Font.Style = []
        DBEditLabel.ParentFont = False
        FormatEmpty = '__.__.__'
      end
      object rDBPartidas: TrDBEdit
        Left = 463
        Top = 72
        Width = 57
        Height = 21
        DataField = 'partidas'
        DataSource = dsobras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        DBEditLabel.OwnCaption = 'Partidas'
        DBEditLabel.ShowRequiredBold = True
        DBEditLabel.Position = lpLeftCenter
        DBEditLabel.Font.Charset = DEFAULT_CHARSET
        DBEditLabel.Font.Color = clWindowText
        DBEditLabel.Font.Height = -11
        DBEditLabel.Font.Name = 'Tahoma'
        DBEditLabel.Font.Style = []
        DBEditLabel.ParentFont = False
      end
      object rDBTotalObra: TrDBEdit
        Left = 608
        Top = 72
        Width = 121
        Height = 21
        DataField = 'ImporteObra'
        DataSource = dsobras
        TabOrder = 5
        DBEditLabel.OwnCaption = 'Total Obra'
        DBEditLabel.ShowRequiredBold = True
        DBEditLabel.Position = lpLeftCenter
      end
      object rDBRuta: TrDBEdit
        Left = 77
        Top = 122
        Width = 500
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Path'
        DataSource = dsobras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        DBEditLabel.OwnCaption = 'Ruta'
        DBEditLabel.ShowRequiredBold = True
        DBEditLabel.Position = lpLeftCenter
        DBEditLabel.Font.Charset = DEFAULT_CHARSET
        DBEditLabel.Font.Color = clWindowText
        DBEditLabel.Font.Height = -11
        DBEditLabel.Font.Name = 'Tahoma'
        DBEditLabel.Font.Style = []
        DBEditLabel.ParentFont = False
      end
    end
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 311
      Width = 1186
      Height = 371
      ActivePage = certificaciones
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = PageControl1Change
      object lineas: TTabSheet
        Caption = 'Lineas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        DesignSize = (
          1178
          343)
        object ControlBar2: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1172
          Height = 32
          Align = alTop
          DockSite = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object ToolBar2: TToolBar
            Left = 314
            Top = 2
            Width = 72
            Height = 22
            AutoSize = True
            Caption = 'Editar'
            Images = ImageList1
            List = True
            TabOrder = 1
            object ToolButton11: TToolButton
              Left = 0
              Top = 0
              Action = EditCut
            end
            object ToolButton12: TToolButton
              Left = 23
              Top = 0
              Action = EditCopy
            end
            object ToolButton13: TToolButton
              Left = 46
              Top = 0
              Action = EditPaste
            end
          end
          object RzDBNavigator1: TRzDBNavigator
            Left = 11
            Top = 2
            Width = 290
            Height = 22
            DataSource = dslineasobra
            BorderOuter = fsNone
            TabOrder = 0
          end
        end
        object LabeledEdit5: TLabeledEdit
          Left = -32326
          Top = 296
          Width = 129
          Height = 21
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          BiDiMode = bdLeftToRight
          EditLabel.Width = 59
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'Total Obra'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          OnChange = LabeledEdit5Change
        end
        object LabeledEdit11: TLabeledEdit
          Left = -32326
          Top = 296
          Width = 129
          Height = 21
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          BiDiMode = bdLeftToRight
          EditLabel.Width = 29
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'Total'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 5
        end
        object LabeledEdit13: TLabeledEdit
          Left = -32326
          Top = 296
          Width = 129
          Height = 21
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          BiDiMode = bdLeftToRight
          EditLabel.Width = 53
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = ' Obra IVA'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 6
        end
        object LabeledEdit14: TLabeledEdit
          Left = -32326
          Top = 296
          Width = 129
          Height = 21
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          BiDiMode = bdLeftToRight
          EditLabel.Width = 47
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'Tipo IVA'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
        end
        object lbepartidasejecutadas: TLabeledEdit
          Left = -32326
          Top = 295
          Width = 129
          Height = 21
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          BiDiMode = bdLeftToRight
          EditLabel.Width = 113
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'Partidas ejecutadas'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
          OnChange = LabeledEdit5Change
        end
        object rDBGrid2: TrDBGrid
          Left = 0
          Top = 38
          Width = 1178
          Height = 187
          Align = alTop
          DataSource = dslineasobra
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          ColumnWidth = cwAutoWidth
          TitleLines = 2
          RowFixHeight = 23
          FooterRow.FooterVisible = True
          FooterRow.FieldFooterDefs.Strings = (
            'id_lineaobra=%COUNTVAL partidas;'
            'total=%SUM '#8364';')
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'id_lineaobra'
              Title.Alignment = taCenter
              Title.Caption = 'Partida'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descripcion'
              Title.Caption = 'Descripci'#243'n'
              Width = 537
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'total'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ejecutado'
              Title.Alignment = taCenter
              Title.Caption = 'Ejecutado'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'presupuestos_id_presupuesto'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo Presupuesto'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'presupuestos_grupo'
              Title.Alignment = taCenter
              Title.Caption = 'Grupo Presupuesto'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'presupuestos_Id_Partida'
              Title.Alignment = taCenter
              Title.Caption = 'Partida Presupuesto'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'facturas_id_factura'
              Title.Alignment = taCenter
              Title.Caption = 'Factura'
              Width = 54
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'facturas_ano'
              Title.Alignment = taCenter
              Title.Caption = 'A'#241'o'
              Width = 54
              Visible = True
            end>
        end
      end
      object documentacion: TTabSheet
        Caption = 'Documentaci'#243'n'
        ImageIndex = 1
        object shellDocumentacion1: TRzShellList
          Left = 0
          Top = 0
          Width = 1178
          Height = 318
          Align = alClient
          IconOptions.AutoArrange = True
          TabOrder = 0
        end
        object statDocumentacion: TStatusBar
          Left = 0
          Top = 318
          Width = 1178
          Height = 25
          Panels = <>
        end
      end
      object fotografias: TTabSheet
        Caption = 'Fotograf'#237'as'
        ImageIndex = 2
        object statFotos: TStatusBar
          Left = 0
          Top = 318
          Width = 1178
          Height = 25
          Panels = <>
        end
        object shellFotos: TRzShellList
          Left = 0
          Top = 0
          Width = 1178
          Height = 318
          Align = alClient
          IconOptions.AutoArrange = True
          TabOrder = 0
        end
      end
      object certificaciones: TTabSheet
        Caption = 'Certificaciones'
        ImageIndex = 3
        object ctrlbr1: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1172
          Height = 33
          Align = alTop
          TabOrder = 0
          object tlb1: TToolBar
            Left = 314
            Top = 2
            Width = 150
            Height = 22
            Caption = 'tlb1'
            TabOrder = 1
            object btnNuevaCertificacion: TToolButton
              Left = 0
              Top = 0
              Action = actNuevaCertificacion
            end
            object btnBorrarCertificacion: TToolButton
              Left = 23
              Top = 0
              Action = actBorrarCertificacion
            end
          end
          object RzDBNavigator3: TRzDBNavigator
            Left = 11
            Top = 2
            Width = 290
            Height = 22
            DataSource = dslineasCertificaciones
            BorderOuter = fsNone
            TabOrder = 0
          end
        end
        object rDBGridClientes1: TrDBGrid_MS
          AlignWithMargins = True
          Left = 3
          Top = 98
          Width = 1172
          Height = 242
          Align = alClient
          DataSource = dslineasCertificaciones
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          FooterRow.FooterVisible = True
          FooterRow.FieldFooterDefs.Strings = (
            'importe=%SUM '#8364';'
            'ImporteOrigen=%SUM '#8364';'
            'ncertificacion=%COUNTVAL Certificaciones;')
          OnFooterCellClick = rDBGridClientes1FooterCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ncertificacion'
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'fechacertificacion'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ImporteOrigen'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'importe'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'reten'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IVA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'total'
              Visible = True
            end>
        end
        object RzGroupBox1: TRzGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 42
          Width = 1172
          Height = 50
          Align = alTop
          Caption = 'Certificaci'#243'n '
          TabOrder = 1
          object rDBEdit10: TrDBEdit
            Left = 612
            Top = 16
            Width = 88
            Height = 21
            DataField = 'total'
            DataSource = dscertificacion
            TabOrder = 4
            DBEditLabel.OwnCaption = 'Total'
            DBEditLabel.ShowRequiredBold = True
            DBEditLabel.Position = lpLeftCenter
          end
          object rDBDateTimePicker1: TrDBDateTimePicker
            Left = 143
            Top = 16
            Width = 88
            Height = 21
            Date = 43706.771362152780000000
            Time = 43706.771362152780000000
            TabOrder = 1
            DataField = 'fechaFinretencion'
            DataSource = dscertificacion
            DBEditLabel.OwnCaption = 'Fecha Fin Retenci'#243'n'
            DBEditLabel.ShowRequiredBold = True
            DBEditLabel.Position = lpLeftCenter
            FormatEmpty = '__.__.__'
          end
          object rDBEdit11: TrDBEdit
            Left = 456
            Top = 16
            Width = 88
            Height = 21
            DataField = 'totalretencion'
            DataSource = dscertificacion
            TabOrder = 3
            DBEditLabel.OwnCaption = 'Retenci'#243'n'
            DBEditLabel.ShowRequiredBold = True
            DBEditLabel.Position = lpLeftCenter
          end
          object rDBEdit12: TrDBEdit
            Left = 305
            Top = 16
            Width = 88
            Height = 21
            DataField = 'retencion'
            DataSource = dscertificacion
            TabOrder = 2
            DBEditLabel.OwnCaption = '% Retenci'#243'n'
            DBEditLabel.ShowRequiredBold = True
            DBEditLabel.Position = lpLeftCenter
          end
          object rDBEdit13: TrDBEdit
            Left = 784
            Top = 16
            Width = 88
            Height = 21
            DataField = 'importecertificado'
            DataSource = dscertificacion
            TabOrder = 5
            DBEditLabel.OwnCaption = 'Certificado'
            DBEditLabel.ShowRequiredBold = True
            DBEditLabel.Position = lpLeftCenter
          end
          object rDBEdit14: TrDBEdit
            Left = 929
            Top = 16
            Width = 88
            Height = 21
            DataField = 'importeFalta'
            DataSource = dscertificacion
            TabOrder = 6
            DBEditLabel.OwnCaption = 'Falta'
            DBEditLabel.ShowRequiredBold = True
            DBEditLabel.Position = lpLeftCenter
          end
        end
      end
      object Estadisticas: TTabSheet
        Caption = 'Contactos'
        ImageIndex = 4
        object ctrlbr2: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1172
          Height = 32
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object tlb5: TToolBar
            Left = 314
            Top = 2
            Width = 72
            Height = 22
            AutoSize = True
            Caption = 'Editar'
            Images = ImageList1
            List = True
            TabOrder = 1
            object btn2: TToolButton
              Left = 0
              Top = 0
              Action = EditCut
            end
            object btn3: TToolButton
              Left = 23
              Top = 0
              Action = EditCopy
            end
            object btn4: TToolButton
              Left = 46
              Top = 0
              Action = EditPaste
            end
          end
          object tlb6: TToolBar
            AlignWithMargins = True
            Left = 399
            Top = 2
            Width = 158
            Height = 48
            ButtonHeight = 30
            ButtonWidth = 31
            Caption = 'ToolBar3'
            Images = DataModule1.icopeque
            TabOrder = 2
            object btn5: TToolButton
              Left = 0
              Top = 0
              Caption = 'btn1'
              ImageIndex = 12
              OnClick = btn5Click
            end
          end
          object RzDBNavigator2: TRzDBNavigator
            Left = 11
            Top = 2
            Width = 290
            Height = 22
            DataSource = dsContactosObra
            BorderOuter = fsNone
            TabOrder = 0
          end
        end
        object rDBGrid1: TrDBGrid
          Left = 0
          Top = 38
          Width = 1178
          Height = 305
          Align = alClient
          DataSource = dsContactosObra
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 2
          RowFixHeight = 23
          FixedColText.FixedColWidth = 23
          FooterRow.FooterVisible = True
          FooterRow.FieldFooterDefs.Strings = (
            'id_contacto=%COUNTVAL contactos;')
          Columns = <
            item
              Expanded = False
              FieldName = 'id_presupuesto'
              Title.Alignment = taRightJustify
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'id_contacto'
              Title.Alignment = taRightJustify
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 50
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'pta'
              Title.Alignment = taCenter
              Title.Caption = 'Puerta'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nombre'
              Title.Caption = 'Nombre'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 245
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'telefono1'
              Title.Alignment = taCenter
              Title.Caption = 'Tel'#233'fono 1'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'telefono2'
              Title.Alignment = taCenter
              Title.Caption = 'Tel'#233'fono 2'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'telefono3'
              Title.Alignment = taCenter
              Title.Caption = 'Tel'#233'fono 3'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mail'
              Title.Caption = 'Mail'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 263
              Visible = True
            end>
        end
      end
      object tsmateriales: TTabSheet
        Caption = 'Materiales'
        ImageIndex = 5
        object rGroupBox1: TrGroupBox
          Left = 0
          Top = 0
          Width = 561
          Height = 343
          Align = alLeft
          Caption = 'Pinturas'
          TabOrder = 0
          CaptionHeight = 20
          CaptionColor = clSkyBlue
          object rGroupBox3: TrGroupBox
            Left = 20
            Top = 32
            Width = 249
            Height = 153
            Caption = 'Pintura 1'
            TabOrder = 0
            CaptionColor = clGradientActiveCaption
            object rDBEdit5: TrDBEdit
              Left = 53
              Top = 90
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'codigo_pintura1'
              DataSource = dsobras
              TabOrder = 2
              DBEditLabel.OwnCaption = 'C'#243'digo'
              DBEditLabel.Position = lpLeftCenter
            end
            object rDBComboBox1: TrDBComboBox
              Left = 53
              Top = 36
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'marca_pintura1'
              DataSource = dsobras
              DropDownCount = 15
              TabOrder = 0
              DBEditLabel.OwnCaption = 'Marca'
              DBEditLabel.Position = lpLeftCenter
              BoundLabel.Position = lpTopRight
            end
            object rDBComboBox2: TrDBComboBox
              Left = 53
              Top = 63
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'tipo_pintura1'
              DataSource = dsobras
              DropDownCount = 15
              TabOrder = 1
              DBEditLabel.OwnCaption = 'Tipo'
              DBEditLabel.Position = lpLeftCenter
              BoundLabel.Position = lpTopRight
            end
            object rDBEdit2: TrDBEdit
              Left = 53
              Top = 117
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'color1'
              DataSource = dsobras
              TabOrder = 3
              DBEditLabel.OwnCaption = 'Color'
              DBEditLabel.Position = lpLeftCenter
            end
          end
          object rGroupBox4: TrGroupBox
            Left = 299
            Top = 32
            Width = 249
            Height = 153
            Caption = 'Pintura 2'
            TabOrder = 1
            CaptionColor = clGradientActiveCaption
            object rDBEdit3: TrDBEdit
              Left = 53
              Top = 90
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'codigo_pintura2'
              DataSource = dsobras
              TabOrder = 2
              DBEditLabel.OwnCaption = 'C'#243'digo'
              DBEditLabel.Position = lpLeftCenter
            end
            object rDBComboBox3: TrDBComboBox
              Left = 53
              Top = 36
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'marca_pintura2'
              DataSource = dsobras
              DropDownCount = 15
              TabOrder = 0
              DBEditLabel.OwnCaption = 'Marca'
              DBEditLabel.Position = lpLeftCenter
              BoundLabel.Position = lpTopRight
            end
            object rDBComboBox4: TrDBComboBox
              Left = 53
              Top = 63
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'tipo_pintura2'
              DataSource = dsobras
              DropDownCount = 15
              TabOrder = 1
              DBEditLabel.OwnCaption = 'Tipo'
              DBEditLabel.Position = lpLeftCenter
              BoundLabel.Position = lpTopRight
            end
            object rDBEdit4: TrDBEdit
              Left = 53
              Top = 117
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'color2'
              DataSource = dsobras
              TabOrder = 3
              DBEditLabel.OwnCaption = 'Color'
              DBEditLabel.Position = lpLeftCenter
            end
          end
          object rGroupBox5: TrGroupBox
            Left = 20
            Top = 187
            Width = 249
            Height = 153
            Caption = 'Pintura 3'
            TabOrder = 2
            CaptionColor = clGradientActiveCaption
            object rDBEdit6: TrDBEdit
              Left = 53
              Top = 90
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'codigo_pintura3'
              DataSource = dsobras
              TabOrder = 2
              DBEditLabel.OwnCaption = 'C'#243'digo'
              DBEditLabel.Position = lpLeftCenter
            end
            object rDBComboBox5: TrDBComboBox
              Left = 53
              Top = 36
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'marca_pintura3'
              DataSource = dsobras
              DropDownCount = 15
              TabOrder = 0
              DBEditLabel.OwnCaption = 'Marca'
              DBEditLabel.Position = lpLeftCenter
              BoundLabel.Position = lpTopRight
            end
            object rDBComboBox6: TrDBComboBox
              Left = 53
              Top = 63
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'tipo_pintura3'
              DataSource = dsobras
              DropDownCount = 15
              TabOrder = 1
              DBEditLabel.OwnCaption = 'Tipo'
              DBEditLabel.Position = lpLeftCenter
              BoundLabel.Position = lpTopRight
            end
            object rDBEdit7: TrDBEdit
              Left = 53
              Top = 117
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'color3'
              DataSource = dsobras
              TabOrder = 3
              DBEditLabel.OwnCaption = 'Color'
              DBEditLabel.Position = lpLeftCenter
            end
          end
        end
        object rGroupBox2: TrGroupBox
          Left = 591
          Top = 0
          Width = 587
          Height = 343
          Align = alRight
          Caption = 'M'#225'rmol - Azulejos'
          TabOrder = 1
          CaptionHeight = 20
          CaptionColor = clSkyBlue
          object rGroupBox6: TrGroupBox
            Left = 12
            Top = 32
            Width = 249
            Height = 153
            Caption = 'Azulejos 1'
            TabOrder = 0
            CaptionColor = clGradientActiveCaption
            object rDBEdit8: TrDBEdit
              Left = 53
              Top = 74
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'modelo_azulejo1'
              DataSource = dsobras
              TabOrder = 1
              DBEditLabel.OwnCaption = 'Modelo'
              DBEditLabel.Position = lpLeftCenter
            end
            object rDBComboBox7: TrDBComboBox
              Left = 53
              Top = 36
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'marca_azulejo1'
              DataSource = dsobras
              DropDownCount = 15
              TabOrder = 0
              DBEditLabel.OwnCaption = 'Marca'
              DBEditLabel.Position = lpLeftCenter
              BoundLabel.Position = lpTopRight
            end
          end
          object rGroupBox7: TrGroupBox
            Left = 280
            Top = 32
            Width = 249
            Height = 153
            Caption = 'Azulejos 2'
            TabOrder = 1
            CaptionColor = clGradientActiveCaption
            object rDBEdit9: TrDBEdit
              Left = 53
              Top = 74
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'modelo_azulejo2'
              DataSource = dsobras
              TabOrder = 1
              DBEditLabel.OwnCaption = 'Modelo'
              DBEditLabel.Position = lpLeftCenter
            end
            object rDBComboBox8: TrDBComboBox
              Left = 53
              Top = 36
              Width = 172
              Height = 21
              CharCase = ecUpperCase
              DataField = 'marca_azulejo2'
              DataSource = dsobras
              DropDownCount = 15
              TabOrder = 0
              DBEditLabel.OwnCaption = 'Marca'
              DBEditLabel.Position = lpLeftCenter
              BoundLabel.Position = lpTopRight
            end
          end
        end
      end
    end
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1186
      Height = 45
      ButtonHeight = 42
      ButtonWidth = 41
      Caption = 'ToolBar1'
      Images = DataModule1.ImageList1
      List = True
      TabOrder = 0
      object ToolButton1: TToolButton
        AlignWithMargins = True
        Left = 0
        Top = 0
        Action = guardarobra
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton4: TToolButton
        Left = 41
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        AlignWithMargins = True
        Left = 49
        Top = 0
        Action = abrirpresupuesto
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton2: TToolButton
        AlignWithMargins = True
        Left = 90
        Top = 0
        Action = actFacturar
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton3: TToolButton
        AlignWithMargins = True
        Left = 131
        Top = 0
        Action = actanadirlineaspresupuestos
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton5: TToolButton
        AlignWithMargins = True
        Left = 172
        Top = 0
        Caption = 'ToolButton5'
        Enabled = False
        ImageIndex = 3
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton7: TToolButton
        Left = 213
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        AlignWithMargins = True
        Left = 221
        Top = 0
        Action = abrircarpeta
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton10: TToolButton
        Left = 262
        Top = 0
        Action = carpetadocumentacion
      end
      object ToolButton9: TToolButton
        AlignWithMargins = True
        Left = 303
        Top = 0
        Action = cerrarpres
        ParentShowHint = False
        ShowHint = True
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 688
      Width = 400
      Height = 90
      Align = alLeft
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Observaciones'
      TabOrder = 4
      object Memo1: TMemo
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 390
        Height = 67
        Align = alClient
        TabOrder = 0
      end
    end
    object GroupBox5: TGroupBox
      AlignWithMargins = True
      Left = 883
      Top = 692
      Width = 307
      Height = 86
      Margins.Top = 7
      Align = alRight
      TabOrder = 5
      DesignSize = (
        307
        86)
      object Shape1: TShape
        Left = 19
        Top = 12
        Width = 25
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Shape = stCircle
      end
      object Guardar: TButton
        Left = 138
        Top = 12
        Width = 80
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Guardar'
        Enabled = False
        Images = DataModule1.ImageList1
        TabOrder = 1
        OnClick = GuardarClick
      end
      object cerrar: TButton
        Left = 224
        Top = 12
        Width = 75
        Height = 26
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Cerrar'
        TabOrder = 2
        OnClick = cerrarClick
      end
      object btnAceptar: TButton
        Left = 57
        Top = 11
        Width = 75
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Aceptar'
        TabOrder = 0
        OnClick = btnAceptarClick
      end
    end
  end
  object dialruta: TOpenDialog
    Left = 820
    Top = 268
  end
  object ActionManager1: TActionManager
    Images = DataModule1.ImageList1
    Left = 612
    Top = 20
    StyleName = 'Platform Default'
    object abrircarpeta: TAction
      Caption = 'Abrir carpeta'
      Hint = 'Carpeta de Obra'
      ImageIndex = 14
      OnExecute = abrircarpetaExecute
    end
    object abrirpresupuesto: TAction
      Caption = 'Abrir Presupuesto'
      Hint = 'Abrir presupuesto'
      ImageIndex = 13
    end
    object guardarobra: TAction
      Caption = 'Guardar'
      Enabled = False
      Hint = 'Guardar Obra'
      ImageIndex = 7
      OnExecute = guardarobraExecute
    end
    object actFacturar: TAction
      Caption = 'Facturar'
      Hint = 'Facturar Obra'
      ImageIndex = 40
      OnExecute = actFacturarExecute
    end
    object actanadirlineaspresupuestos: TAction
      Caption = 'Presupuestos'
      Hint = 'Enviar mail'
      ImageIndex = 30
    end
    object cerrarpres: TAction
      Caption = 'Cerrar Presupuesto'
      Hint = 'Cerrar'
      ImageIndex = 15
      OnExecute = cerrarpresExecute
    end
    object carpetadocumentacion: TAction
      Caption = 'Carpetas documentaci'#243'n'
      Hint = 'Carpetas documentaci'#243'n y fotograf'#237'as'
      ImageIndex = 8
      OnExecute = carpetadocumentacionExecute
    end
  end
  object ImageList1: TImageList
    Left = 776
    Top = 320
    Bitmap = {
      494C0101040008000C0110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      00000000000000000000000000000000000000000000E7CE72FFF1D265FFF2D2
      67FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      000080000000800000008000000080000000000000000000000000000000F1DE
      95FFEFDA8FFFF0D884FFF1D67CFFF0D371FFF1D26BFFF0D16AFFFEEAA3FFEAD4
      82FFF4D064FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000800000000000000000000000800000000000000000000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000000000000000000000000000F3DC
      91FF968144FF8A7A45FF129328FF18902BFF9C8D55FFA6975FFFB1A369FFB8A8
      7DFFF2D475FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000800000000000000000000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000086868600008080008686
      8600008080008686860080000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF0080000000000000000000000000000000CBB3
      5FFF998649FF00000000219E38FF209D37FF0000000000000000000000000000
      0000F0D779FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00800000000000000000000000000000000000
      0000800000000000000000000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000000808000868686000080
      8000868686000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000000000000000000000000000CFB1
      64FF22201D24000000002FAD4AFF2CAA47FF34C251FF00000000000000000000
      0000F4D983FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000008000000080000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000086868600008080008686
      8600008080008686860080000000FFFFFF00000000000000000000000000FFFF
      FF0080000000800000008000000080000000000000000000000000000000D1B3
      6CFF0000000026A53FFF3AB956FF36B552FF3FC45DFF00000000000000000000
      0000F1DC8BFF0000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000800000000000000080000000800000008000
      0000000000000000000000000000000000000000000000808000868686000080
      8000868686000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000000000000E0D59BFFD1B1
      6AFF000000002FB14CFF3EBF5EFF3BBC5BFF25A93FFF00000000000000000000
      0000F3DE93FF0000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000800000000000000080000000000000000000
      0000000000000000000000000000000000000000000086868600008080008686
      8600008080008686860080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000008000000000000000000000000000000000000000F1E097FFBAA2
      60FF25A73CFF39BA57FF0E7621FF3CC262FF30B24DFF2EAF46FF000000000000
      0000F4E19DFF0000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF000000000000000000FFFF
      FF00800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000868686000080
      8000868686000080800080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000F6E6A1FFA08A
      50FF2DB24BFF40C15EFF248D3CFF0000000038BC57FF20A33CFF000000000000
      0000F3E4A5FF0000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600008080008686
      8600008080008686860000808000868686000080800086868600008080008686
      8600008080000000000000000000000000000000000000000000FCE5A1FFC1A7
      65FF3CC05BFF32B449FF00000000000000003DCB62FF2CB44AFF000000000000
      0000F3E8AFFF0000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000868686000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600868686000000000000000000000000000000000000000000F7DD90FFCDAF
      68FF000000000000000000000000000000000000000037BE57FF2BA945FF0000
      0000F7E9B8FF0000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600868686000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600008080000000000000000000000000000000000000000000EDD278FFBBA4
      60FF0000000000000000000000000000000000000000000000002DB74BFF0000
      0000FAEABFFF0000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000868686000080
      80000000000000FFFF00000000000000000000FFFF0000000000868686000080
      8000868686000000000000000000000000000000000000000000EED16EFFA291
      59FF00000000000000000000000000000000000000000000000030C154FF23B1
      40FFF9EEC8FF0000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFBD2FFF4D5
      72FFEAD083FFF5D985FFF4DC90FFF7E19AFFF7E5A6FFF8E8B3FFFAECBCFF39BA
      51FF12862DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3D9
      75FFF5DA84FFF1DD8FFFEFDF9CFFF1E4B0FFFAF0C8FFFFF6D4FFFBF1D3FFF3E7
      C5FF2BB74CFF17772AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000FFFFF9FFFC000000
      FE00F6CF80000000FE00F6B700000000FE00F6B7000000008000F8B700000000
      8000FE8F000100008000FE3F000300008000FF7F000300008001FE3F00030000
      8003FEBF000300008007FC9F0FC30000807FFDDF0003000080FFFDDF80070000
      81FFFDDFF87F0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ActionManager2: TActionManager
    Images = ImageList1
    Left = 1072
    Top = 136
    StyleName = 'Platform Default'
    object EditCopy: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16451
    end
    object EditCut: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16472
    end
    object EditPaste: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object AprobarTodos: TAction
      Caption = 'AprobarTodos'
      Hint = 'Aprobar todos los presupuestos'
      ImageIndex = 3
    end
    object actNuevaCertificacion: TAction
      Category = 'Certificacones'
      Caption = 'actNuevaCertificacion'
      Hint = 'Nueva Certificaci'#243'n'
      ImageIndex = 6
      OnExecute = actNuevaCertificacionExecute
      OnUpdate = actNuevaCertificacionUpdate
    end
    object actBorrarLineaCertificacion: TAction
      Category = 'Certificacones'
      Caption = 'actBorrarLineaCertificacion'
      Hint = 'Borrar linea certificaci'#243'n'
      ImageIndex = 7
      OnExecute = actBorrarLineaCertificacionExecute
      OnUpdate = actBorrarLineaCertificacionUpdate
    end
    object actBorrarCertificacion: TAction
      Category = 'Certificacones'
      Caption = 'actBorrarCertificacion'
      Hint = 'Borrar certificaci'#243'n'
      ImageIndex = 8
      OnExecute = actBorrarCertificacionExecute
      OnUpdate = actBorrarCertificacionUpdate
    end
    object actGuardarCertificacion: TAction
      Category = 'Certificacones'
      Caption = 'Guardar'
      OnExecute = actGuardarCertificacionExecute
      OnUpdate = actGuardarCertificacionUpdate
    end
  end
  object FDCliente: TFDQuery
    AfterOpen = FDClienteAfterOpen
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select idcontactos, nombre, cif, familia from clientes where idc' +
        'ontactos=:id_cliente')
    Left = 452
    Top = 26
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDClienteidcontactos: TFDAutoIncField
      FieldName = 'idcontactos'
      Origin = 'IdContactos'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDClientenombre: TStringField
      FieldName = 'nombre'
      Origin = 'Nombre'
      Required = True
      Size = 100
    end
    object FDClientecif: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cif'
      Origin = 'CIF'
      Size = 50
    end
    object FDClientefamilia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'familia'
      Origin = 'familia'
    end
  end
  object FDObra: TFDQuery
    AfterInsert = FDObraAfterInsert
    AfterEdit = FDObraAfterEdit
    AfterPost = FDObraAfterPost
    CachedUpdates = True
    AfterApplyUpdates = FDObraAfterApplyUpdates
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select * from obras where id_cliente=:ID_cliente and id_obra=:ID' +
        '_obra')
    Left = 16
    Top = 215
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_OBRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdtncfldFDObraID_obra: TFDAutoIncField
      FieldName = 'ID_obra'
      Origin = 'ID_obra'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object mfldFDObraDescripcion: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      BlobType = ftMemo
    end
    object dtmfldFDObraFechaComienzo: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FechaComienzo'
      Origin = 'FechaComienzo'
    end
    object intgrfldFDObraID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
      Origin = 'ID_Cliente'
      Required = True
    end
    object fltfldFDObraImporteObra: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ImporteObra'
      Origin = 'ImporteObra'
    end
    object blnfldFDObraEjecutado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecutado'
      Origin = 'Ejecutado'
      OnChange = blnfldFDObraEjecutadoChange
    end
    object dtmfldFDObraFechaFin: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FechaFin'
      Origin = 'FechaFin'
    end
    object mfldFDObraPath: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Path'
      Origin = 'Path'
      BlobType = ftMemo
    end
    object intgrfldFDObrapartidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'partidas'
      Origin = 'partidas'
    end
    object mfldFDObraobservaciones: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observaciones'
      Origin = 'observaciones'
      BlobType = ftMemo
    end
    object intgrfldFDObrapartidasejecutadas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'partidasejecutadas'
      Origin = 'partidasejecutadas'
    end
    object FDObramarca_pintura1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca_pintura1'
      Origin = 'marca_pintura1'
      Size = 15
    end
    object FDObramarca_pintura2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca_pintura2'
      Origin = 'marca_pintura2'
      Size = 15
    end
    object FDObramarca_pintura3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca_pintura3'
      Origin = 'marca_pintura3'
      Size = 15
    end
    object FDObratipo_pintura1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_pintura1'
      Origin = 'tipo_pintura1'
      Size = 15
    end
    object FDObratipo_pintura2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_pintura2'
      Origin = 'tipo_pintura2'
      Size = 15
    end
    object FDObratipo_pintura3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_pintura3'
      Origin = 'tipo_pintura3'
      Size = 15
    end
    object FDObracodigo_pintura1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_pintura1'
      Origin = 'codigo_pintura1'
      Size = 15
    end
    object FDObracodigo_pintura2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_pintura2'
      Origin = 'codigo_pintura2'
      Size = 15
    end
    object FDObracodigo_pintura3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_pintura3'
      Origin = 'codigo_pintura3'
      Size = 15
    end
    object FDObracolor1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'color1'
      Origin = 'color1'
    end
    object FDObracolor2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'color2'
      Origin = 'color2'
    end
    object FDObracolor3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'color3'
      Origin = 'color3'
    end
    object FDObramarca_azulejo1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca_azulejo1'
      Origin = 'marca_azulejo1'
      Size = 15
    end
    object FDObramarca_azulejo2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca_azulejo2'
      Origin = 'marca_azulejo2'
      Size = 15
    end
    object FDObramodelo_azulejo1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'modelo_azulejo1'
      Origin = 'modelo_azulejo1'
    end
    object FDObramodelo_azulejo2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'modelo_azulejo2'
      Origin = 'modelo_azulejo2'
    end
  end
  object FDlineasobra: TFDQuery
    AfterOpen = FDlineasobraAfterOpen
    AfterInsert = FDlineasobraAfterInsert
    AfterEdit = FDlineasobraAfterEdit
    AfterPost = FDlineasobraAfterPost
    AfterDelete = FDlineasobraAfterDelete
    CachedUpdates = True
    Aggregates = <
      item
        Name = 'SUMAIMPORTE'
        Expression = 'SUM(TOTAL)'
        Active = True
      end>
    AfterApplyUpdates = FDlineasobraAfterApplyUpdates
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select * from lineasobras where obras_id_obra=:ID_obra order by ' +
        'id_lineaobra ASC')
    Left = 952
    Top = 247
    ParamData = <
      item
        Name = 'ID_OBRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdCertificacion: TFDQuery
    AfterInsert = fdCertificacionAfterInsert
    AfterEdit = fdCertificacionAfterEdit
    CachedUpdates = True
    IndexFieldNames = 'obras_ID_obra'
    MasterSource = dsobras
    MasterFields = 'ID_obra'
    AfterApplyUpdates = fdCertificacionAfterApplyUpdates
    Connection = DataModule1.FDConnection1
    SchemaAdapter = FDSchemaCertificaciones
    FetchOptions.AssignedValues = [evDetailCascade]
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'select * from certificaciones where obras_id_obra=:ID_obra')
    Left = 515
    Top = 441
    ParamData = <
      item
        Name = 'ID_OBRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdtncfldCertificacionid_certificacion: TFDAutoIncField
      FieldName = 'id_certificacion'
      Origin = 'id_certificacion'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object dtmfldCertificacionfechaFinretencion: TDateTimeField
      FieldName = 'fechaFinretencion'
      Origin = 'fechaFinretencion'
      Required = True
    end
    object fltfldCertificacionretencion: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'retencion'
      Origin = 'retencion'
    end
    object fdCertificacionobras_ID_obra: TIntegerField
      FieldName = 'obras_ID_obra'
      Origin = 'obras_ID_obra'
      Required = True
    end
    object fdCertificaciondescripcion: TStringField
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Required = True
      Size = 255
    end
    object fltfldCertificaciontotal: TFloatField
      FieldName = 'total'
      Origin = 'total'
      Required = True
    end
    object fdCertificacionimporteFalta: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'importeFalta'
      Origin = 'importeFalta'
    end
    object fdCertificaciontotalretencion: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'totalretencion'
      Origin = 'totalretencion'
    end
    object fdCertificacionimportecertificado: TSingleField
      FieldName = 'importecertificado'
      Origin = 'importecertificado'
      Required = True
    end
  end
  object fdlineasCertificaciones: TFDQuery
    AfterOpen = fdlineasCertificacionesAfterOpen
    BeforeInsert = fdlineasCertificacionesBeforeInsert
    AfterInsert = fdlineasCertificacionesAfterInsert
    AfterEdit = fdlineasCertificacionesAfterEdit
    BeforePost = fdlineasCertificacionesBeforePost
    AfterPost = fdlineasCertificacionesAfterPost
    BeforeDelete = fdlineasCertificacionesBeforeDelete
    AfterDelete = fdlineasCertificacionesAfterDelete
    OnCalcFields = fdlineasCertificacionesCalcFields
    CachedUpdates = True
    IndexFieldNames = 'certificacion_id_certificacion'
    Aggregates = <
      item
        Name = 'fdlineascertImporteOrigen'
        Expression = 'SUM(importe)'
        Active = True
      end
      item
        Name = 'fdlineascertfecha'
        Expression = 'max(fechacertificacion)'
        Active = True
      end>
    MasterSource = dscertificacion
    MasterFields = 'id_certificacion'
    OnReconcileError = fdlineasCertificacionesReconcileError
    AfterApplyUpdates = fdlineasCertificacionesAfterApplyUpdates
    Connection = DataModule1.FDConnection1
    SchemaAdapter = FDSchemaCertificaciones
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      
        'select * from lineascertificaciones where certificacion_id_certi' +
        'ficacion=:ID_cert')
    Left = 555
    Top = 580
    ParamData = <
      item
        Name = 'ID_CERT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdCertificacionesid_lineacertificacion: TFDAutoIncField
      FieldName = 'id_lineacertificacion'
      Origin = 'id_lineacertificacion'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdCertificacionesfechacertificacion: TDateTimeField
      FieldName = 'fechacertificacion'
      Origin = 'fechacertificacion'
      Required = True
    end
    object fdCertificacionesncertificacion: TIntegerField
      FieldName = 'ncertificacion'
      Origin = 'ncertificacion'
      Required = True
    end
    object fdCertificacionesimporte: TFloatField
      FieldName = 'importe'
      Origin = 'importe'
      Required = True
      OnChange = fdCertificacionesimporteChange
    end
    object fdCertificacionescertificacion_id_certificacion: TIntegerField
      FieldName = 'certificacion_id_certificacion'
      Origin = 'certificacion_id_certificacion'
      Required = True
    end
    object fdCertificacionesImporteOrigen: TFloatField
      FieldName = 'ImporteOrigen'
      Origin = 'ImporteOrigen'
      Required = True
    end
    object fdlineasCertificacionesIVA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IVA'
      Calculated = True
    end
    object fdlineasCertificacionestotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object fdlineasCertificacionesreten: TFloatField
      FieldKind = fkCalculated
      FieldName = 'reten'
      Calculated = True
    end
  end
  object DataSource2: TDataSource
    DataSet = fdlineasCertificaciones
    Left = 756
    Top = 151
  end
  object FDSchemaCertificaciones: TFDSchemaAdapter
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    AfterApplyUpdate = FDSchemaCertificacionesAfterApplyUpdate
    OnReconcileRow = FDSchemaCertificacionesReconcileRow
    Left = 731
    Top = 590
  end
  object dscertificacion: TDataSource
    DataSet = fdCertificacion
    Left = 427
    Top = 454
  end
  object dsobras: TDataSource
    DataSet = FDObra
    Left = 587
    Top = 702
  end
  object dscliente: TDataSource
    DataSet = FDCliente
    Left = 528
    Top = 30
  end
  object fdqryContactosObra: TFDQuery
    AfterOpen = fdqryContactosObraAfterOpen
    AfterEdit = fdqryContactosObraAfterEdit
    AfterDelete = fdqryContactosObraAfterDelete
    CachedUpdates = True
    Connection = DataModule1.FDConnection1
    SchemaAdapter = FDSchemaCertificaciones
    SQL.Strings = (
      'SELECT * FROM obrascontactos where id_obra=:idobra')
    Left = 920
    Top = 487
    ParamData = <
      item
        Name = 'IDOBRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryContactosObraid_obra: TIntegerField
      FieldName = 'id_obra'
      Origin = 'id_obra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryContactosObraid_contacto: TIntegerField
      FieldName = 'id_contacto'
      Origin = 'id_contacto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryContactosObrapta: TStringField
      FieldKind = fkLookup
      FieldName = 'pta'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'pta'
      KeyFields = 'id_contacto'
      Lookup = True
    end
    object fdqryContactosObranombre: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'nombre'
      KeyFields = 'id_contacto'
      Lookup = True
    end
    object fdqryContactosObratelefono1: TIntegerField
      FieldKind = fkLookup
      FieldName = 'telefono1'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'telefono1'
      KeyFields = 'id_contacto'
      Lookup = True
    end
    object fdqryContactosObratelefono2: TIntegerField
      FieldKind = fkLookup
      FieldName = 'telefono2'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'telefono2'
      KeyFields = 'id_contacto'
      Lookup = True
    end
    object fdqryContactosObratelefono3: TIntegerField
      FieldKind = fkLookup
      FieldName = 'telefono3'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'telefono3'
      KeyFields = 'id_contacto'
      Lookup = True
    end
    object fdqryContactosObramail: TStringField
      FieldKind = fkLookup
      FieldName = 'mail'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'mail'
      KeyFields = 'id_contacto'
      Lookup = True
    end
  end
  object fdqrycontactoscliente: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from contactosclientes where id_cliente=:idcliente')
    Left = 904
    Top = 559
    ParamData = <
      item
        Name = 'IDCLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsContactosObra: TDataSource
    DataSet = fdqryContactosObra
    Left = 304
    Top = 727
  end
  object dslineasobra: TDataSource
    DataSet = FDlineasobra
    Left = 876
    Top = 242
  end
  object dslineasCertificaciones: TDataSource
    DataSet = fdlineasCertificaciones
    Left = 427
    Top = 704
  end
end
