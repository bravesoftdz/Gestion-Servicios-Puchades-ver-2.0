object FResumen: TFResumen
  Left = 0
  Top = 0
  Caption = 'Resumen'
  ClientHeight = 420
  ClientWidth = 948
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rztlbr1: TRzToolbar
    Left = 0
    Top = 29
    Width = 948
    Height = 29
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 1
    ExplicitTop = 0
  end
  object rzstsbr1: TRzStatusBar
    Left = 0
    Top = 401
    Width = 948
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 4
    ExplicitLeft = 392
    ExplicitTop = 224
    ExplicitWidth = 185
  end
  object rzstsbr2: TRzStatusBar
    Left = 0
    Top = 382
    Width = 948
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 3
    VisualStyle = vsGradient
    ExplicitLeft = 392
    ExplicitTop = 224
    ExplicitWidth = 185
  end
  object rzspltr1: TRzSplitter
    Left = 0
    Top = 58
    Width = 948
    Height = 324
    Position = 416
    Percent = 44
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 376
    ExplicitTop = -40
    ExplicitWidth = 200
    ExplicitHeight = 100
    BarSize = (
      416
      0
      420
      324)
    UpperLeftControls = ()
    LowerRightControls = (
      rssgrid1)
    object rssgrid1: TrStringGridEd
      Left = 88
      Top = 96
      Width = 320
      Height = 120
      DefaultColWidth = 90
      DefaultRowHeight = 17
      DefaultDrawing = False
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
      TabOrder = 0
      Columns = <
        item
          Width = 90
        end
        item
          Width = 90
        end
        item
          Width = 90
        end
        item
          Width = 90
        end
        item
          Width = 90
        end>
      ColWidths = (
        90
        90
        90
        90
        90)
      RowHeights = (
        17
        17
        17
        17
        17)
    end
  end
  object rztlbr2: TRzToolbar
    Left = 0
    Top = 0
    Width = 948
    Height = 29
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitWidth = 474
  end
end
