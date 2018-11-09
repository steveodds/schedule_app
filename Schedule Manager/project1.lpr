program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Dashboard, dashboard_main, schedule, addclasses, add_assignment
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrmdashboard_main, frmdashboard_main);
  Application.CreateForm(Tfullschedule, fullschedule);
  Application.CreateForm(Tadd_class, add_class);
  Application.CreateForm(Tnew_add, new_add);
  Application.Run;
end.

