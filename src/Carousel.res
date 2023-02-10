type dotsConfig = {
    className?: string
}
type dots
external fromBool: bool => dots = "%identity"
external fromConfig: dotsConfig => dots = "%identity"

@react.component @module("antd")
external make: (
    ~children: React.element,
    ~autoplay: bool=?,
    ~dotPosition: [#top |#bottom |#left |#right]=?,
    ~dots: dots=?,
    ~easing: string=?,
    ~effect: [#scrollx |#fade]=?,
    ~afterChange: int => ()=?,
    ~beforeChange: (int, int) => ()=?,
    ~className: string=?,
) => React.element = "Carousel"