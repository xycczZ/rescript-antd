type fontWeight
external fromInvariant: [|#normal |#light |#weight] => fontWeight = "%identity"
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