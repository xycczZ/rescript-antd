module Placeholder = {
    type t
    external fromTrue: bool => t = "%identity"
    external fromEl: React.element => t = "%identity"
}

type previewConfig = {
    visible?: bool,
    onVisibleChange?: (bool, bool) => (),
    getContainer?: () => Webapi.Dom.HtmlElement.t,
    src?: string,
    mask?: React.element,
    maskClassName?: string,
    current?: int,
    countRender?: (int, int) => string,
    scaleStep?: int,
    forceRender?: bool,
}
module Preview = {
    type t
    external fromFalse: bool => t = "%identity"
    external fromConfig: previewConfig => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~alt: string=?,
    ~fallback: string=?,
    ~height: string=?,
    ~placeholder: Placeholder.t=?,
    ~preview: Preview.t=?,
    ~src: string=?,
    ~width: string=?,
    ~onError: ReactEvent.Synthetic.t => ()=?,
    ~rootClassName: string=?,
) => React.element = "Image"

module PreviewGroup = {
    type icons = {
        rotateLeft?: React.element,
        rotateRight?: React.element,
        zoomIn?: React.element,
        zoomOut?: React.element,
        close?: React.element,
        left?: React.element,
        right?: React.element,
    }

    @react.component @module("antd") @scope("Image")
    external make: (
        ~className: string=?,
        ~previewPrefixCls: string=?,
        ~icons: icons=?,
        ~preview: Preview.t=?,
        ~children: React.element=?,
    ) => React.element = "PreviewGroup"
}