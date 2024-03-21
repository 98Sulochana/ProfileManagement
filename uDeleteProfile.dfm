object deleteProfileForm: TdeleteProfileForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Delete Profile'
  ClientHeight = 112
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  ScreenSnap = True
  DesignSize = (
    329
    112)
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 204
    Height = 15
    Caption = 'Do you want to delete selected profile?'
  end
  object Button1: TButton
    Left = 203
    Top = 53
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'DELETE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 53
    Width = 89
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
    TabOrder = 1
  end
end
