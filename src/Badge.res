@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~color: string=?,
    ~count: React.element,
    ~dot: bool=?,
    ~offset: (int, int)=?,
    ~overflowCount: int=?,
    ~showZero: bool=?,
    ~size: [#default |#small]=?,
    ~status: [#success |#processing |#default |#error |#warning]=?,
    ~text: React.element=?,
    ~title: string=?,
    ~className: string=?,
) => React.element = "Badge"

module Ribbon = {
    @react.component @module("antd") @scope("Badge")
    external make: (
        ~children: React.element,
        ~color: string=?,
        ~placement: [#start |#end]=?,
        ~text: React.element=?,
    ) => React.element = "Ribbon"
}