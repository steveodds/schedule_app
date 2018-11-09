unit addclasses;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  EditBtn;

type

  { Tadd_class }

  Tadd_class = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  add_class: Tadd_class;

implementation

{$R *.lfm}

{ Tadd_class }

procedure Tadd_class.Button1Click(Sender: TObject);
begin
  Close;
end;

end.

