object mainForm: TmainForm
  Left = 0
  Top = 0
  Caption = 'Profile Management'
  ClientHeight = 572
  ClientWidth = 803
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  ScreenSnap = True
  DesignSize = (
    803
    572)
  TextHeight = 15
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 803
    Height = 25
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 10461087
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clWhite
    ColorMap.SelectedFontColor = clWhite
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
    ExplicitWidth = 797
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 24
    Width = 795
    Height = 540
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dbModule.profilesSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    PopupMenu = PopupActionBar1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = acteditprofileExecute
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = 'Name'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'address'
        Title.Caption = 'Address'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel'
        Title.Caption = 'Phone'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dob'
        Title.Caption = 'DOB'
        Width = 150
        Visible = True
      end>
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = actconnect
                Caption = '&Connect to DB'
              end
              item
                Action = actdisconnect
                Caption = '&Disconnect'
              end
              item
                Action = actaddprofile
                Caption = '&Add Profile'
              end
              item
                Action = acteditprofile
                Caption = '&Edit Profile'
              end
              item
                Action = actdeleteprofile
                Caption = 'De&lete Profile'
              end
              item
                Action = actexitapp
                Caption = 'E&xit Application'
              end
              item
                Action = actrefreshdata
              end>
            Caption = '&Profiles'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 520
    Top = 128
    StyleName = 'Platform Default'
    object actconnect: TAction
      Caption = 'Connect to DB'
      OnExecute = actconnectExecute
    end
    object actdisconnect: TAction
      Caption = 'Disconnect'
      OnExecute = actdisconnectExecute
    end
    object actexitapp: TAction
      Caption = 'Exit Application'
      OnExecute = actexitappExecute
    end
    object actaddprofile: TAction
      Caption = 'Add Profile'
      OnExecute = actaddprofileExecute
    end
    object acteditprofile: TAction
      Caption = 'Edit Profile'
      OnExecute = acteditprofileExecute
    end
    object actdeleteprofile: TAction
      Caption = 'Delete Profile'
      OnExecute = actdeleteprofileExecute
    end
    object actrefreshdata: TAction
      Caption = 'Refresh Data'
      OnExecute = actrefreshdataExecute
    end
  end
  object PopupActionBar1: TPopupActionBar
    Left = 344
    Top = 136
    object AddProfile1: TMenuItem
      Action = actaddprofile
    end
    object EditProfile1: TMenuItem
      Action = acteditprofile
    end
    object DeleteProfile1: TMenuItem
      Action = actdeleteprofile
    end
  end
end
