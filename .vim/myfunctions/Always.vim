function! Always() range

    "Cases not yet covered:
    "-> If any wire array declaration is used

    "Clearing if any keys pressed already
    execute "silent! normal! \<esc>"
    "Saving visual selection marks
    execute "silent! normal! '<0"
    execute "silent! normal! ma"
    execute "silent! normal! '>$"
    execute "silent! normal! mb"
    "Substituting wire -> reg and w_ -> r_
    silent! 'a,'bs/^\s*wire/reg/e
    silent! 'a,'bs/w_/r_/e
    "Removing any empty lines in the visual selection
    silent! 'a,'bg/^\s*$/de
    "Removing any extra space inserted inbetween braces
    silent! 'a,'bs/\[\s*/\[/e
    silent! 'a,'bs/\s*:\s*/:/e
    silent! 'a,'bs/\s*\]/\]/e
    "Using Easyalign plugin
    silent! 'a,'bEasyAlign /reg/l0r2
    silent! 'a,'bEasyAlign /:/l0r0
    silent! 'a,'bEasyAlign /r_/l1r0
    silent! 'a,'bEasyAlign /;/l0r0

    "Removing any extra comments after the semicolon
    silent! 'a,'bs/;.*$/;/e
    "Copying the visual block into register r
    execute "silent! normal! gv\"ry"
    "Moving to the end of the visual block
    execute "silent! normal! 'bo\<cr>\<esc>"
    "Inserting an always block
    Zalways
    "Filling the always block using the copied visual block in register r
    execute "silent! normal! 3jmcjdd2jmdjdd'c\"rp"
    execute "silent! normal! /end\<cr>kfrhc\<tab>\<tab>"
    execute "silent! normal! $/end\<cr>k$I <= 'b0\<esc>"
    execute "silent! normal! 'd\"rp"
    execute "silent! normal! /end\<cr>kfrhc\<tab>\<tab>"
    execute "silent! normal! f_l/end\<cr>k$F;h\"ryf;"
    execute "silent! normal! $/end\<cr>k$I <= w_\<esc>f_\"rp"

    "Adding the bit width for resetting
    execute "silent! normal! 'cj0mc'd3k0md"
    execute "silent! normal! 'a06l'bfr5h\"ry'cf=lp`[`]\<esc>"
    silent! 'c,'ds/=\s*'b0/= 1'b0/e
    execute "silent! normal! 'cv'd:EasyAlign /'b/l0r0\<cr>"
    silent! 'c,'ds/= \(\s*\)\(\S*\)\(\s*\)/= \1\3\2/
    silent! noh
    execute "silent! normal! /end\<cr>2n"
endfunction
