function! FoldBoundariesInRange(firstLine, lastLine)
  return map(range(a:firstLine, a:lastLine), '[foldclosed(v:val), foldclosedend(v:val)]')
endfunction

function! NoneMatch(list, value)
  for i in a:list
    if i == a:value
      return 0
    endif
  endfor
  return 1
endfunction

function! ClosedFoldBoundaries(list)
  return NoneMatch(a:list, [-1, -1])
endfunction

call vspec#customize_matcher('toBeClosed', function('ClosedFoldBoundaries'))
