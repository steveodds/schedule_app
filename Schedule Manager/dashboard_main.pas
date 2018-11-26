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
    Shape1: TShape;
    Shape2: TShape;
    DBConnection: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    StaticText1: TStaticText;
    txtNextClass: TStaticText;
    txtTime: TStaticText;
    StaticText4: TStaticText;
    txtAssignment: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private

  public
    //procedure ClassOrder();
  end;

var
  frmdashboard_main: Tfrmdashboard_main;
  nextclass: string;
  orderclass: string;
  classhour: Word;
  morning: boolean;
  classday: string;
  mn, sc, ms: Word;
  y, m: Word;


implementation

{$R *.lfm}

{ Tfrmdashboard_main }

procedure ClassOrder();
begin

end;

procedure Tfrmdashboard_main.Button4Click(Sender: TObject);
begin
  Application.Terminate;
end;



procedure Tfrmdashboard_main.FormCreate(Sender: TObject);
begin
   DecodeTime(Time, classhour, mn, sc, ms);
   classday := LongDayNames[DayOfWeek(Date)];
   morning := false;
   orderclass := '0';
   If (classhour <= 8) AND (classhour >= 12) Then
      begin
           txtTime.Caption := '08:45 a.m.';
           morning := true
      end
   else
       begin
            txtTime.Caption := '01:30 p.m.';
       end;
   If morning Then
      begin
           case (classday) of
                'Monday': orderclass := '1';
                'Tuesday': orderclass := '2';
                'Wednesday': orderclass := '4';
           end;
      end
   else
       begin
            case (classday) of
                 'Monday': orderclass := '0';
                 'Tuesday': orderclass := '3';
                 'Wednesday': orderclass := '4';
            end;
       end;
   DBConnection.Open;
   SQLQuery1.Close;
   SQLQuery1.SQL.Text := 'SELECT classname, classtime FROM schedule WHERE classorder = ' + orderclass;
   DBConnection.Connected := True;
   SQLTransaction1.Active := True;
   SQLQuery1.Open;
   nextclass := SQLQuery1.FieldByName('classname').AsString;
   txtNextClass.Caption := nextclass;
   txtTime.Caption := SQLQuery1.FieldByName('classtime').AsString;
   SQLQuery1.Close;
   SQLQuery1.SQL.Text := 'SELECT * FROM assignment WHERE classorder = ' + orderclass;
   DBConnection.Connected := True;
   SQLTransaction1.Active := True;
   SQLQuery1.Open;
   txtAssignment.Caption := SQLQuery1.FieldByname('assignments').AsString;
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

