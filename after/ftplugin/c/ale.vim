let b:ale_linters=  ['clang', 'clangd', 'clangtidy', 'cppcheck', 'flawfinder' , 'gcc']
let b:ale_c_gcc_options = '-std=c11 -Wall -Wextra -fmax-errors=1 -fopenmp'
let b:ale_c_clang_options = '-std=c11 -Weverything  -Wno-padded -Wno-strict-prototypes -Wno-double-promotion -ferror-limit=1 -Wno-sign-conversion -Wno-missing-prototypes -Wno-implicit-float-conversion -Wno-float-conversion -fopenmp'
let b:ale_c_flawfinder_minlevel=4
let s:clang_format_exe=Executable_any(['clang-format-devel','clang-format','clang-format-8'])
if s:clang_format_exe  !=#''
  let b:ale_c_clangformat_executable=s:clang_format_exe
endif
let b:ale_c_clangformat_options='-style=file -fallback-style=none'
let b:ale_fixers= ['clang-format','clangtidy']