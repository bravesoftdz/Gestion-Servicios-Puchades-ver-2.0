object listfacturas: Tlistfacturas
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Lista Facturas'
  ClientHeight = 617
  ClientWidth = 1307
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 1307
    Height = 118
    Align = alTop
    TabOrder = 1
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 397
      Height = 110
      Align = alLeft
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object beBuscar: TButtonedEdit
        Left = 119
        Top = 28
        Width = 258
        Height = 21
        Align = alCustom
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = beBuscarChange
      end
      object rbcliente: TRadioButton
        Left = 16
        Top = 24
        Width = 97
        Height = 25
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rbnumero: TRadioButton
        Left = 16
        Top = 55
        Width = 97
        Height = 25
        Caption = 'N'#186' Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 559
      Top = 4
      Width = 282
      Height = 110
      Align = alLeft
      Caption = 'Filtrar Fecha Facturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 30
        Height = 13
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 144
        Top = 16
        Width = 28
        Height = 13
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 16
        Top = 31
        Width = 105
        Height = 21
        Date = 43102.878434259260000000
        Time = 43102.878434259260000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 144
        Top = 31
        Width = 105
        Height = 21
        Date = 43102.878434259260000000
        Time = 43102.878434259260000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Button1: TButton
        Left = 144
        Top = 66
        Width = 105
        Height = 27
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 407
      Top = 4
      Width = 146
      Height = 110
      Align = alLeft
      Caption = 'Ver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object rbPagadas: TRadioButton
        Left = 16
        Top = 39
        Width = 113
        Height = 17
        Caption = 'Pagadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rbPagadasClick
      end
      object rbImpagadas: TRadioButton
        Left = 16
        Top = 64
        Width = 113
        Height = 17
        Caption = 'Impagadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = rbImpagadasClick
      end
      object rbTodas: TRadioButton
        Left = 16
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Todas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = rbTodasClick
      end
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 592
    Width = 1307
    Height = 25
    Panels = <>
    SimplePanel = True
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 1307
    Height = 43
    ButtonHeight = 42
    ButtonWidth = 42
    Caption = 'tlb1'
    Images = DataModule1.ImageList1
    TabOrder = 0
    object btn1: TToolButton
      Left = 0
      Top = 0
      Caption = 'btn1'
      ImageIndex = 15
      OnClick = btn1Click
    end
    object btn2: TToolButton
      Left = 42
      Top = 0
      Width = 8
      Caption = 'btn2'
      ImageIndex = 16
      Style = tbsSeparator
    end
    object btn3: TToolButton
      Left = 50
      Top = 0
      Caption = 'btn3'
      ImageIndex = 40
    end
    object btn4: TToolButton
      Left = 92
      Top = 0
      Caption = 'btn4'
      ImageIndex = 41
    end
    object btn5: TToolButton
      Left = 134
      Top = 0
      Caption = 'btn5'
      ImageIndex = 42
      OnClick = btn5Click
    end
  end
  object rDBGridClientes1: TrDBGrid_MS
    Left = 0
    Top = 161
    Width = 1307
    Height = 431
    Align = alClient
    DataSource = ds1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = rDBGridClientes1DblClick
    OptionsEx = [dgTitleExBtn, dgTitleBtn, dgFixColBtn, dgBool, dgMemo, dgMemoShowText, dgGraphic, dgDateTimePicker, dgUseTitlePopup, dgAutoPickListWidth]
    OptionsEx2.Editors.Memo = obtContent
    SortDesc = True
    Sorter = DataModule1.rDBGridSorter_FireDac1
    ColumnWidth = cwAutoWidth
    TitleLines = 2
    RowLines = 2
    FixedColText.FixedColWidth = 50
    FixedColText.ShowCheckbox = True
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'idfactura'
        Title.Alignment = taCenter
        Title.Caption = 'Factura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ano'
        Title.Alignment = taCenter
        Title.Caption = 'A'#241'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 57
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'cif'
        Title.Alignment = taCenter
        Title.Caption = 'C.I.F'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 206
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'fechafactura'
        Title.Caption = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 102
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'concepto'
        Title.Alignment = taCenter
        Title.Caption = 'Concepto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 319
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'baseimponible'
        Title.Alignment = taCenter
        Title.Caption = 'Base Imponible'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 113
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'iva'
        Title.Alignment = taCenter
        Title.Caption = 'Tasa I.V.A'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'importeIVA'
        Title.Alignment = taCenter
        Title.Caption = 'I.V.A'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'total'
        Title.Alignment = taCenter
        Title.Caption = 'Total Factura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pagada'
        Title.Caption = 'Pagada'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = DataModule1.fdfacturas
    Left = 1104
    Top = 336
  end
end
