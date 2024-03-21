object addProfileForm: TaddProfileForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Add Profile'
  ClientHeight = 377
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  ScreenSnap = True
  DesignSize = (
    496
    377)
  TextHeight = 15
  object lblname: TLabel
    Left = 56
    Top = 104
    Width = 34
    Height = 15
    Alignment = taRightJustify
    Caption = 'NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbladdress: TLabel
    Left = 36
    Top = 144
    Width = 54
    Height = 15
    Alignment = taRightJustify
    Caption = 'ADDRESS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbltel: TLabel
    Left = 50
    Top = 184
    Width = 40
    Height = 15
    Alignment = taRightJustify
    Caption = 'PHONE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbldob: TLabel
    Left = 64
    Top = 224
    Width = 26
    Height = 15
    Alignment = taRightJustify
    Caption = 'DOB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 160
    Top = 40
    Width = 161
    Height = 15
    Caption = 'ADD PROFILE DETAILS FORM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object editname: TEdit
    Left = 128
    Top = 101
    Width = 300
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'editname'
  end
  object editaddress: TEdit
    Left = 128
    Top = 141
    Width = 300
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = 'Edit1'
  end
  object edittel: TEdit
    Left = 128
    Top = 181
    Width = 300
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = 'Edit1'
  end
  object editdob: TEdit
    Left = 128
    Top = 221
    Width = 300
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = 'Edit1'
  end
  object btncancel: TButton
    Left = 128
    Top = 288
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
    ExplicitTop = 279
  end
  object btnsave: TButton
    Left = 316
    Top = 288
    Width = 100
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'SAVE'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnsaveClick
    ExplicitLeft = 310
    ExplicitTop = 279
  end
end
