object editProfileForm: TeditProfileForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Edit Profile'
  ClientHeight = 368
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  ScreenSnap = True
  DesignSize = (
    490
    368)
  TextHeight = 15
  object Label1: TLabel
    Left = 56
    Top = 104
    Width = 34
    Height = 15
    Alignment = taRightJustify
    Caption = 'NAME'
  end
  object Label2: TLabel
    Left = 41
    Top = 144
    Width = 49
    Height = 15
    Alignment = taRightJustify
    Caption = 'ADDRESS'
  end
  object Label3: TLabel
    Left = 50
    Top = 184
    Width = 40
    Height = 15
    Alignment = taRightJustify
    Caption = 'PHONE'
  end
  object Label4: TLabel
    Left = 66
    Top = 224
    Width = 24
    Height = 15
    Alignment = taRightJustify
    Caption = 'DOB'
  end
  object Label5: TLabel
    Left = 184
    Top = 40
    Width = 115
    Height = 15
    Caption = 'EDIT PROFILE DETAILS'
  end
  object Edit1: TEdit
    Left = 128
    Top = 101
    Width = 300
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 128
    Top = 141
    Width = 300
    Height = 23
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 128
    Top = 181
    Width = 300
    Height = 23
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit4: TEdit
    Left = 128
    Top = 221
    Width = 300
    Height = 23
    TabOrder = 3
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 128
    Top = 279
    Width = 100
    Height = 25
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = 'CANCEL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ModalResult = 3
    ParentFont = False
    TabOrder = 4
  end
  object Button2: TButton
    Left = 316
    Top = 279
    Width = 100
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'EDIT'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
    ExplicitLeft = 328
    ExplicitTop = 288
  end
end
