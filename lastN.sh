function where_was_i_n {
	#history=$(git reflog | grep 'checkout: moving' | head -n $1 | sed /^.*from/s///g  | sed -e /^.*[[:space:]]to[[:space:]]/s///g | sed 's/[[:space:]]/\\\n/g')	
	#echo $history

	git reflog | grep 'checkout: moving' | head -n $1 | sed /^.*from/s///g  | sed -e /^.*[[:space:]]to[[:space:]]/s///g
} 
where_was_i_n $1
