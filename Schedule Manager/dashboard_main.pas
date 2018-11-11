unit dashboard_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  ComCtrls, StdCtrls, DBGrids, ECTabCtrl, ECBevel, IBConnection, sqldb, db,
  schedule, addclasses, add_assignment;

type

  { Tfrmdashboard_main }

  Tfrmdashboard_main = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ECBevel1: TECBevel;
    Shape1: TShape;
    Shape2: TShape;
    StaticText1: TStaticText;
    txtNextClass: TStaticText;
    txtTime: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmdashboard_main: Tfrmdashboard_main;

implementation

{$R *.lfm}

{ Tfrmdashboard_main }

procedure Tfrmdashboard_main.Button4Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrmdashboard_main.FormCreate(Sender: TObject);
begin

end;

procedure Tfrmdashboard_main.Button1Click(Sender: TObject);
begin
  fullschedule.ShowModal;
end;

procedure Tfrmdashboard_main.Button2Click(Sender: TObject);
begin
  add_class.ShowModal;
end;

procedure Tfrmdashboard_main.Button3Click(Sender: TObject);
begin
  new_add.ShowModal;
end;

end.

