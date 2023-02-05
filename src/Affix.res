@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~offsetBottom: int=?,
    ~offsetTop: int=?,
    ~target: () => Webapi.Dom.HtmlElement.t=?,
    ~onChange: (option<bool>) => ()=?,
) => React.element = "Affix"