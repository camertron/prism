ProgramNode(0...120)(
  ScopeNode(0...0)([]),
  StatementsNode(0...120)(
    [ConstantPathNode(0...4)(
       ConstantReadNode(0...1)(),
       ConstantReadNode(3...4)(),
       (1...3)
     ),
     ConstantPathNode(6...13)(
       ConstantPathNode(6...10)(
         ConstantReadNode(6...7)(),
         ConstantReadNode(9...10)(),
         (7...9)
       ),
       ConstantReadNode(12...13)(),
       (10...12)
     ),
     ConstantPathNode(15...19)(
       CallNode(15...16)(
         nil,
         nil,
         IDENTIFIER(15...16)("a"),
         nil,
         nil,
         nil,
         nil,
         "a"
       ),
       ConstantReadNode(18...19)(),
       (16...18)
     ),
     ConstantPathWriteNode(21...29)(
       ConstantPathNode(21...25)(
         ConstantReadNode(21...22)(),
         ConstantReadNode(24...25)(),
         (22...24)
       ),
       EQUAL(26...27)("="),
       IntegerNode(28...29)()
     ),
     ConstantPathWriteNode(31...36)(
       ConstantReadNode(31...32)(),
       EQUAL(33...34)("="),
       IntegerNode(35...36)()
     ),
     ConstantReadNode(38...41)(),
     CallNode(43...0)(
       nil,
       nil,
       CONSTANT(43...46)("Foo"),
       nil,
       ArgumentsNode(47...48)([IntegerNode(47...48)()]),
       nil,
       nil,
       "Foo"
     ),
     CallNode(50...58)(
       ConstantPathNode(50...53)(nil, ConstantReadNode(52...53)(), (50...52)),
       COLON_COLON(53...55)("::"),
       IDENTIFIER(55...58)("foo"),
       nil,
       nil,
       nil,
       nil,
       "foo"
     ),
     ConstantPathWriteNode(60...67)(
       ConstantPathNode(60...63)(nil, ConstantReadNode(62...63)(), (60...62)),
       EQUAL(64...65)("="),
       IntegerNode(66...67)()
     ),
     ConstantPathWriteNode(69...79)(
       ConstantPathNode(69...75)(
         ConstantPathNode(69...72)(
           nil,
           ConstantReadNode(71...72)(),
           (69...71)
         ),
         ConstantReadNode(74...75)(),
         (72...74)
       ),
       EQUAL(76...77)("="),
       IntegerNode(78...79)()
     ),
     ConstantPathNode(81...87)(
       ConstantPathNode(81...84)(nil, ConstantReadNode(83...84)(), (81...83)),
       ConstantReadNode(86...87)(),
       (84...86)
     ),
     ConstantPathNode(89...92)(nil, ConstantReadNode(91...92)(), (89...91)),
     CallNode(94...98)(
       ConstantReadNode(94...95)(),
       COLON_COLON(95...97)("::"),
       BANG(97...98)("!"),
       nil,
       nil,
       nil,
       nil,
       "!"
     ),
     CallNode(100...108)(
       ConstantReadNode(100...101)(),
       COLON_COLON(101...103)("::"),
       IDENTIFIER(103...108)("false"),
       nil,
       nil,
       nil,
       nil,
       "false"
     ),
     CallNode(110...120)(
       ConstantPathNode(110...114)(
         ConstantReadNode(110...111)(),
         ConstantReadNode(113...114)(),
         (111...113)
       ),
       COLON_COLON(114...116)("::"),
       IDENTIFIER(116...120)("true"),
       nil,
       nil,
       nil,
       nil,
       "true"
     )]
  )
)
