object listpresupuestos: Tlistpresupuestos
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  BorderWidth = 1
  Caption = 'Lista Presupuestos'
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
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 161
    Width = 1414
    Height = 454
    Align = alClient
    Columns = <
      item
        Caption = 'N'#186' Presupuesto'
        ImageIndex = 6
        MaxWidth = 100
        Width = 100
      end
      item
        AutoSize = True
        Caption = 'Cliente'
        MaxWidth = 225
      end
      item
        Alignment = taCenter
        Caption = 'Fecha'
        MaxWidth = 90
        Width = 90
      end
      item
        AutoSize = True
        Caption = 'Descripci'#243'n'
      end
      item
        Alignment = taRightJustify
        Caption = 'Total'
        MaxWidth = 85
        Width = 80
      end
      item
        Alignment = taCenter
        Caption = 'Aprobado'
        Width = 70
      end
      item
        Alignment = taRightJustify
        Caption = 'Total Aprobado'
        MaxWidth = 100
        Width = 90
      end>
    DoubleBuffered = True
    FlatScrollBars = True
    LargeImages = DataModule1.ImageList1
    GroupHeaderImages = DataModule1.ImageList1
    RowSelect = True
    ParentDoubleBuffered = False
    ShowWorkAreas = True
    TabOrder = 0
    ViewStyle = vsReport
    OnColumnClick = ListView1ColumnClick
    OnDblClick = ListView1DblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1414
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
        Caption = 'N'#186' Presupuesto'
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
      Caption = 'Filtrar'
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
      Width = 1406
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
      object cbaprobado: TCheckBox
        AlignWithMargins = True
        Left = 5
        Top = 41
        Width = 136
        Height = 17
        Align = alTop
        Caption = 'Ver aprobados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbaprobadoClick
      end
      object cbnombre: TCheckBox
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 136
        Height = 17
        Align = alTop
        Caption = 'Ordenar por nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = cbOrdenarCClick
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.fdpresupuestos
    ScopeMappings = <>
    Left = 696
    Top = 304
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'id_presupuesto'
      Control = ListView1
      FillExpressions = <
        item
          SourceMemberName = 'nombre'
          ControlMemberName = 'SubItems[0]'
        end
        item
          SourceMemberName = 'FechaPresupuesto'
          ControlMemberName = 'SubItems[1]'
        end
        item
          SourceMemberName = 'descripcion'
          ControlMemberName = 'SubItems[2]'
        end
        item
          SourceMemberName = 'Total'
          ControlMemberName = 'SubItems[3]'
          CustomFormat = '%s+'#39' '#8364#39' '
        end
        item
          SourceMemberName = 'Aprovado'
          ControlMemberName = 'SubItems[4]'
        end
        item
          SourceMemberName = 'TotalAprobado'
          ControlMemberName = 'SubItems[5]'
          CustomFormat = '%s+'#39' '#8364#39
        end>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
end
