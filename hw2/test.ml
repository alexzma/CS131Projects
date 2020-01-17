type awksub_nonterminals =
  | Expr | Lvalue | Incrop | Binop | Num
type ('nonterminal, 'terminal) symbol =
        | N of 'nonterminal
        | T of 'terminal
let x = [1;2;3];;
let y = [3;2;1];;
let z = [N Expr; N Binop];;
let w = [[T "fine"; N Incrop]; [N Expr]];;
let func keys values term =
	let rec findindex key lst index = match lst with
		| [] -> -1
		| this::rest -> if(this = key) then index else findindex key rest (index+1)
	in
	let matcher key value input = List.nth value (findindex input key 0)
	in
	matcher keys values term;;
let test = func x x;;
let output = test 1;;
let output2 = test 2;;
let output3 = test 3;;
let test2 = func x y;;
let output = test2 1;;
let output = test2 2;;
let output = test2 3;;
let test3 = func z w;;
let output = test3 (N Expr);;
let output = test3 (N Binop);;
let rec findindex key lst index = match lst with
                | [] -> -1
                | this::rest -> if(this = key) then index else findindex key rest (index+1)
let rec addtoarray input index array count result =
                        if (index = count) then
                                let newval = input::(List.nth array count) in
                                addtoarray input index array (count+1) (result@[newval])
                        else if (count < List.length array) then
                                addtoarray input index array (count+1) (result@[(List.nth array count)])
                        else result
let array = [[1;2;3];[4;5;6];[3;2;1]];;
let x = addtoarray 21 0 array 0 [];;
