type alignPosition = [
    |#top
    |#middle
    |#bottom
    |#stretch
]
type alignObj = {
    xs?: alignPosition,
    sm?: alignPosition,
    md?: alignPosition,
    lg?: alignPosition,
    xl?: alignPosition,
    xxl?: alignPosition,
}
type breakPoint = [
    |#xs
    |#sm
    |#md
    |#lg
    |#xl
    |#xxl
]

module Align = {
    type t
    external fromObj: alignObj => t = "%identity"
    external fromVariant: alignPosition => t = "%identity"
}

type gutterObj = {
    xs?: int,
    sm?: int,
    md?: int,
    lg?: int,
    xl?: int,
    xxl?: int,
}

module Gutter = {
    type t
    external fromInt: int => t = "%identity"
    external fromObj: gutterObj => t = "%identity"
    external fromArr: array<gutterObj> => t = "%identity"
}

type justifyPosition = [
    |#start
    |#end
    |#center
    |#"space-around"
    |#"space-between"
    |#"space-evenly"
]
type justifyObj = {
    xs?: justifyPosition,
    sm?: justifyPosition,
    md?: justifyPosition,
    lg?: justifyPosition,
    xl?: justifyPosition,
    xxl?: justifyPosition,
}

module Justify = {
    type t
    external fromPosition: justifyPosition => t = "%identity"
    external fromObj: justifyObj => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~children: React.element=?,
    ~align: Align.t=?,
    ~gutter: Gutter.t=?,
    ~justify: Justify.t=?,
    ~wrap: bool=?
) => React.element = "Row"