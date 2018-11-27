unit add_assignment;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, StdCtrls;

type

  { Tnew_add }

  Tnew_add = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBConnection: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  new_add: Tnew_add;
  classname, assignment, classorder: string;

implementation

{$R *.lfm}

{ Tnew_add }

procedure Tnew_add.Button1Click(Sender: TObject);
begin
  assignment := Edit1.Text;
  //classname := Edit2.Text;
  classorder := '0';
  DBConnection.Open;
  //SQLQuery1.Close;
  //if SQLQuery1.Active = true then SQLQuery1.Active:= false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add ('INSERT INTO assignment VALUES (:classnamep, :assignmentsp, :classorderp)');
  DBConnection.Connected := True;
  SQLTransaction1.Active := True;
  //SQLQuery1.Open;

  SQLQuery1.Params.ParamByName('classnamep').AsString := Edit2.Text;
  SQLQuery1.Params.ParamByName('assignmentsp').AsString := assignment;
  SQLQuery1.Params.ParamByName('classorderp').AsString := classorder;
  SQLQuery1.ExecSQL;
  SQLTransaction1.Commit;
end;

procedure Tnew_add.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure Tnew_add.FormCreate(Sender: TObject);
begin
end;

end.

