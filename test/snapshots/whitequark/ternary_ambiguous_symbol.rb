ProgramNode(0...13)(
  ScopeNode(0...0)([IDENTIFIER(0...1)("t")]),
  StatementsNode(0...13)(
    [LocalVariableWriteNode(0...3)((0...1), IntegerNode(2...3)(), (1...2), 0),
     IfNode(9...13)(
       QUESTION_MARK(9...10)("?"),
       ParenthesesNode(4...9)(
         StatementsNode(5...8)(
           [CallNode(5...8)(
              nil,
              nil,
              IDENTIFIER(5...8)("foo"),
              nil,
              nil,
              nil,
              nil,
              "foo"
            )]
         ),
         (4...5),
         (8...9)
       ),
       StatementsNode(10...11)([LocalVariableReadNode(10...11)(0)]),
       ElseNode(11...13)(
         COLON(11...12)(":"),
         StatementsNode(12...13)([ConstantReadNode(12...13)()]),
         nil
       ),
       nil
     )]
  )
)