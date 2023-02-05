@react.component @module("antd")
external make: (
    ~children: React.element
) => React.element = "App"

type app<'a> = {
    message: Message.instance,
    notification: Notification.instance,
    modal: Modal.instance<'a>
}
@module("antd") @scope("App") @val
external useApp: () => app<{..}> = "useApp"