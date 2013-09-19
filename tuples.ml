type nums = float list
type tuple = 
	Up of nums | 
	Down of nums | 
	UpStructure of tuple list |
	DownStructure of tuple list 

let up xs = Up xs
let down xs = Down xs

let up1 x = up [x]
let down1 x = down [x]

let rec cc a b = match (a,b) with
	|  (Up xs ,  Down ys) 
	|  (Down xs, Up ys) -> ( List.length xs ) == ( List.length ys )
	| _  -> false


