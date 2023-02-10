type fontWeight
external fromVariant: [|#normal |#light |#weight] => fontWeight = "%identity"
external fromInt: int => fontWeight = "%identity"

type font = {
    color?: string,
    fontSize?: int,
    fontWeight?: fontWeight,
    fontFamily?: string,
    fontStyle?: [|#none |#normal |#italic |#oblique]
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~children: React.element,
    ~width: int=?,
    ~height: int=?,
    ~rotate: int=?,
    ~zIndex: int=?,
    ~image: string=?,
    ~content: array<string>=?,
    ~font: font=?,
    ~gap: (int, int)=?,
    ~offset: (int, int)=?,
) => React.element = "Watermark"