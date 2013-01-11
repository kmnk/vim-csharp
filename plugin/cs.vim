" Vim plugin file
" Language:     Microsoft C#
" Maintainer:   Kian Ryan (kian@orangetentacle.co.uk)
" Last Change:  2012 Sep 23

function! MsProjFile(file)
    let g:net_build_file = a:file
    compiler msbuild
endfunction

function! MsVersion(version)
    let g:net_framework_version = a:version
    compiler msbuild
endfunction

" Set msproj file extensions
au BufNewFile,BufRead *.proj set filetype=xml
au BufNewFile,BufRead *.csproj set filetype=xml
au BufNewFile,BufRead *.sln set filetype=xml

com! -complete=file -nargs=1 MsProjFile :call MsProjFile(<f-args>)
com! -nargs=1 MsVersion :call MsVersion(<f-args>)
