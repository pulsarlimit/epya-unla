" Vim syntax file
" Language: 	PseInt
" Mantainer: 	pulsarlimit

syn case ignore

" Basic definitions
syn keyword pseintBoolean verdadero falso
syn keyword pseintConditional si sino entonces finsi
syn keyword pseintOperator no mod y o
syn keyword pseintRepeat para finpara mientras finmientras hacer hasta que con paso
syn keyword pseintStatement algoritmo funcion finalgoritmo finfuncion
syn keyword pseintStatement definir dimension como leer escribir
syn keyword pseintType logico caracter cadena real entero
syn keyword pseintFunction aleatorio azar trunc redon abs rc
syn keyword pseintFunction ln exp sen cos atan

" Symbols, may be wrong
syn match pseintSymbolOperator "[+\-/*=]"
syn match pseintSymbolOperator "<>"
syn match pseintSymbolOperator "<-"
syn match pseintSymbolOperator "[()]"
" Strings and Comments
syn region pseintString start=+"+ end=+"+
syn region pseintComment start="//" end="$"

" Set links
hi def link pseintBoolean Boolean
hi def link pseintConditional Conditional
hi def link pseintOperator Operator
hi def link pseintSymbolOperator pseintOperator
hi def link pseintRepeat Repeat
hi def link pseintStatement Statement
hi def link pseintType Type
hi def link pseintFunction Function
hi def link pseintComment Comment
hi def link pseintString String
