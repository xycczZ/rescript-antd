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
type align
external fromObj: alignObj => align = "%identity"
external fromVariant: alignPosition => align = "%identity"

type gutterObj = {
    xs?: int,
    sm?: int,
    md?: int,
    lg?: int,
    xl?: int,
    xxl?: int,
}
type gutter
external fromInt: int => gutter = "%identity"
external fromObj: gutterObj => gutter = "%identity"
external fromArr: array<gutterObj> => gutter = "%identity"

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
type justify
external fromPosition: justifyPosition => justify = "%identity"
external fromObj: justifyObj => justify = "%identity"

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~align: align=?,
    ~gutter: gutter=?,
    ~justify: justify=?,
    ~wrap: bool=?
) => React.element = "Row"