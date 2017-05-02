
Program abc;

Uses crt;

Var s: string;
  a: real;
  f1,f2: text;
  i,n: longint;
Function ktnt(a:real): boolean;

Var kt: boolean;
Begin
  kt := true;
  If a<=1 Then kt := false;
  For i:=2 To trunc(sqrt(a)) Do
    If trunc(a) Mod i =0 Then
      Begin
        kt := false;
        break;
      End;
  ktnt := kt;
End;
Function loc(s:String): real;

Var s1: string;
  a: real;
Begin
  s1 := '';
  For i:=1 To length(s) Do
    If (s[i] In ['0'..'9']) Then s1 := s1+s[i];
  val(s1,a);
  loc := a;
End;
Begin
  assign(f1,'CAU3.INP');
  reset(f1);
  assign(f2,'CAU3.OUT');
  rewrite(f2);
  While Not eof(f1) Do
    Begin
      readln(f1,s);
      a := loc(s);
      If ktnt(a) Then writeln(f2,trunc(a));
    End;
  close(f1);
  close(f2);
End.
