function! CucumberFolds()
  let thisline = getline(v:lnum)

  if match(thisline, '\(Scenario\|Scenario Outline\|Background\)\:') >= 0
    return ">1"
  else
    return "="
  endif
endfunction
setlocal foldmethod=expr
setlocal foldexpr=CucumberFolds()
