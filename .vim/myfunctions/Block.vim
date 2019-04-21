" Call this function to generate always block :call Block("temp","5","10")
function! Block(title,times,bits)
    let l:i=1
    let l:j=a:bits-1
    while i <= a:times
        put = 'reg  [' . l:j . ':0] r_' . a:title . '_' . l:i . \";\"
        let l:i=l:i+1
    endwhile
    Tab /<=
    Tab /;
    r !echo ""
    r !echo "always @(posedge clk or negedge reset_n)"
    r !echo "begin"
    r !echo "    if(\!reset_n)"
    r !echo "    begin"
    let l:i=1
    while i <= a:times
        put = '        r_' . a:title . '_' . l:i . \" <= \" . a:bits . \"'b0;\"
        let l:i=l:i+1
    endwhile
    Tab /<=
    Tab /;
    r !echo "    end"
    r !echo "    else if()"
    r !echo "    begin"
    let l:i=1
    while i <= a:times
        put = '        r_' . a:title . '_' . l:i . \" <= \" . 'w_' . a:title .  '_' . l:i . \";\"
        let l:i=l:i+1
    endwhile
    Tab /<=
    Tab /;
    r !echo "    end"
    r !echo "end"
    r !echo ""
    unlet l:i
    unlet l:j
endfunction
