object FLineasObrasFacturas: TFLineasObrasFacturas
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Selecciona L'#237'neas Obras'
  ClientHeight = 299
  ClientWidth = 1149
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object statuslineas: TStatusBar
    Left = 0
    Top = 280
    Width = 1149
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object tlbarlineas: TToolBar
    Left = 0
    Top = 0
    Width = 1149
    Height = 33
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'tlbarlineas'
    Images = DataModule1.ImageList1
    TabOrder = 0
    object btnselectodos: TToolButton
      Left = 0
      Top = 0
      Hint = 'Deselecionar Todos'
      Caption = 'btnselectodos'
      ImageIndex = 20
      ParentShowHint = False
      ShowHint = True
      OnClick = btndeselecTodosClick
    end
    object btndeselecTodos: TToolButton
      Left = 39
      Top = 0
      Hint = 'Seleccionar Todos'
      Caption = 'btndeselecTodos'
      ImageIndex = 18
      ParentShowHint = False
      ShowHint = True
      OnClick = btnselectodosClick
    end
    object btn1: TToolButton
      Left = 78
      Top = 0
      Width = 39
      AutoSize = True
      Caption = 'btn1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object btaAceptar: TToolButton
      Left = 117
      Top = 0
      Hint = 'Insertar'
      Caption = 'btaAceptar'
      ImageIndex = 19
      ParentShowHint = False
      ShowHint = True
      OnClick = btaAceptarClick
    end
    object btCerrar: TToolButton
      Left = 156
      Top = 0
      Hint = 'Cancelar'
      Caption = 'btCerrar'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = btCerrarClick
    end
  end
  object rDBGridClientes1: TrDBGrid_MS
    Left = 0
    Top = 33
    Width = 1149
    Height = 247
    Align = alClient
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 2
    RowLines = 2
    FixedColText.FixedColWidth = 50
    FixedColText.ShowCheckbox = True
    OnGetFixedColState = rDBGridClientes1GetFixedColState
  end
  object ds1: TDataSource
    DataSet = fdqlobras
    Left = 432
    Top = 160
  end
  object fdqlobras: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'SELECT  O.id_obra, LO.id_lineaobra, LO.obras_ID_obra, LO.descrip' +
        'cion,LO.Total,LO.facturas_id_factura,LO.facturas_ano,O.FechaComi' +
        'enzo,O.FechaFin FROM lineasobras LO,obras O WHERE LO.obras_id_ob' +
        'ra=O.id_obra AND O.id_Cliente=:IDCLIENTE AND LO.facturas_id_fact' +
        'ura is null')
    Left = 536
    Top = 184
    ParamData = <
      item
        Name = 'IDCLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
