module FontWeight = {
    type t
    external fromVariant: [|#normal |#light |#weight] => t = "%identity"
    external fromInt: int => t = "%identity"
}

type font = {
    color?: string,
    fontSize?: int,
    fontWeight?: FontWeight.t,
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