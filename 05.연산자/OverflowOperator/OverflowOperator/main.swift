var unsigndeInteger: UInt8 = 0

//underflow
let errorUnderflowResult: UInt8 = unsigndeInteger - 1 // Swift runtime failure: arithmetic overflow
let underflowResult: UInt8 = unsigndeInteger &- 1 // 255

//overflow
unsigndeInteger = UInt8.max
let errorOverflowResult: UInt8 = unsigndeInteger + 1 // Swift runtime failure: arithmetic overflow
let overflowResult: UInt8 = unsigndeInteger &+ 1 // 0
