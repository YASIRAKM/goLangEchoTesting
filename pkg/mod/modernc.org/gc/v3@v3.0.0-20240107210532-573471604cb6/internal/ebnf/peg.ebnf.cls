              AdditiveExpression = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName UnaryExpr
      AdditiveExpressionPreBlock = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr MultiplicativeExpressionPreBlock OperandName OperandPreBlock PackageName PointerType PrimaryExprPreBlock QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName UnaryExprPreBlock
                       AliasDecl = identifier
                       Arguments = "("
                     ArrayLength = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion Expression FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
                       ArrayType = "["
                      Assignment = "%=" "&=" "&^=" "*=" "+=" "-=" "/=" "<<=" "=" ">>=" "^=" "|="
              AssignmentPreBlock = "%=" "&=" "&^=" "*=" "+=" "-=" "/=" "<<=" "=" ">>=" "^=" "|="
                        BaseType = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent SliceType StructType Type TypeLit TypeName
                        BasicLit = float_lit imaginary_lit int_lit rune_lit string_lit
                           Block = "{"
                       BreakStmt = "break"
                         Channel = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion Expression FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
                     ChannelType = "<-" "chan"
                        CommCase = "case" "default"
                      CommClause = "case" "default" CommCase
            CompositeLitPreBlock = "[" "map" "struct" ArrayType LiteralTypePreBlock MapType SliceType StructType
                       Condition = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion Expression FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
               ConditionPreBlock = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpressionPreBlock ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion ExpressionPreBlock FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LogicalAndExpressionPreBlock MapType MethodExpr MultiplicativeExpressionPreBlock OperandName OperandPreBlock PackageName PointerType PrimaryExprPreBlock QualifiedIdent ReceiverType RelationalExpressionPreBlock SliceType StructType Type TypeLit TypeName UnaryExprPreBlock
                       ConstDecl = "const"
                       ConstSpec = identifier IdentifierList
                    ContinueStmt = "continue"
                      Conversion = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent SliceType StructType Type TypeLit TypeName
                     Declaration = "const" "type" "var" ConstDecl TypeDecl VarDecl
                       DeferStmt = "defer"
                         Element = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" "{" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion Expression FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LiteralValue LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
                     ElementList = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" "{" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion Element Expression FunctionLit FunctionType InterfaceType KeyedElement Literal LiteralTypePreBlock LiteralValue LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
                     ElementType = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent SliceType StructType Type TypeLit TypeName
                   EmbeddedField = "*" identifier PackageName QualifiedIdent TypeName
                       EmptyStmt = 
                  ExprCaseClause = "case" "default" ExprSwitchCase
                  ExprSwitchCase = "case" "default"
                  ExprSwitchStmt = "switch"
                      Expression = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
              ExpressionPreBlock = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpressionPreBlock ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LogicalAndExpressionPreBlock MapType MethodExpr MultiplicativeExpressionPreBlock OperandName OperandPreBlock PackageName PointerType PrimaryExprPreBlock QualifiedIdent ReceiverType RelationalExpressionPreBlock SliceType StructType Type TypeLit TypeName UnaryExprPreBlock
                  ExpressionList = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion Expression FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
          ExpressionListPreBlock = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpressionPreBlock ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion ExpressionPreBlock FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LogicalAndExpressionPreBlock MapType MethodExpr MultiplicativeExpressionPreBlock OperandName OperandPreBlock PackageName PointerType PrimaryExprPreBlock QualifiedIdent ReceiverType RelationalExpressionPreBlock SliceType StructType Type TypeLit TypeName UnaryExprPreBlock
                 FallthroughStmt = "fallthrough"
                       FieldDecl = "*" identifier EmbeddedField IdentifierList PackageName QualifiedIdent TypeName
                       ForClause = "!" "&" "(" "*" "+" "-" ";" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpressionPreBlock ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion EmptyStmt ExpressionListPreBlock ExpressionPreBlock FunctionLit FunctionType InitStmt InterfaceType Literal LiteralTypePreBlock LogicalAndExpressionPreBlock MapType MethodExpr MultiplicativeExpressionPreBlock OperandName OperandPreBlock PackageName PointerType PrimaryExprPreBlock QualifiedIdent ReceiverType RelationalExpressionPreBlock SimpleStmtPreBlock SliceType StructType Type TypeLit TypeName UnaryExprPreBlock
                         ForStmt = "for"
                    FunctionBody = "{" Block
                    FunctionDecl = "func"
                     FunctionLit = "func"
                    FunctionName = identifier
                    FunctionType = "func"
                          GoStmt = "go"
                        GotoStmt = "goto"
                  IdentifierList = identifier
                          IfStmt = "if"
                      ImportDecl = "import"
                      ImportPath = string_lit
                      ImportSpec = "." identifier string_lit ImportPath PackageName
                           Index = "["
                        InitStmt = %!s(PANIC=String method: runtime error: index out of range [0] with length 0)
                   InterfaceElem = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" "~" identifier ArrayType ChannelType FunctionType InterfaceType MapType MethodElem MethodName PackageName PointerType QualifiedIdent SliceType StructType Type TypeElem TypeLit TypeName TypeTerm UnderlyingType
                   InterfaceType = "interface"
                         KeyType = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent SliceType StructType Type TypeLit TypeName
                    KeyedElement = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" "{" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion Element Expression FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LiteralValue LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
                           Label = identifier
                     LabeledStmt = identifier Label
                         Literal = "[" "func" "map" "struct" float_lit imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit CompositeLitPreBlock FunctionLit LiteralTypePreBlock MapType SliceType StructType
             LiteralTypePreBlock = "[" "map" "struct" ArrayType MapType SliceType StructType
                    LiteralValue = "{"
            LogicalAndExpression = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
    LogicalAndExpressionPreBlock = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpressionPreBlock ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr MultiplicativeExpressionPreBlock OperandName OperandPreBlock PackageName PointerType PrimaryExprPreBlock QualifiedIdent ReceiverType RelationalExpressionPreBlock SliceType StructType Type TypeLit TypeName UnaryExprPreBlock
                         MapType = "map"
                      MethodDecl = "func"
                      MethodElem = identifier MethodName
                      MethodExpr = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName
                      MethodName = identifier
        MultiplicativeExpression = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName UnaryExpr
MultiplicativeExpressionPreBlock = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr OperandName OperandPreBlock PackageName PointerType PrimaryExprPreBlock QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName UnaryExprPreBlock
                         Operand = "(" "[" "func" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit CompositeLitPreBlock FunctionLit Literal LiteralTypePreBlock MapType OperandName PackageName QualifiedIdent SliceType StructType
                 OperandPreBlock = "(" "[" "func" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit CompositeLitPreBlock FunctionLit Literal LiteralTypePreBlock MapType OperandName PackageName QualifiedIdent SliceType StructType
                     OperandName = identifier PackageName QualifiedIdent
                   PackageClause = "package"
                     PackageName = identifier
                   ParameterDecl = "(" "*" "..." "<-" "[" "chan" "func" "interface" "map" "struct" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent SliceType StructType Type TypeLit TypeName
                   ParameterList = "(" "*" "..." "<-" "[" "chan" "func" "interface" "map" "struct" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName ParameterDecl PointerType QualifiedIdent SliceType StructType Type TypeLit TypeName
                      Parameters = "("
                     PointerType = "*"
                        PostStmt = %!s(PANIC=String method: runtime error: index out of range [0] with length 0)
                     PrimaryExpr = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr Operand OperandName PackageName PointerType QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName
             PrimaryExprPreBlock = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr OperandName OperandPreBlock PackageName PointerType QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName
                  QualifiedIdent = identifier PackageName
                     RangeClause = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "range" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion Expression ExpressionList FunctionLit FunctionType IdentifierList InterfaceType Literal LiteralTypePreBlock LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
                        Receiver = "(" Parameters
                    ReceiverType = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent SliceType StructType Type TypeLit TypeName
                        RecvExpr = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion Expression FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
                        RecvStmt = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion Expression ExpressionList FunctionLit FunctionType IdentifierList InterfaceType Literal LiteralTypePreBlock LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RecvExpr RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
            RelationalExpression = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName UnaryExpr
    RelationalExpressionPreBlock = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpressionPreBlock ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr MultiplicativeExpressionPreBlock OperandName OperandPreBlock PackageName PointerType PrimaryExprPreBlock QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName UnaryExprPreBlock
                          Result = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName Parameters PointerType QualifiedIdent SliceType StructType Type TypeLit TypeName
                      ReturnStmt = "return"
                      SelectStmt = "select"
                        Selector = "."
                        SendStmt = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit AdditiveExpression ArrayType BasicLit Channel ChannelType CompositeLitPreBlock Conversion Expression FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock LogicalAndExpression MapType MethodExpr MultiplicativeExpression Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType RelationalExpression SliceType StructType Type TypeLit TypeName UnaryExpr
                    ShortVarDecl = ":="
            ShortVarDeclPreBlock = ":="
                       Signature = "(" Parameters
                      SimpleStmt = %!s(PANIC=String method: runtime error: index out of range [0] with length 0)
              SimpleStmtPreBlock = %!s(PANIC=String method: runtime error: index out of range [0] with length 0)
                           Slice = "["
                       SliceType = "["
                      SourceFile = "package" PackageClause
                       Statement = %!s(PANIC=String method: runtime error: index out of range [0] with length 0)
                   StatementList = %!s(PANIC=String method: runtime error: index out of range [0] with length 0)
                      StructType = "struct"
                      SwitchStmt = "switch" ExprSwitchStmt TypeSwitchStmt
                             Tag = string_lit
                    TopLevelDecl = "const" "func" "type" "var" ConstDecl Declaration FunctionDecl MethodDecl TypeDecl VarDecl
                            Type = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent SliceType StructType TypeLit TypeName
                        TypeArgs = "["
                   TypeAssertion = "."
                  TypeCaseClause = "case" "default" TypeSwitchCase
                  TypeConstraint = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" "~" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent SliceType StructType Type TypeElem TypeLit TypeName TypeTerm UnderlyingType
                        TypeDecl = "type"
                         TypeDef = identifier
                        TypeElem = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" "~" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent SliceType StructType Type TypeLit TypeName TypeTerm UnderlyingType
                        TypeList = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent SliceType StructType Type TypeLit TypeName
                         TypeLit = "*" "<-" "[" "chan" "func" "interface" "map" "struct" ArrayType ChannelType FunctionType InterfaceType MapType PointerType SliceType StructType
                        TypeName = identifier PackageName QualifiedIdent
                   TypeParamDecl = identifier IdentifierList
                   TypeParamList = identifier IdentifierList TypeParamDecl
                  TypeParameters = "["
                        TypeSpec = identifier AliasDecl TypeDef
                  TypeSwitchCase = "case" "default"
                 TypeSwitchGuard = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName
                  TypeSwitchStmt = "switch"
                        TypeTerm = "(" "*" "<-" "[" "chan" "func" "interface" "map" "struct" "~" identifier ArrayType ChannelType FunctionType InterfaceType MapType PackageName PointerType QualifiedIdent SliceType StructType Type TypeLit TypeName UnderlyingType
                       UnaryExpr = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr Operand OperandName PackageName PointerType PrimaryExpr QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName
               UnaryExprPreBlock = "!" "&" "(" "*" "+" "-" "<-" "[" "^" "chan" "func" "interface" "map" "struct" float_lit identifier imaginary_lit int_lit rune_lit string_lit ArrayType BasicLit ChannelType CompositeLitPreBlock Conversion FunctionLit FunctionType InterfaceType Literal LiteralTypePreBlock MapType MethodExpr OperandName OperandPreBlock PackageName PointerType PrimaryExprPreBlock QualifiedIdent ReceiverType SliceType StructType Type TypeLit TypeName
                  UnderlyingType = "~"
                         VarDecl = "var"
                         VarSpec = identifier IdentifierList