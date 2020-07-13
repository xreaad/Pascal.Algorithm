program TriBulles;
type 
	TAB = array [1..50] of integer;
var 
	T : TAB;
	n, i : integer;

	procedure remplir(var T:TAB; n:integer);
	begin 
		for i:=1 to n do
		begin
			write('T[',i,'] = ');
			readln(T[i]);
		end;
	end;
	
	procedure Permuter(var T:TAB; j:integer);
	var element : integer;
	begin
		element := T[j];
		T[j] := T[j+1];
		T[j+1] := element;
	end;
	
	procedure Trier(var T:TAB; n:integer);
	var 
	
	begin
	
	end;
	
	
	
	procedure Affiche(T:TAB; n:integer);
	begin
		for i:=1 to n do
			write(T[i], ' | ');
	end;
	
begin
	write('Taille de tableau : ');
	readln(n);
	remplir(T, n);
	Trier(T, n);
	Affiche(T, n);
end.
