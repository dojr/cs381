
fun cube (x)=
 if x = 0 then 0
 else x * x * x;

cube(3);


fun cuber (x:real) = x*x*x;
cuber 3.2;


fun fourth (list) = hd(tl(tl(tl list)));
fourth([1,2,3,5,4]);


fun min3(x, y, z) = 
    if (x < y andalso x < z) 
    then x 
    else if (y < z andalso y < x) 
    then y
    else z;


fun red3 (a,b,c)=
 (a,c);

red3(#"a", #"b",#"c");


fun thirds(s) = hd(tl(tl(explode s)));

thirds("Yolo");


fun cycle1(a)=
 tl a @ [hd a] ;
 cycle1([#"a", #"b",#"c"]);


 fun min(x:real, y:real, z:real) =
    if x < y andalso x < z then x
    else if y < x andalso y < z then y
    else z;
    
fun mid(x:real, y:real, z:real) =
    if (x < y andalso x > z) orelse (x > y andalso x < z) then x
    else if (y < x andalso y > z) orelse (y > x andalso y < z) then y
    else z;
    
fun max(x:real, y:real, z:real) =
    if x > y andalso x > z then x
    else if y > x andalso y > z then y
    else z;
    
fun sort3(x:real, y:real, z:real) =
    min(x, y, z)::mid(x, y, z)::max(x, y, z)::[];

sort3(32.12,2.21, 55.32);


fun del3 (list)=
 let
   val first = hd list
   val second = hd(tl list)
 in
   first::second::[] @ (tl(tl(tl list)))
 end;
 del3([1,2,3,5,4]);

 fun sqsum(n) = 
    if n = 0 then 0 else (n*n)+sqsum(n-1);
        
sqsum(10);


fun cycle1(a)=
 tl a @ [hd a] ;

fun cycle(list, count)=
 if count = 0 then list
 else cycle(cycle1(list), count - 1);

 cycle( [1,2,3,4,5,6] ,2);

fun pow (x:real, y:int) = 
    if y = 0 then real(1) else x * pow(x, y - 1);

pow(3.1, 2);

fun maxhelper(list:int list, max:int)=
   if list = [] then max
   else if ((hd list) > max) then maxhelper(tl list,  hd list)
   else maxhelper(tl list, max);

fun max(list:int list) = maxhelper(tl list, hd list);

max([1,2,3,4,5,6]);

fun assert(result, expected) =
    if result = expected
    then true
    else false

val ex_01 = assert(cube(3),27);
val ex_02 = assert(trunc(cuber(3.0)),27);
val ex_03 = assert(fourth[5,2,8,7,10],7);
val ex_04 = assert(min3(4,2,1),1);
val ex_05 = assert(red3(#"a", #"b",#"c"),(#"a",#"c"));
val ex_06 = assert(thirds("johnny"),#"h");
val ex_07 = assert(cycle1[5,2,8,7,10],[2,8,7,10,5]);
val temp = sort3(5.0,2.0,3.0);
val newtemp = trunc(hd temp)::trunc(hd (tl temp))::trunc (hd (tl (tl temp)))::[];
val ex_08 = assert(newtemp,[2,3,5]);
val ex_09 = assert(del3([5,2,8,7,10]),[5,2,7,10]);
val ex_10 = assert(sqsum(5),55);
val ex_11 = assert(cycle([5,2,6,7,3,6],3),[7,3,6,5,2,6]);
val ex_12 = assert(trunc(pow(2.0,3)), 8);
val ex_13 = assert(max([5,2,8,10,4,2,1,3]), 10);