unit schedule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { Tfullschedule }

  Tfullschedule = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  fullschedule: Tfullschedule;

implementation

{$R *.lfm}

{ Tfullschedule }

procedure Tfullschedule.Button1Click(Sender: TObject);
begin
  Close;
end;

end.

