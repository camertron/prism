ProgramNode(0...24)(
  ScopeNode(0...0)([]),
  StatementsNode(0...24)(
    [CallNode(0...1)(
       nil,
       nil,
       IDENTIFIER(0...1)("x"),
       nil,
       ArgumentsNode(2...11)(
         [HashNode(2...11)(
            nil,
            [AssocNode(2...11)(
               InterpolatedSymbolNode(2...9)(
                 STRING_BEGIN(2...3)("\""),
                 [StringInterpolatedNode(3...7)(
                    EMBEXPR_BEGIN(3...5)("\#{"),
                    StatementsNode(5...6)(
                      [CallNode(5...6)(
                         nil,
                         nil,
                         IDENTIFIER(5...6)("k"),
                         nil,
                         nil,
                         nil,
                         nil,
                         "k"
                       )]
                    ),
                    EMBEXPR_END(6...7)("}")
                  )],
                 LABEL_END(7...9)("\":")
               ),
               IntegerNode(9...11)(),
               nil
             )],
            nil
          )]
       ),
       nil,
       nil,
       "x"
     ),
     CallNode(13...14)(
       nil,
       nil,
       IDENTIFIER(13...14)("x"),
       nil,
       ArgumentsNode(15...21)(
         [HashNode(15...21)(
            nil,
            [AssocNode(15...21)(
               SymbolNode(15...19)(
                 STRING_BEGIN(15...16)("\""),
                 STRING_CONTENT(16...17)("k"),
                 LABEL_END(17...19)("\":"),
                 "k"
               ),
               IntegerNode(19...21)(),
               nil
             )],
            nil
          )]
       ),
       nil,
       nil,
       "x"
     ),
     CallNode(23...24)(
       nil,
       nil,
       IDENTIFIER(23...24)("x"),
       nil,
       ArgumentsNode(25...31)(
         [HashNode(25...31)(
            nil,
            [AssocNode(25...31)(
               SymbolNode(25...29)(
                 STRING_BEGIN(25...26)("'"),
                 STRING_CONTENT(26...27)("k"),
                 LABEL_END(27...29)("':"),
                 "k"
               ),
               IntegerNode(29...31)(),
               nil
             )],
            nil
          )]
       ),
       nil,
       nil,
       "x"
     )]
  )
)