" PhilTabFunction 
" This function takes a single argument as an integer that corresponds to the
" tab number available. Use the command :tabs to view the tab numbers.
"
" @param tabNumber [Integer] 
"   The number of the tab to switch to.
"
" @returns nil
"   The function returns nothing.
function! PhilTabFunction(tabNumber)
  execute "normal! ". a:tabNumber ."gt"
endfunction

" Set the command :Tab # and call the PhilTabFunction function.
command! -nargs=1 Tab :call PhilTabFunction(<f-args>)
