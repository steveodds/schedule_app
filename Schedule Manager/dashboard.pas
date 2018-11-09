unit Dashboard;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  EditBtn, StdCtrls, dashboard_main;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  If (Edit1.text = 'admin') then
     begin
     If (Edit2.text = 'pass') then
        begin
           frmdashboard_main.Show;
           Form1.Hide
        end
     else
        begin
           Application.MessageBox('You have entered the wrong password!', 'Wrong password');
        end;
     end
   else
       begin
          Application.MessageBox('You have entered the wrong username!', 'Wrong username');
       end;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

end.

