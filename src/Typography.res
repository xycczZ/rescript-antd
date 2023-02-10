module TooltipType = {
    type t
    external fromBool: bool => t = "%identity"
    external fromEl: React.element => t = "%identity"
}

type copyConfig = {
    text?: string,
    onCopy?: option<ReactEvent.Synthetic.t> => (),
    icon?: React.element,
    tooltips?: TooltipType.t,
    format?: [|#"text/plain" |#"text/html"]
}

module Copyable = {
    type t
    external fromBool: bool => t = "%identity"
    external fromCopyConfig: copyConfig => t = "%identity"
}

type autoSizeType = {
    minRows?: int,
    maxRows?: int
}

module AutoSize = {
    type t
    external fromBool: bool => t = "%identity"
    external fromSizeType: autoSizeType => t = "%identity"
}

type editConfig = {
    text?: string,
    editing?: bool,
    icon?: React.element,
    tooltip?: TooltipType.t,
    onStart?: () => (),
    onChange?: string => (),
    onCancel?: () => (),
    onEnd?: () => (),
    maxLength?: int,
    autoSize?: AutoSize.t,
    triggerType?: array<[|#icon |#text]>,
    enterIcon?: React.element,
}

module Editable = {
    type t
    external fromBool: bool => t = "%identity"
    external fromEditConfig: editConfig => t = "%identity"
}

module OverflowAdjust = {
    type t
    external fromBool: bool => t = "%identity"
    external fromNumber: float => t = "%identity"
}

type overflow = {
    adjustX?: OverflowAdjust.t,
    adjustY?: OverflowAdjust.t,
}

type alignType = {
    points?: array<string>,
    offset?: array<int>,
    targetOffset?: array<int>,
    overflow?: overflow,
    useCssRight?: bool,
    useCssBottom?: bool,
    useCssTransform?: bool,
    ignoreShake?: bool,
}

type destroyTooltipOnHideConfig = {
    keepParent?: bool
}

module DestroyTooltipOnHide = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: destroyTooltipOnHideConfig => t = "%identity"
}

type tooltipPropConfig = {
    title: () => React.element,
    align: alignType,
    arrowPointAtCenter: bool,
    autoAdjustOverflow: bool,
    color: string,
    defaultOpen: bool,
    destroyTooltipOnHide: DestroyTooltipOnHide.t,
    getPopupContainer: Webapi.Dom.HtmlElement.t => Webapi.Dom.HtmlElement.t,
    mouseEnterDelay: float,
    mouseLeaveDelay: float,
    overlayClassName: string,
    overlayStyle: ReactDOM.style,
    overlayInnerStyle: ReactDOM.style,
    placement: [#top | #bottom |#left |#right |#topLeft |#topRight 
        |#bottomLeft |#bottomRight |#leftTop |#leftBottom |#rightTop |#rightBottom],
    trigger: array<[#hover |#focus |#click |#contextMenu]>,
    \"open": bool,
    zIndex: int,
    onOpenChange: bool => (),
}

module TooltipProps = {
    type t
    external fromBool: bool => t = "%identity"
    external fromEl: React.element => t = "%identity"
    external fromTooltipPropConfig: tooltipPropConfig => t = "%identity"
}

type ellipsisConfig = {
    rows?: int,
    expandable?: bool,
    suffix?: string,
    symbol?: React.element,
    onExpand?: ReactEvent.Mouse.t => (),
    onEllipsis?: bool => (),
    tooltop?: TooltipProps.t
}

module Ellipsis = {
    type t
    external fromBool: bool => t = "%identity"
}

module Text = {
    @react.component @module("antd") @scope("Typography")
    external make: (
        ~className: string=?,
        ~children: React.element=?,
        ~code: bool=?,
        ~copyable: Copyable.t=?,
        ~delete: bool=?,
        ~disabled: bool=?,
        ~editable: Editable.t=?,
        ~ellipsis: Ellipsis.t=?,
        ~keyboard: bool=?,
        ~mark: bool=?,
        ~onClick: ReactEvent.Synthetic.t => ()=?,
        ~strong: bool=?,
        ~italic: bool=?,
        ~\"type": [#secondary |#success |#warning |#danger]=?,
        ~underline: bool=?,
    ) => React.element = "Text"
}

module Title = {
    @react.component @module("antd") @scope("Typography")
    external make: (
        ~className: string=?,
        ~children: React.element=?,
        ~code: bool=?,
        ~copyable: Copyable.t=?,
        ~delete: bool=?,
        ~disabled: bool=?,
        ~editable: Editable.t=?,
        ~ellipsis: Ellipsis.t=?,
        ~keyboard: bool=?,
        ~mark: bool=?,
        ~onClick: ReactEvent.Synthetic.t => ()=?,
        ~strong: bool=?,
        ~italic: bool=?,
        ~level: @int[#1 |#2 |#3 |#4 |#5]=?,
        ~\"type": [#secondary |#success |#warning |#danger]=?,
        ~underline: bool=?,
    ) => React.element = "Title"
}

module Paragraph = {
    @react.component @module("antd") @scope("Typography")
    external make: (
        ~className: string=?,
        ~children: React.element=?,
        ~code: bool=?,
        ~copyable: Copyable.t=?,
        ~delete: bool=?,
        ~disabled: bool=?,
        ~editable: Editable.t=?,
        ~ellipsis: Ellipsis.t=?,
        ~keyboard: bool=?,
        ~mark: bool=?,
        ~onClick: ReactEvent.Synthetic.t => ()=?,
        ~strong: bool=?,
        ~italic: bool=?,
        ~\"type": [#secondary |#success |#warning |#danger]=?,
        ~underline: bool=?,
    ) => React.element = "Paragraph"
}

module Link = {
    @react.component @module("antd") @scope("Typography")
    external make: (
        ~className: string=?,
        ~children: React.element=?,
        ~code: bool=?,
        ~copyable: Copyable.t=?,
        ~delete: bool=?,
        ~disabled: bool=?,
        ~editable: Editable.t=?,
        ~ellipsis: bool=?,
        ~keyboard: bool=?,
        ~mark: bool=?,
        ~onClick: ReactEvent.Synthetic.t => ()=?,
        ~strong: bool=?,
        ~italic: bool=?,
        ~\"type": [#secondary |#success |#warning |#danger]=?,
        ~underline: bool=?,
    ) => React.element = "Link"
}