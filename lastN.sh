function where_was_i_n {
	echo "Most Recent"
	echo "***"
	git reflog | grep 'checkout: moving' | head -n $1 | sed /^.*from/s///g  | sed -e /^.*[[:space:]]to[[:space:]]/s///g
	echo "***"
	echo "Least Recent ^"
} 
where_was_i_n $1
