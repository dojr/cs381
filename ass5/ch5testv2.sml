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
							