type dotsConfig = {
    className?: string
}
module Dots = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: dotsConfig => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~children: React.element,
    ~autoplay: bool=?,
    ~dotPosition: [#top |#bottom |#left |#right]=?,
    ~dots: Dots.t=?,
    ~easing: string=?,
    ~effect: [#scrollx |#fade]=?,
    ~afterChange: int => ()=?,
    ~beforeChange: (int, int) => ()=?,
    ~className: string=?,
) => React.element = "Carousel"