# Str

Efficient string concatenation and join-with-separator utility functions
for sequences and lists.

## Concatenation

### `str_seq(seq,begin,end)`

* `seq` - lambda function that produces elements to concatenate
* `begin` - first element to concatenate
* `end` - last element + 1 to concatenate
* returns the concatenation of `str(seq(begin)),...,str(seq(end-1))`

### `str_list(list,begin=0,end=undef)`
* `list` - list of elements to concatenate
* `begin` - first index to concatenate (default 0)
* `end` - last index + 1 to concatenate (default length of list)
* returns the string concatenation of `str(list[begin]),...,str(list[end-1])`

## Join

### `str_join_seq(seq,begin,end,sep=",")`

* `seq` lambda producing elements to join.
* `begin` - first argument to seq
* `end` - last argument + 1 to seq
* `sep` - literal or lambda for separator
* returns the string concatenation of `seq(begin),sep(begin),seq(begin+1),sep(begin+1),...,seq(end-1)`


### `str_join_list(list,begin=0,end=undef,sep=",")`

* `list` list of elements to join
* `begin` - first index (default 0)
* `end` - last index + 1 to (default list length)
* `sep` - literal or lambda for separator (default ",")
* returns the string concatenation of `list[begin],sep(begin),list[begin+1],sep(begin+1),...,list[end-1]`
