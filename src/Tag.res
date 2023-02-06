@react.component @module("antd")
external make: (
    ~children: React.element,
    ~closable: bool=?,
    ~closeIcon: React.element=?,
    ~color: string=?,
    ~icon: React.element=?,
    ~onClose: ReactEvent.Synthetic.t => ()=?,
) => React.element = "Tag"

module CheckableTag = {
    @react.component @module("antd") @scope("Tag")
    external make: (
        ~children: React.element,
        ~checked: bool=?,
        ~onChange: bool => ()=?,
    ) => React.element = "CheckableTag"
}