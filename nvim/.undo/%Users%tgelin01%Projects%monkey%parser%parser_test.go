Vim�UnDo� ���cG�/���K��.�2A��7��/�e�C�   �       input := "foobar;"   f                           d���    _�                             ����                                                                                                                                                                                                                                                                                                                                                             d��8     �   0                  letStmt, ok := s.(*ast.�   1            �                   �               5��                    0                      �      �    0                    �              �      5�_�                    B        ����                                                                                                                                                                                                                                                                                                                                                             d��9    �         C      
    "test"�      @   C   <       "testing"       "monkey/ast"       "monkey/lexer"   )       &func TestLetStatements(t *testing.T) {       input := `   
let x = 5;   let y = 10;   let foobar = 838383;   `       l := lexer.New(input)       p := New(l)           program := p.ParseProgram()       if program == nil {   /        t.Fatalf("ParseProgram() returned nil")       }   %    if len(program.Statements) != 3 {   L        t.Fatalf("program.Statements does not contain 3 statements. got=%d",   $            len(program.Statements))       }           tests := []struct {   !        expectedIdentifier string       }{           {"x"},           {"y"},           {"foobar"},       }           for i, tt := range tests {   %        stmt := program.Statements[i]   >        if !testLetStatement(t, stmt, tt.expectedIdentifier) {               return   	        }       }   }       Hfunc testLetStatement(t *testing.T, s ast.Statement, name string) bool {   "    if s.TokenLiteral() != "let" {   F        t.Errorf("s.TokenLiteral not 'let'. got=%q", s.TokenLiteral())           return false       }       (    letStmt, ok := s.(*ast.LetStatement)       if !ok {   6        t.Errorf("s not *ast.LetStatement. got=%T", s)           return false       }       #    if letStmt.Name.Value != name {   Q        t.Errorf("letStmt.Name.Value not '%s'. got=%s", name, letStmt.Name.Value)           return false       }       ,    if letStmt.Name.TokenLiteral() != name {   @        t.Errorf("letStmt.Name.TokenLiteral() not '%s'. got=%s",   .            name, letStmt.Name.TokenLiteral())           return false�   ?   A   C          }�   A   C   C          return true5��    A                     �                    �    ?                     �                    �       	   ;      ;      "       {      �      �                                                �                                             �                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d���     �         D          �         D    �         C    5��                          �                      �                        �               7       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       d���     �                    program := p.ParseProgram()5��                          �                       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       d���     �         D    5��                                               �                                               5�_�      	              E        ����                                                                                                                                                                                                                                                                                                                                                V       d���     �   E               �   F            �   E            5��    E                                           �    E                                          5�_�                 	   Q        ����                                                                                                                                                                                                                                                                                                                                                V       d���    �         Q          checkParserErrors(t, p)�   F   H   Q          errors := p.Errors()�   G   I   Q          if len(errors) == 0 {�   H   N   R              return       }       1    t.Errorf("parser has %d errors", len(errors))        for _, msg := range errors {   	        {�   M   P   Q      )        t.Errorf("parser error: %q", msg)�   N   P   Q          }�   O   Q   Q          t.FailNow()�   P   R          }    5��    P                                           �    O                                         �    N                     	                    �    M                    �                     �    H                   v      p       W       �    G                     \                    �    F                     C                    �                         �                     5�_�   	      
                  ����                                                                                                                                                                                                                                                                                                                                                V       d��D     �   
             
let x = 5;   let y = 10;   let foobar = 838383;5��    
                      x       ,               5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                  V        d��D    �   
      O          �         O    �   
      N    5��    
                      x                      �    
                    |                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        d��M    �   
      Q          let x 5;5��    
                      x                      5�_�                    E        ����                                                                                                                                                                                                                                                                                                                                                 v        d��7     �   E   H   R       �   E   G   Q    5��    E                                           �    E                                           5�_�                    F        ����                                                                                                                                                                                                                                                                                                                                                 v        d��8     �   F   d   T       �   G   H   T    �   F   H   S    5��    F                                           �    F                                   �      5�_�                    b        ����                                                                                                                                                                                                                                                                                                                                                 v        d��:    �   G   I   p          input := `�   L   N   p          l := lexer.New(input)�   M   O   p          p := New(l)�   O   a   p          program := p.ParseProgram()       checkParserErrors(t, p)       %    if len(program.Statements) != 3 {   L        t.Fatalf("program.Statements does not contain 3 statements. got=%d",   $            len(program.Statements))       }       -    for _, stmt := range program.Statements {   5        returnStmt, ok := stmt.(*ast.ReturnStatement)           if !ok {   C            t.Errorf("stmt not *ast.ReturnStatement. got=%T", stmt)               continue   	        }   2        if returnStmt.TokenLiteral() != "return" {   D            t.Errorf("returnStmt.TokenLiteral not 'return', got %q",   *                returnStmt.TokenLiteral())�   `   b   p      	        }�   a   c   p          }5��    a                     �                    �    `                     �                    �    O                   �      <      �      �    M                     {                    �    L                     a                    �    G                     ,                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        d��h     �         p      let 838383;5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        d��j     �   
      p      let x 5;5��    
                     ~                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        d��l     �   
      p      	let x =5;5��    
                                           5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       d�ψ     �                
let x = 5;�   
      q      
let x = 5;�         p    5��   
                     x              �       �                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       d�ϊ    �   
      m    �         m    �   
             	let = 10;       let x = 5;   let  = 838383;5��    
                      x       (               �    
                      x               ,       5�_�                    e   0    ����                                                                                                                                                                                                                                                                                                                                                             d���     �   d   f   p    5��    d                      �                     5�_�                    e        ����                                                                                                                                                                                                                                                                                                                                                             d���     �   d   f   q    5��    d                      �                     5�_�                    e        ����                                                                                                                                                                                                                                                                                                                                                             d���     �   d   �   r       �   e   f   r    5��    d                     �              �      5�_�                     �        ����                                                                                                                                                                                                                                                                                                                                                             d���    �   e   g   �          input := "foobar;"�   g   i   �          l := lexer.New(input)�   h   j   �          p := New(l)�   i   �   �          program := p.ParseProgram()       checkParserErrors(t, p)       %    if len(program.Statements) != 1 {   =        t.Fatalf("program has not enough statements. got=%d",   $            len(program.Statements))       }   @    stmt, ok := program.Statements[0].(*ast.ExpressionStatement)       if !ok {   P        t.Fatalf("program.Statements[0] is not ast.ExpressionStatement. got=%T",   "            program.Statements[0])       }       2    ident, ok := stmt.Expression.(*ast.Identifier)       if !ok {   D        t.Fatalf("exp not *ast.Identifier. got=%T", stmt.Expression)       }        if ident.Value != "foobar" {   E        t.Errorf("ident.Value not %s. got=%s", "foobar", ident.Value)       }   )    if ident.TokenLiteral() != "foobar" {   ?        t.Errorf("ident.TokenLiteral not %s. got=%s", "foobar",   !            ident.TokenLiteral())�   �   �   �          }5��    �                                         �    i                               �      �    h                     �                    �    g                     �                    �    e                     �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        d��H     �   
      Q                 let x 5;5��    
                    |                      5�_�   	             
           ����                                                                                                                                                                                                                                                                                                                                                V       d��?     �   
           �         N    �   
      N      let x 5;   	let = 10;   let 838383;`5��    
                      x       ,               �    
                     x                      5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                V       d��@     �         P      let 838383;       `5��                         �                      �                          �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d���     �         C          �         D    �         D            program := p.ParseProgram()       checkParserErrors(t, p)5��                          �                      �                        �               8       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d���    �         E      	checkParserErrors(t, p)�         E      	program := p.ParseProgram()5��                         �                     �                         �                     5��