object listobras: Tlistobras
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Lista Obras'
  ClientHeight = 617
  ClientWidth = 1416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 161
    Width = 1416
    Height = 456
    Align = alClient
    Columns = <
      item
        Caption = 'N'#186' Obra'
        Width = 60
      end
      item
        Caption = 'Cliente'
        Width = 225
      end
      item
        Alignment = taCenter
        Caption = 'Fecha Comienzo'
        Width = 90
      end
      item
        Caption = 'Descripci'#243'n'
        Width = 775
      end
      item
        Alignment = taRightJustify
        Caption = 'Total'
        Width = 80
      end
      item
        Alignment = taCenter
        Caption = 'Fecha Fin'
        Width = 80
      end
      item
        Caption = 'Ejecutado'
        Width = 60
      end>
    DoubleBuffered = True
    FlatScrollBars = True
    Items.ItemData = {
      052C0400000600000000000000FFFFFFFFFFFFFFFF07000000FFFFFFFF250000
      0003370036003900064400440044004400440044000000000013320033002F00
      300034002F0032003000310038002000320031003A00330033003A0031003700
      000000000B6400650073006300720069007000630069006F006E000000000004
      320030003000300000000000000000000005460061006C007300650000000000
      000000000000000000FFFFFFFFFFFFFFFF07000000FFFFFFFF26000000033700
      37003000064400440044004400440044000000000013320033002F0030003400
      2F0032003000310038002000320031003A00330033003A003100390000000000
      0B6400650073006300720069007000630069006F006E00000000000431003000
      3000300000000000000000000005460061006C00730065000000000000000000
      0000000000FFFFFFFFFFFFFFFF07000000FFFFFFFF2700000003370037003100
      064400440044004400440044000000000013320033002F00300034002F003200
      3000310038002000320031003A00330033003A00320032000000000011460041
      004300480041004400410020004D0045004400490041004E0045005200410000
      00000004310032003500300000000000000000000005460061006C0073006500
      00000000000000000000000000FFFFFFFFFFFFFFFF07000000FFFFFFFF280000
      000337003700320006440044004400440044004400000000000A320039002F00
      300034002F003200300031003800000000002246004100430048004100440041
      00200054005200410053004500520041002C0020004600410043004800410044
      00410020004D0045004400490041004E00450052004100000000000130000000
      0000000000000005460061006C007300650000000000000000000000000000FF
      FFFFFFFFFFFFFF07000000FFFFFFFF2900000003370037003300064400440044
      00440044004400000000000A320039002F00300034002F003200300031003800
      000000000B5300550046005200450020004D0041004D004F004E000000000001
      300000000000000000000005460061006C007300650000000000000000000000
      000000FFFFFFFFFFFFFFFF07000000FFFFFFFF2A000000033700370034000644
      0044004400440044004400000000000A320039002F00300034002F0032003000
      31003800000000002745004C0049004D0049004E00410043004900D3004E0020
      0044004500200042004100520052004500520041005300200041005200510055
      00490054004500430054004F004E004900430041005300000000000130000000
      0000000000000005460061006C0073006500000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    LargeImages = DataModule1.ImageList1
    GroupHeaderImages = DataModule1.ImageList1
    RowSelect = True
    ParentDoubleBuffered = False
    ShowWorkAreas = True
    TabOrder = 0
    ViewStyle = vsReport
    OnColumnClick = ListView1ColumnClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1416
    Height = 161
    Align = alTop
    TabOrder = 1
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 59
      Width = 397
      Height = 98
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
        TabOrder = 0
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
        TabOrder = 1
      end
      object rbnumero: TRadioButton
        Left = 16
        Top = 55
        Width = 97
        Height = 25
        Caption = 'N'#186' Obra'
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
      Top = 59
      Width = 306
      Height = 98
      Align = alLeft
      Caption = 'Filtrar Fecha Comienzo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
        Left = 184
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
        Left = 184
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
        Left = 184
        Top = 64
        Width = 105
        Height = 27
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object CoolBar1: TCoolBar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1408
      Height = 49
      Bands = <>
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 407
      Top = 59
      Width = 146
      Height = 98
      Align = alLeft
      Caption = 'Ver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object rbEjecutado: TRadioButton
        Left = 16
        Top = 39
        Width = 113
        Height = 17
        Caption = 'Ejecutado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = rbEjecutadoClick
      end
      object rbNoEjecutado: TRadioButton
        Left = 16
        Top = 64
        Width = 113
        Height = 17
        Caption = 'No Ejecutado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rbNoEjecutadoClick
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
        TabOrder = 2
        OnClick = rbTodasClick
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 871
      Top = 59
      Width = 306
      Height = 98
      Align = alLeft
      Caption = 'Filtrar Fecha Terminaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      ExplicitLeft = 1135
      ExplicitTop = 57
      object Label1: TLabel
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
      object Label4: TLabel
        Left = 184
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
      object DateTimePicker3: TDateTimePicker
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
      object DateTimePicker4: TDateTimePicker
        Left = 184
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
      object Button2: TButton
        Left = 184
        Top = 64
        Width = 105
        Height = 27
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.fdobras
    ScopeMappings = <>
    Left = 696
    Top = 304
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = ListView1
      Track = True
      FillDataSource = BindSourceDB1
      FillDisplayFieldName = 'id_obra'
      AutoFill = True
      FillExpressions = <
        item
          SourceMemberName = 'Nombre'
          ControlMemberName = 'SubItems[0]'
        end
        item
          SourceMemberName = 'fechaComienzo'
          ControlMemberName = 'SubItems[1]'
        end
        item
          SourceMemberName = 'descripcion'
          ControlMemberName = 'SubItems[2]'
        end
        item
          SourceMemberName = 'ImporteObra'
          ControlMemberName = 'SubItems[3]'
        end
        item
          SourceMemberName = 'FechaFin'
          ControlMemberName = 'SubItems[4]'
        end
        item
          SourceMemberName = 'Ejecutado'
          ControlMemberName = 'SubItems[5]'
        end>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
end