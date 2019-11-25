object listseguros: Tlistseguros
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  BorderWidth = 1
  Caption = 'Lista Seguros'
  ClientHeight = 615
  ClientWidth = 1414
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 1414
    Height = 113
    Align = alTop
    TabOrder = 1
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 303
      Top = 4
      Width = 161
      Height = 105
      Align = alLeft
      Caption = 'Agrupar'
      TabOrder = 1
      object cbAgruparAdmin: TCheckBox
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 151
        Height = 17
        Align = alTop
        Caption = 'Filtrar '
        TabOrder = 0
        OnClick = cbAgruparAdminClick
      end
      object chkCamposBusqueda: TCheckBox
        Left = 5
        Top = 41
        Width = 116
        Height = 17
        Caption = 'Buscar por campos'
        TabOrder = 1
        OnClick = chkCamposBusquedaClick
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 293
      Height = 105
      Align = alLeft
      Caption = 'Buscar'
      TabOrder = 0
      ExplicitTop = 2
      object lbed1: TLabeledEdit
        Left = 88
        Top = 39
        Width = 193
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 69
        EditLabel.Height = 14
        EditLabel.BiDiMode = bdRightToLeft
        EditLabel.Caption = 'Descripci'#243'n'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -12
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentBiDiMode = False
        EditLabel.ParentFont = False
        LabelPosition = lpLeft
        TabOrder = 0
        OnChange = lbed1Change
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1414
    Height = 42
    ButtonHeight = 42
    ButtonWidth = 42
    Caption = 'ToolBar1'
    Images = DataModule1.ImageList1
    TabOrder = 0
    object btn1: TToolButton
      Left = 0
      Top = 0
      Hint = 'Salir'
      Caption = 'btn1'
      ImageIndex = 15
      ParentShowHint = False
      ShowHint = True
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
    object btncrearclientes: TToolButton
      Left = 50
      Top = 0
      Caption = 'Nuevo Seguro'
      ImageIndex = 49
      ParentShowHint = False
      ShowHint = True
      OnClick = btncrearclientesClick
    end
    object ToolButton1: TToolButton
      Left = 92
      Top = 0
      Hint = 'Editar Seguro'
      Caption = 'Editar Seguro'
      ImageIndex = 51
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object btn3: TToolButton
      Left = 134
      Top = 0
      Hint = 'Borrar Seguro'
      Caption = 'Borrar Seguro'
      ImageIndex = 50
      ParentShowHint = False
      ShowHint = True
      OnClick = btn3Click
    end
    object btn4: TToolButton
      Left = 176
      Top = 0
      Hint = 'Ver Seguro'
      Caption = 'Ver Seguro'
      ImageIndex = 48
      ParentShowHint = False
      ShowHint = True
      OnClick = btn4Click
    end
    object btn5: TToolButton
      Left = 218
      Top = 0
      Width = 8
      Caption = 'btn5'
      ImageIndex = 27
      Style = tbsSeparator
    end
    object btn6: TToolButton
      Left = 226
      Top = 0
      Hint = 'Exportar a Excel'
      Caption = 'btn6'
      ImageIndex = 43
      ParentShowHint = False
      ShowHint = True
      OnClick = btn6Click
    end
    object btn7: TToolButton
      Left = 268
      Top = 0
      Hint = 'Filtrar'
      Caption = 'btn7'
      ImageIndex = 44
      ParentShowHint = False
      ShowHint = True
      OnClick = btn7Click
    end
  end
  object rDBGridClientes1: TrDBGrid_MS
    Left = 0
    Top = 155
    Width = 1414
    Height = 460
    Align = alClient
    DataSource = ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = rDBGridClientes1DblClick
    OptionsEx = [dgTitleExBtn, dgTitleBtn, dgFixColBtn, dgBool, dgMemo, dgGraphic, dgGraphicShowImg, dgDateTimePicker, dgUseTitlePopup, dgAutoPickListWidth]
    OptionsEx2.ActivateOptionsEx2 = True
    OptionsEx2.FixedCell.TitleExBtn = False
    OptionsEx2.FixedCell.FixedCols = 1
    SortFieldName = 'nombre'
    Sorter = DataModule1.rDBGridSorter_FireDac1
    ColumnWidth = cwAutoWidth
    TitleLines = 2
    RowLines = 2
    RowVerticalAlign = taVerticalCenter
    FixedColText.FixedColWidth = 25
    FixedColText.ShowCheckbox = True
    FooterRow.FooterVisible = True
    FooterRow.FieldFooterDefs.Strings = (
      'nombre=Total: %SUM;')
    Columns = <
      item
        Expanded = False
        FieldName = 'img'
        Title.Caption = 'Compa'#241'ia'
        Width = 96
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Npoliza'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Poliza'
        Width = 92
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'descripcion'
        Title.Alignment = taCenter
        Title.Caption = 'Descripci'#243'n'
        Width = 246
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'Tipo'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fechacontrato'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha Contrato'
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'matricula'
        Title.Alignment = taCenter
        Title.Caption = 'Matr'#237'cula'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FormaPago'
        Title.Caption = 'Forma Pago'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fraccionamiento'
        Title.Caption = 'Fraccionamiento'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Caption = 'Importe'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecharenovacion'
        Title.Caption = 'Fecha Renovaci'#243'n'
        Width = 167
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = DataModule1.fdqseguros
    Left = 1128
    Top = 280
  end
end