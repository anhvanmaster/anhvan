var a:array[1..100000] of integer;
min,max,tc,tl,i,t,j,n:integer;
begin
	writeln('nhap so phan tu cua mang');
	readln(n);
	for i:=1 to n do
	begin
		write('A[',i,']='); readln(a[i]);
	end;
	max:=a[1]; min:=a[1]; tc:=0; tl:=0;
	for i:= 1 to n do
	begin
		if a[i] mod 2 = 0 then tc:=tc+1 else tl:=tl+1;
		if a[i]<min then min:=a[i];
		if a[i]>max then max:=a[i];
	end;
	for j:=n downto 2 do
		for i:=1 to j-1 do
			if a[i]>a[i+1] then
			begin
			 t:=a[i];
			 a[i]:=a[i+1];
			 a[i+1]:=t;
			end;
	writeln('max=',max,'; min=',min,'; tong so chan=',tc,'; tong so le=',tl);
	for i:=1 to n do write(a[i],' ');
	readln;
end.
