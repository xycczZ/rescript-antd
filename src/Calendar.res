type mode = [#year |#month]

type headerRenderConfig<'a> = {
    value: 'a,
    \"type": mode,
    onChange: 'a => (),
    onTypeChange: mode => (),
}

@react.component @module("antd")
external make: (
    ~dateCellRender: 'a => React.element=?,
    ~dateFullCellRender: 'a => React.element=?,
    ~defaultValue: 'a=?,
    ~disabledDate: 'a => bool=?,
    ~fullscreen: bool=?,
    ~headerRender: headerRenderConfig<'a> => React.element=?,
    ~locale: Form.ValidateMessage.t=?,
    ~mode: mode=?,
    ~monthCellRender: 'a => React.element=?,
    ~monthFullCellRender: 'a => React.element=?,
    ~validRange: ('a, 'a)=?,
    ~value: 'a=?,
    ~onChange: 'a => ()=?,
    ~onPanelChange: ('a, mode) => ()=?,
    ~onSelect: 'a => ()=?,
) => React.element = "Calendar"