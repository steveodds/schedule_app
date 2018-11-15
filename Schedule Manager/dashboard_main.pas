unit dashboard_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  ComCtrls, StdCtrls, DBGrids, IBConnection, sqldb,
  sqlite3conn, db, schedule, addclasses, add_assignment;

type

  { Tfrmdashboard_main }

  Tfrmdashboard_main = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Shape1: TShape;
    Shape2: TShape;
    DBConnection: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
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
  nextclass: string;
  orderclass: string;

implementation

{$R *.lfm}

{ Tfrmdashboard_main }

procedure Tfrmdashboard_main.Button4Click(Sender: TObject);
begin
  Application.Terminate;
end;



procedure Tfrmdashboard_main.FormCreate(Sender: TObject);
begin
  orderclass := '1';
   DBConnection.Open;
   SQLQuery1.Close;
   SQLQuery1.SQL.Text := 'SELECT classname FROM schedule WHERE classorder = ' + orderclass;
   DBConnection.Connected := True;
   SQLTransaction1.Active := True;

   SQLQuery1.FieldByName('classname').AsString := nextclass;
   txtNextClass.Caption := nextclass;
   SQLQuery1.Open;
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

