ProgramNode(0...36)(
  ScopeNode(0...0)([]),
  StatementsNode(0...36)(
    [CaseNode(0...36)(
       SymbolNode(5...7)(
         SYMBOL_BEGIN(5...6)(":"),
         IDENTIFIER(6...7)("a"),
         nil,
         "a"
       ),
       [InNode(8...32)(
          HashPatternNode(11...27)(
            nil,
            [AssocNode(13...25)(
               SymbolNode(13...15)(
                 nil,
                 LABEL(13...14)("b"),
                 LABEL_END(14...15)(":"),
                 "b"
               ),
               ArrayPatternNode(16...25)(
                 nil,
                 [ConstantReadNode(17...21)()],
                 SplatNode(23...24)(USTAR(23...24)("*"), nil),
                 [],
                 (16...17),
                 (24...25)
               ),
               nil
             )],
            nil,
            (11...12),
            (26...27)
          ),
          StatementsNode(30...32)(
            [SymbolNode(30...32)(
               SYMBOL_BEGIN(30...31)(":"),
               IDENTIFIER(31...32)("c"),
               nil,
               "c"
             )]
          ),
          (8...10),
          nil
        )],
       nil,
       (0...4),
       (33...36)
     )]
  )
)