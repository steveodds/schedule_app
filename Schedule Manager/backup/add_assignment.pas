unit add_assignment;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tnew_add }

  Tnew_add = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  new_add: Tnew_add;

implementation

{$R *.lfm}

{ Tnew_add }

procedure Tnew_add.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure Tnew_add.Button2Click(Sender: TObject);
begin
  Close;
end;

end.

