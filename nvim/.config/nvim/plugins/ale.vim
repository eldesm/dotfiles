let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'javascript': ['prettier'],
\   'cpp': ['clang-format'],
\}

let g:ale_fix_on_save = 1
let g:ale_python_pylint_options = "--generate-members"
let g:ale_python_flake8_options = "--max-line-length=88"
