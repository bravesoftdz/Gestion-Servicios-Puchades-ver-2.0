object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 570
  Height = 350
  Align = alClient
  TabOrder = 0
  OnResize = FrameResize
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 350
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 40
    ExplicitTop = 48
    ExplicitWidth = 129
    ExplicitHeight = 81
    object HeaderControl1: THeaderControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 562
      Height = 36
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Sections = <
        item
          AutoSize = True
          ImageIndex = -1
          Text = 'Presupuestos'
          Width = 120
        end>
      ParentFont = False
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 568
    end
    object ListView1: TListView
      AlignWithMargins = True
      Left = 4
      Top = 46
      Width = 562
      Height = 300
      Align = alClient
      Columns = <>
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 24
      ExplicitWidth = 568
      ExplicitHeight = 325
    end
    object Button1: TButton
      Left = 438
      Top = 6
      Width = 32
      Height = 32
      Align = alCustom
      Anchors = [akTop, akRight]
      Caption = 'Button1'
      TabOrder = 2
    end
    object Button2: TButton
      Left = 479
      Top = 6
      Width = 32
      Height = 32
      Align = alCustom
      Anchors = [akTop, akRight]
      Caption = 'Button1'
      TabOrder = 3
    end
    object Button3: TButton
      Left = 520
      Top = 6
      Width = 32
      Height = 32
      Align = alCustom
      Anchors = [akTop, akRight]
      Caption = 'Button1'
      TabOrder = 4
    end
  end
end