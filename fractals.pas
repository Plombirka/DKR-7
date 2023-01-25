unit fractals;
interface
uses GraphABC;
var
    a: real;
procedure serp_square(x, y, l, n: integer; first: boolean := True);
implementation
procedure serp_square;
var
    third_part := (l div 3);
begin
    if first then
    begin
        SetBrushColor(clBlack);
        FillRectangle(x, y, x + l, y + l);
        SetBrushColor(clWhite);
        first := False;
    end;
    FillRectangle(x + third_part, y + third_part, x + 2 * third_part, y + 2 * third_part);
    if (n <= 0) then exit;
    for i: integer := 0 to 2 do
        for j: integer := 0 to 2 do
            if (i <> j) or (i <> 1) then
                serp_square(x + third_part * i, y + third_part * j, third_part, n - 1);
end;
end.