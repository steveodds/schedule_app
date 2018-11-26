unit schedule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { Tfullschedule }

  Tfullschedule = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBConnection: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    StaticText1: TStaticText;
    StaticText10: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  fullschedule: Tfullschedule;
  orderclass: integer;
  classval: array [1..5] of string;

implementation

{$R *.lfm}

{ Tfullschedule }

procedure Tfullschedule.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfullschedule.FormCreate(Sender: TObject);
begin
  for orderclass := 1 to 5 do
      begin
        DBConnection.Open;
        SQLQuery1.Close;
        SQLQuery1.SQL.Text := 'SELECT classname FROM schedule WHERE classorder = ' + IntToStr(orderclass);
        DBConnection.Connected := True;
        SQLTransaction1.Active := True;
        SQLQuery1.Open;
        classval[orderclass] := SQLQuery1.FieldByName('classname').AsString;
      end;

  StaticText1.Caption := classval[1];
  StaticText2.Caption := classval[2];
  StaticText7.Caption := classval[3];
  StaticText3.Caption := classval[4];
  StaticText8.Caption := classval[5];

end;

end.

