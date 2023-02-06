type csp = {
    nonce: string,
}

type numberOrBool
external fromNumber: float => numberOrBool = "%identity"
external fromBool: bool => numberOrBool = "%identity"

type form = {
    requiredMark?: bool,
    colon?: bool,
    validateMessages?: Form.ValidateMessage.t
}

type input = {
    autoComplete?: string
}

type select = {
    showSearch?: bool
}

type size
external fromNumber: float => size = "%identity"
external fromVariant: [|#large |#small |#default] => size = "%identity"

@react.component @module("antd")
external make: (
    ~children: React.element,
    ~autoInsertSpaceInButton: bool=?,
    ~componentDisabled: bool=?,
    ~componentSize: [|#small |#middle |#large]=?,
    ~csp: csp=?,
    ~direction: [#ltr |#rtl]=?,
    ~dropdownMatchSelectWidth: numberOrBool=?,
    ~form: form=?,
    ~getPopupContainer: Webapi.Dom.HtmlElement.t => Webapi.Dom.HtmlElement.t=?,
    ~getTargetContainer: () => Webapi.Dom.HtmlElement.t=?,
    ~iconPrefixCls: string=?,
    ~input: input=?,
    ~select: select=?,
    ~locale: {..}=?,
    ~prefixCls: string=?,
    ~renderEmpty: string => React.element=?,
    ~space: size=?,
    ~theme: {..}=?,
    ~virtual: bool=?,
) => React.element = "ConfigProvider"


type config<'a> = {
    autoInsertSpaceInButton?: bool,
    componentDisabled?: bool,
    componentSize?: [|#small |#middle |#large],
    csp?: csp,
    direction?: [#ltr |#rtl],
    dropdownMatchSelectWidth?: numberOrBool,
    form?: form,
    getPopupContainer?: Webapi.Dom.HtmlElement.t => Webapi.Dom.HtmlElement.t,
    getTargetContainer?: () => Webapi.Dom.HtmlElement.t,
    iconPrefixCls?: string,
    input?: input,
    select?: select,
    locale?: 'a,
    prefixCls?: string,
    renderEmpty?: string => React.element,
    space?: size,
    theme?: 'a,
    virtual?: bool,
}
@module("antd") @scope("ConfigProvider") @val
external config: config<{..}> => () = "config"