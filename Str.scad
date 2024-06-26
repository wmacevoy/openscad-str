// str(seq(begin),...,seq(end-1))
function str_seq(seq,begin,end) = // str(seq(begin),...,seq(end-1))
  let (n = (begin < end) ? end - begin : 0,
       m = ((n % 2) == 0) ? n/2 : (n-1) / 2)
  n > 1 ? str(str_seq(seq,begin,begin+m),str_seq(seq,begin+m,end)) :
  n == 1 ? str(seq(begin)) : "";

function str_list(list,begin=0,_end=undef) =
  let (seq = function (i) list[i],end = is_undef(_end) ? len(list) : _end)
  str_seq(seq,begin,end);

// sep can also be a lamba function of the index
function str_join_seq(seq,begin,end,sep=",") =
  let (n = (begin < end) ? end - begin : 0,
       m = ((n % 2) == 0) ? n/2 : (n-1) / 2)
  n > 1 ? str(str_join_seq(seq,begin,begin+m,sep),is_function(sep) ? sep(begin+m-1) : sep,str_join_seq(seq,begin+m,end,sep)) :
  n == 1 ? str(seq(begin)) : "";

function str_join_list(list,begin=0,_end=undef,sep=",") =
  let (seq = function (i) list[i],end = is_undef(_end) ? len(list) : _end)
  str_join_seq(seq,begin,end,sep);
