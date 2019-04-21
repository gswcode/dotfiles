" Call this function to generate always block :call Pipeline("10")
function! Pipeline(times)
    r !echo "/*********************************INPUT ENABLE PIPELINE**********************************/"
    r !echo ""
    r !echo "reg  r_en   ;"
    let l:i=1
    while i < a:times
        put = 'reg  r_en_' . l:i . \"d;\"
        let l:i=l:i+1
    endwhile
    Tab /<=
    Tab /;
    r !echo ""
    r !echo "always @(posedge clk or negedge reset_n)"
    r !echo "begin"
    r !echo "    if(\!reset_n)"
    r !echo "    begin"
    r !echo "        r_en    <= 1'b0;"
    let l:i=1
    while i < a:times
        put = '        r_en_' . l:i . \"d <= 1\'b0;\"
        let l:i=l:i+1
    endwhile
    Tab /<=
    Tab /;
    r !echo "    end"
    r !echo "    else"
    r !echo "    begin"
    r !echo "        r_en    <= i_en   ;"
    let l:i=1
    let l:j=0
    while i < a:times
        if( i == 1)
            put = '        r_en_' . l:i . \"d <= r_en;\"
        else
            put = '        r_en_' . l:i . \"d <= r_en_\" . l:j . \"d;\"
        endif
        let l:i=l:i+1
        let l:j=l:j+1
    endwhile
    Tab /<=
    Tab /;
    r !echo "    end"
    r !echo "end"
    r !echo ""
    r !echo "/************************************************************************************/"
    r !echo ""
    unlet l:i
endfunction

