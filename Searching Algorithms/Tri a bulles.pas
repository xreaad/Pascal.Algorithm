
{
Sorting Algorithm & Pascal Code
-------------------------------

Overview :         
    In computer science, a sorting algorithm is an algorithm that puts elements of a list in a certain order.
    The most frequently used orders are numerical order and lexicographical order.
    Efficient sorting is important for optimizing the efficiency of other algorithms (such as search and merge algorithms) that
    require input data to be in sorted lists.
    Sorting is also often useful for canonicalizing data and for producing human-readable output
      
}



program TriBulles;
type 
	TAB = array [1..50] of integer;
var 
	T : TAB;
	n, i : integer;

	procedure remplir(var T:TAB; n:integer);
	{remplir le tableau T par des valeur entier}
	begin 
		for i:=1 to n do
		begin
			write('T[',i,'] = ');
			readln(T[i]);
		end;
	end;

	procedure Permuter(var T:TAB; j:integer);
	{procedure pour changer les element dans le tableau T}
	var element : integer;
	begin
		element := T[j];
		T[j] := T[j+1];
		T[j+1] := element;
	end;

	procedure Trier(var T:TAB; n:integer);
	{procedure pour Trier le tableau T : 
	 verifier si le deux premier element dans le tableau Trier alors passe sinon appel
	 la procedure permuter pour changer les elemnt}
	var 
		permut : boolean; {var boolean pour verifier que le tableau est trier correctement}
		j : integer; {compteur}
	begin
		{boucle repeter pour repeter le traitement jusqu'a Trier le tableau}
		repeat
			permut := true;
			i := 1;
			for j:=i to (n - 1) do
			begin
				if T[j] > T[j+1] then
					begin
					Permuter(T, j);
					permut := false;
					end;
			end;
		until(permut = true);
	end;

	procedure Affiche(T:TAB; n:integer);
	{procedure Afficher pour afficher le tableau apres le traitement}
	begin
		for i:=1 to n do
			write(T[i], ' | ');
	end;
	
begin
	write('nomber des element dans la list : ');
	readln(n);

	remplir(T, n);
	Trier(T, n);
	Affiche(T, n);

	writeln();
end.
