
Type 
  bangchu = Record
    vt: array [1..4] Of char;
  End;

Var 
  so: array [0..9] Of bangchu;

Procedure gan;

Var 
  n, i, bd: integer;
  t: char;

Begin
  bd := 96;
  so[0].vt[1] := ' ';
  For i := 2 To 9 Do
    Begin
      If (i <> 7) And (i <> 9) Then
        Begin
          For n := 1 To 3 Do
            Begin
              bd := bd +1;
              so[i].vt[n] := chr(bd);
            End;
        End
      Else
        Begin
          For n := 1 To 4 Do
            Begin
              bd := bd +1;
              so[i].vt[n] := chr(bd);
            End;
        End;
    End;
End;
Begin
  gan;
  write(so[6].vt[1],so[6].vt[3],so[2].vt[2],so[4].vt[3],so[5].vt[3],so[3].vt[2],so[0].vt[1],so[3].vt[1],so[2].vt[1],so[9].vt[3]);
  readln;
End.
