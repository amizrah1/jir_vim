" this function allow to serach for aligned addressed based on current address
" maped to ALT-a
nmap <A-x> :call PvDeltaTwoNumbers()<CR>

let g:pv_nm1 = 0
let g:pv_n   = 0
 
function! PvDeltaTwoNumbers() 
    let g:pv_nm1 = g:pv_n
    let g:pv_n = expand("<cword>") 
    echom g:pv_nm1 "-" g:pv_n "=" g:pv_nm1 - g:pv_n
endfunction

"" this function allow to serach for aligned addressed based on current address
" maped to ALT-a
nmap <A-a> :call Address_search()<bar>set hls<CR>

function! Address_search()
    let addr = expand("<cword>") 
    let len = strlen(addr)
    let second_char = strpart(addr, len-2, 1)

    if ((second_char=="0") || (second_char=="1") || (second_char=="2") || (second_char=="3"))
        let addr = substitute(addr, '[0-9a-f][0-9a-f]\>', '[0123].', "")
    elseif ((second_char=="4") || (second_char=="5") || (second_char=="6") || (second_char=="7"))
        let addr = substitute(addr, '[0-9a-f][0-9a-f]\>', '[4567].', "")
    elseif ((second_char=="8") || (second_char=="9") || (second_char=="a") || (second_char=="b"))
        let addr = substitute(addr, '[0-9a-f][0-9a-f]\>', '[89ab].', "")
    elseif ((second_char=="c") || (second_char=="d") || (second_char=="e") || (second_char=="f"))
        let addr = substitute(addr, '[0-9a-f][0-9a-f]\>', '[cdef].', "")
    endif
    let addr = substitute(addr, '\<0*', '', "") 
    echo "Searching for align address = " addr
    let @/=addr
endfunction
