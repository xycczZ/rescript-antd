type lang = {
  locale?: string,
  placeholder?: string,
  rangePlaceholder?: (string, string),
  today?: string,
  now?: string,
  backToToday?: string,
  ok?: string,
  clear?: string,
  month?: string,
  year?: string,
  timeSelect?: string,
  dateSelect?: string,
  monthSelect?: string,
  yearSelect?: string,
  decadeSelect?: string,
  yearFormat?: string,
  dateFormat?: string,
  dayFormat?: string,
  dateTimeFormat?: string,
  monthFormat?: string,
  monthBeforeYear?: bool,
  previousMonth?: string,
  nextMonth?: string,
  previousYear?: string,
  nextYear?: string,
  previousDecade?: string,
  nextDecade?: string,
  previousCentury?: string,
  nextCentury?: string,
}
type timePickerLocale = {placeholder?: string}

type locale = {
  lang: lang,
  timePickerLocale: timePickerLocale,
  dateFormat: string,
  dateTimeFormat: string,
  weekFormat: string,
  monthFormat: string,
}

type presets<'d> = {
  label: React.element,
  value: 'd,
}

type mode = [#time | #date | #month | #year | #decade]
type panelMode = [#time | #date | #week | #month | #quarter | #year | #decade]

type disabledTimes = {
  disabledHours?: unit => array<int>,
  disabledMinutes?: int => array<int>,
  disabledSeconds?: (int, int) => array<int>,
}

module Format = {
  type t
  external fromStr: string => t = "%identity"
  external fromFn: ('a => string) => t = "%identity"
}

type sharedTimeProps<'a> = {
  format?: string,
  showNow?: bool,
  showHour?: bool,
  showMinute?: bool,
  showSecond?: bool,
  use12Hours?: bool,
  hourStep?: int,
  minuteStep?: int,
  secondStep?: int,
  hideDisabledOptions?: bool,
  defaultValue?: 'a,
  disabledTime?: 'a => disabledTimes,
}

module ShowTime = {
  type t
  external fromBool: bool => t = "%identity"
  external fromSharedTimeProps: sharedTimeProps<'a> => t = "%identity"
}

type monthLocale = {
  locale: string,
  /** Display month before year in date panel header */
  monthBeforeYear?: bool,
  yearFormat: string,
  monthFormat?: string,
  quarterFormat?: string,
  today: string,
  now: string,
  backToToday: string,
  ok: string,
  timeSelect: string,
  dateSelect: string,
  weekSelect?: string,
  clear: string,
  month: string,
  year: string,
  previousMonth: string,
  nextMonth: string,
  monthSelect: string,
  yearSelect: string,
  decadeSelect: string,
  dayFormat: string,
  dateFormat: string,
  dateTimeFormat: string,
  previousYear: string,
  nextYear: string,
  previousDecade: string,
  nextDecade: string,
  previousCentury: string,
  nextCentury: string,
  shortWeekDays?: array<string>,
  shortMonths?: array<string>,
}

module OverflowField = {
  type t
  external fromBool: bool => t = "%identity"
  external fromNumber: float => t = "%identity"
}
type overflow = {
  adjustX?: OverflowField.t,
  adjustY?: OverflowField.t,
}

type alignType = {
  points?: array<string>,
  /**



     * offset source node by offset[0] in x and offset[1] in y.



     * If offset contains percentage string value, it is relative to sourceNode region.



     */
  offset?: array<float>,
  /**



     * offset target node by offset[0] in x and offset[1] in y.



     * If targetOffset contains percentage string value, it is relative to targetNode region.



     */
  targetOffset?: array<float>,
  /**



     * If adjustX field is true, will adjust source node in x direction if source node is invisible.



     * If adjustY field is true, will adjust source node in y direction if source node is invisible.



     */
  overflow?: overflow,
  /**



     * Whether use css right instead of left to position



     */
  useCssRight?: bool,
  /**



     * Whether use css bottom instead of top to position



     */
  useCssBottom?: bool,
  /**



     * Whether use css transform instead of left/top/right/bottom to position if browser supports.



     * Defaults to false.



     */
  useCssTransform?: bool,
  ignoreShake?: bool,
}

@react.component @module("antd")
external make: (
  ~className: string=?,
  ~dropdownClassName: string=?,
  ~allowClear: bool=?,
  ~inputReadOnly: bool=?,
  ~id: string=?,
  ~dropdownAlign: alignType=?,
  ~popupStyle: ReactDOM.style=?,
  ~transitionName: string=?,
  ~tabIndex: int=?,
  ~autoFocus: bool=?,
  ~bordered: bool=?,
  ~className: string=?,
  ~dateRender: ('a, 'a) => React.element=?,
  ~disabled: bool=?,
  ~disabledDate: 'a => bool,
  ~popupClassName: string=?,
  ~getPopupContainer: unit => Webapi.Dom.HtmlElement.t=?,
  ~inputReadOnly: bool=?,
  ~locale: locale=?,
  ~mode: panelMode=?,
  ~nextIcon: React.element=?,
  ~\"open": bool=?,
  ~defaultOpen: bool=?,
  ~panelRender: React.element => React.element=?,
  ~picker: [#date | #week | #month | #quarter | #year]=?,
  ~placeholder: (string, string)=?,
  ~placement: [#bottomLeft | #bottomRight | #topLeft | #topRight]=?,
  ~popupStyle: ReactDOM.style=?,
  ~prevIcon: React.element=?,
  ~presets: array<presets<'a>>=?,
  ~size: [#large | #small | #middle]=?,
  ~status: [#error | #warning]=?,
  ~style: ReactDOM.style=?,
  ~suffixIcon: React.element=?,
  ~superNextIcon: React.element=?,
  ~superPrevIcon: React.element=?,
  ~onOpenChange: bool => unit=?,
  ~onPanelChange: ('a, panelMode) => unit=?,
  ~onFocus: ReactEvent.Synthetic.t => unit=?,
  ~onBlur: ReactEvent.Synthetic.t => unit=?,
  ~onMouseDown: ReactEvent.Mouse.t => unit=?,
  ~onMouseUp: ReactEvent.Mouse.t => unit=?,
  ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
  ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
  ~onClick: ReactEvent.Mouse.t => unit=?,
  ~onContextMenu: ReactEvent.Mouse.t => unit=?,
  ~onKeyDown: (ReactEvent.Keyboard.t, unit => unit) => unit=?,
  ~role: string=?,
  ~name: string=?,
  ~autoComplete: string=?,
  ~direction: [#ltr | #rtl],
  ~defaultPickerValue: 'a=?,
  ~defaultValue: 'a=?,
  ~disabledTime: Js.null<'a> => disabledTimes=?,
  ~format: Format.t=?,
  ~renderExtraFooter: panelMode => React.element=?,
  ~showNow: bool=?,
  ~showTime: ShowTime.t=?,
  ~defaultValue: 'a=?,
  ~showToday: bool=?,
  ~value: 'a=?,
  ~onChange: 'a => unit=?,
  ~onOk: unit => unit=?,
  ~monthCellRender: ('a, monthLocale) => React.element=?,
) => React.element = "DatePicker"

module YearPicker = {
  @react.component @module("antd") @scope("DatePicker")
  external make: (
    ~className: string=?,
    ~dropdownClassName: string=?,
    ~allowClear: bool=?,
    ~inputReadOnly: bool=?,
    ~id: string=?,
    ~dropdownAlign: alignType=?,
    ~popupStyle: ReactDOM.style=?,
    ~transitionName: string=?,
    ~tabIndex: int=?,
    ~autoFocus: bool=?,
    ~bordered: bool=?,
    ~className: string=?,
    ~dateRender: ('a, 'a) => React.element=?,
    ~disabled: bool=?,
    ~disabledDate: 'a => bool,
    ~popupClassName: string=?,
    ~getPopupContainer: unit => Webapi.Dom.HtmlElement.t=?,
    ~inputReadOnly: bool=?,
    ~locale: locale=?,
    ~mode: panelMode=?,
    ~nextIcon: React.element=?,
    ~\"open": bool=?,
    ~defaultOpen: bool=?,
    ~panelRender: React.element => React.element=?,
    ~picker: [#date | #week | #month | #quarter | #year]=?,
    ~placeholder: (string, string)=?,
    ~placement: [#bottomLeft | #bottomRight | #topLeft | #topRight]=?,
    ~popupStyle: ReactDOM.style=?,
    ~prevIcon: React.element=?,
    ~presets: array<presets<'a>>=?,
    ~size: [#large | #small | #middle]=?,
    ~status: [#error | #warning]=?,
    ~style: ReactDOM.style=?,
    ~suffixIcon: React.element=?,
    ~superNextIcon: React.element=?,
    ~superPrevIcon: React.element=?,
    ~onOpenChange: bool => unit=?,
    ~onPanelChange: ('a, panelMode) => unit=?,
    ~onFocus: ReactEvent.Synthetic.t => unit=?,
    ~onBlur: ReactEvent.Synthetic.t => unit=?,
    ~onMouseDown: ReactEvent.Mouse.t => unit=?,
    ~onMouseUp: ReactEvent.Mouse.t => unit=?,
    ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
    ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~onContextMenu: ReactEvent.Mouse.t => unit=?,
    ~onKeyDown: (ReactEvent.Keyboard.t, unit => unit) => unit=?,
    ~role: string=?,
    ~name: string=?,
    ~autoComplete: string=?,
    ~direction: [#ltr | #rtl],
    ~defaultPickerValue: 'a=?,
    ~defaultValue: 'a=?,
    ~disabledTime: Js.null<'a> => disabledTimes=?,
    ~format: Format.t=?,
    ~renderExtraFooter: panelMode => React.element=?,
    ~showNow: bool=?,
    ~showTime: ShowTime.t=?,
    ~defaultValue: 'a=?,
    ~showToday: bool=?,
    ~value: 'a=?,
    ~onChange: 'a => unit=?,
    ~onOk: unit => unit=?,
    ~monthCellRender: ('a, monthLocale) => React.element=?,
  ) => React.element = "YearPicker"
}

module MonthPicker = {
  @react.component @module("antd") @scope("DatePicker")
  external make: (
    ~className: string=?,
    ~dropdownClassName: string=?,
    ~allowClear: bool=?,
    ~inputReadOnly: bool=?,
    ~id: string=?,
    ~dropdownAlign: alignType=?,
    ~popupStyle: ReactDOM.style=?,
    ~transitionName: string=?,
    ~tabIndex: int=?,
    ~autoFocus: bool=?,
    ~bordered: bool=?,
    ~className: string=?,
    ~dateRender: ('a, 'a) => React.element=?,
    ~disabled: bool=?,
    ~disabledDate: 'a => bool,
    ~popupClassName: string=?,
    ~getPopupContainer: unit => Webapi.Dom.HtmlElement.t=?,
    ~inputReadOnly: bool=?,
    ~locale: locale=?,
    ~mode: panelMode=?,
    ~nextIcon: React.element=?,
    ~\"open": bool=?,
    ~defaultOpen: bool=?,
    ~panelRender: React.element => React.element=?,
    ~picker: [#date | #week | #month | #quarter | #year]=?,
    ~placeholder: (string, string)=?,
    ~placement: [#bottomLeft | #bottomRight | #topLeft | #topRight]=?,
    ~popupStyle: ReactDOM.style=?,
    ~prevIcon: React.element=?,
    ~presets: array<presets<'a>>=?,
    ~size: [#large | #small | #middle]=?,
    ~status: [#error | #warning]=?,
    ~style: ReactDOM.style=?,
    ~suffixIcon: React.element=?,
    ~superNextIcon: React.element=?,
    ~superPrevIcon: React.element=?,
    ~onOpenChange: bool => unit=?,
    ~onPanelChange: ('a, panelMode) => unit=?,
    ~onFocus: ReactEvent.Synthetic.t => unit=?,
    ~onBlur: ReactEvent.Synthetic.t => unit=?,
    ~onMouseDown: ReactEvent.Mouse.t => unit=?,
    ~onMouseUp: ReactEvent.Mouse.t => unit=?,
    ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
    ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~onContextMenu: ReactEvent.Mouse.t => unit=?,
    ~onKeyDown: (ReactEvent.Keyboard.t, unit => unit) => unit=?,
    ~role: string=?,
    ~name: string=?,
    ~autoComplete: string=?,
    ~direction: [#ltr | #rtl],
    ~defaultPickerValue: 'a=?,
    ~defaultValue: 'a=?,
    ~disabledTime: Js.null<'a> => disabledTimes=?,
    ~format: Format.t=?,
    ~renderExtraFooter: panelMode => React.element=?,
    ~showNow: bool=?,
    ~showTime: ShowTime.t=?,
    ~defaultValue: 'a=?,
    ~showToday: bool=?,
    ~value: 'a=?,
    ~onChange: 'a => unit=?,
    ~onOk: unit => unit=?,
    ~monthCellRender: ('a, monthLocale) => React.element=?,
  ) => React.element = "MonthPicker"
}

module WeekPicker = {
  @react.component @module("antd") @scope("DatePicker")
  external make: (
    ~className: string=?,
    ~dropdownClassName: string=?,
    ~allowClear: bool=?,
    ~inputReadOnly: bool=?,
    ~id: string=?,
    ~dropdownAlign: alignType=?,
    ~popupStyle: ReactDOM.style=?,
    ~transitionName: string=?,
    ~tabIndex: int=?,
    ~autoFocus: bool=?,
    ~bordered: bool=?,
    ~className: string=?,
    ~dateRender: ('a, 'a) => React.element=?,
    ~disabled: bool=?,
    ~disabledDate: 'a => bool,
    ~popupClassName: string=?,
    ~getPopupContainer: unit => Webapi.Dom.HtmlElement.t=?,
    ~inputReadOnly: bool=?,
    ~locale: locale=?,
    ~mode: panelMode=?,
    ~nextIcon: React.element=?,
    ~\"open": bool=?,
    ~defaultOpen: bool=?,
    ~panelRender: React.element => React.element=?,
    ~picker: [#date | #week | #month | #quarter | #year]=?,
    ~placeholder: (string, string)=?,
    ~placement: [#bottomLeft | #bottomRight | #topLeft | #topRight]=?,
    ~popupStyle: ReactDOM.style=?,
    ~prevIcon: React.element=?,
    ~presets: array<presets<'a>>=?,
    ~size: [#large | #small | #middle]=?,
    ~status: [#error | #warning]=?,
    ~style: ReactDOM.style=?,
    ~suffixIcon: React.element=?,
    ~superNextIcon: React.element=?,
    ~superPrevIcon: React.element=?,
    ~onOpenChange: bool => unit=?,
    ~onPanelChange: ('a, panelMode) => unit=?,
    ~onFocus: ReactEvent.Synthetic.t => unit=?,
    ~onBlur: ReactEvent.Synthetic.t => unit=?,
    ~onMouseDown: ReactEvent.Mouse.t => unit=?,
    ~onMouseUp: ReactEvent.Mouse.t => unit=?,
    ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
    ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~onContextMenu: ReactEvent.Mouse.t => unit=?,
    ~onKeyDown: (ReactEvent.Keyboard.t, unit => unit) => unit=?,
    ~role: string=?,
    ~name: string=?,
    ~autoComplete: string=?,
    ~direction: [#ltr | #rtl],
    ~defaultPickerValue: 'a=?,
    ~defaultValue: 'a=?,
    ~disabledTime: Js.null<'a> => disabledTimes=?,
    ~format: Format.t=?,
    ~renderExtraFooter: panelMode => React.element=?,
    ~showNow: bool=?,
    ~showTime: ShowTime.t=?,
    ~defaultValue: 'a=?,
    ~showToday: bool=?,
    ~value: 'a=?,
    ~onChange: 'a => unit=?,
    ~onOk: unit => unit=?,
    ~monthCellRender: ('a, monthLocale) => React.element=?,
  ) => React.element = "WeekPicker"
}

module TimePicker = {
  @react.component @module("antd") @scope("DatePicker")
  external make: (
    ~className: string=?,
    ~dropdownClassName: string=?,
    ~allowClear: bool=?,
    ~inputReadOnly: bool=?,
    ~id: string=?,
    ~dropdownAlign: alignType=?,
    ~popupStyle: ReactDOM.style=?,
    ~transitionName: string=?,
    ~tabIndex: int=?,
    ~autoFocus: bool=?,
    ~bordered: bool=?,
    ~className: string=?,
    ~dateRender: ('a, 'a) => React.element=?,
    ~disabled: bool=?,
    ~disabledDate: 'a => bool,
    ~popupClassName: string=?,
    ~getPopupContainer: unit => Webapi.Dom.HtmlElement.t=?,
    ~inputReadOnly: bool=?,
    ~locale: locale=?,
    ~mode: panelMode=?,
    ~nextIcon: React.element=?,
    ~\"open": bool=?,
    ~defaultOpen: bool=?,
    ~panelRender: React.element => React.element=?,
    ~picker: [#date | #week | #month | #quarter | #year]=?,
    ~placeholder: (string, string)=?,
    ~placement: [#bottomLeft | #bottomRight | #topLeft | #topRight]=?,
    ~popupStyle: ReactDOM.style=?,
    ~prevIcon: React.element=?,
    ~presets: array<presets<'a>>=?,
    ~size: [#large | #small | #middle]=?,
    ~status: [#error | #warning]=?,
    ~style: ReactDOM.style=?,
    ~suffixIcon: React.element=?,
    ~superNextIcon: React.element=?,
    ~superPrevIcon: React.element=?,
    ~onOpenChange: bool => unit=?,
    ~onPanelChange: ('a, panelMode) => unit=?,
    ~onFocus: ReactEvent.Synthetic.t => unit=?,
    ~onBlur: ReactEvent.Synthetic.t => unit=?,
    ~onMouseDown: ReactEvent.Mouse.t => unit=?,
    ~onMouseUp: ReactEvent.Mouse.t => unit=?,
    ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
    ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~onContextMenu: ReactEvent.Mouse.t => unit=?,
    ~onKeyDown: (ReactEvent.Keyboard.t, unit => unit) => unit=?,
    ~role: string=?,
    ~name: string=?,
    ~autoComplete: string=?,
    ~direction: [#ltr | #rtl],
    ~defaultPickerValue: 'a=?,
    ~defaultValue: 'a=?,
    ~disabledTime: Js.null<'a> => disabledTimes=?,
    ~format: Format.t=?,
    ~renderExtraFooter: panelMode => React.element=?,
    ~showNow: bool=?,
    ~showTime: ShowTime.t=?,
    ~defaultValue: 'a=?,
    ~showToday: bool=?,
    ~value: 'a=?,
    ~onChange: 'a => unit=?,
    ~onOk: unit => unit=?,
    ~monthCellRender: ('a, monthLocale) => React.element=?,
  ) => React.element = "TimePicker"
}

module QuarterPicker = {
  @react.component @module("antd") @scope("DatePicker")
  external make: (
    ~className: string=?,
    ~dropdownClassName: string=?,
    ~allowClear: bool=?,
    ~inputReadOnly: bool=?,
    ~id: string=?,
    ~dropdownAlign: alignType=?,
    ~popupStyle: ReactDOM.style=?,
    ~transitionName: string=?,
    ~tabIndex: int=?,
    ~autoFocus: bool=?,
    ~bordered: bool=?,
    ~className: string=?,
    ~dateRender: ('a, 'a) => React.element=?,
    ~disabled: bool=?,
    ~disabledDate: 'a => bool,
    ~popupClassName: string=?,
    ~getPopupContainer: unit => Webapi.Dom.HtmlElement.t=?,
    ~inputReadOnly: bool=?,
    ~locale: locale=?,
    ~mode: panelMode=?,
    ~nextIcon: React.element=?,
    ~\"open": bool=?,
    ~defaultOpen: bool=?,
    ~panelRender: React.element => React.element=?,
    ~picker: [#date | #week | #month | #quarter | #year]=?,
    ~placeholder: (string, string)=?,
    ~placement: [#bottomLeft | #bottomRight | #topLeft | #topRight]=?,
    ~popupStyle: ReactDOM.style=?,
    ~prevIcon: React.element=?,
    ~presets: array<presets<'a>>=?,
    ~size: [#large | #small | #middle]=?,
    ~status: [#error | #warning]=?,
    ~style: ReactDOM.style=?,
    ~suffixIcon: React.element=?,
    ~superNextIcon: React.element=?,
    ~superPrevIcon: React.element=?,
    ~onOpenChange: bool => unit=?,
    ~onPanelChange: ('a, panelMode) => unit=?,
    ~onFocus: ReactEvent.Synthetic.t => unit=?,
    ~onBlur: ReactEvent.Synthetic.t => unit=?,
    ~onMouseDown: ReactEvent.Mouse.t => unit=?,
    ~onMouseUp: ReactEvent.Mouse.t => unit=?,
    ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
    ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~onContextMenu: ReactEvent.Mouse.t => unit=?,
    ~onKeyDown: (ReactEvent.Keyboard.t, unit => unit) => unit=?,
    ~role: string=?,
    ~name: string=?,
    ~autoComplete: string=?,
    ~direction: [#ltr | #rtl],
    ~defaultPickerValue: 'a=?,
    ~defaultValue: 'a=?,
    ~disabledTime: Js.null<'a> => disabledTimes=?,
    ~format: Format.t=?,
    ~renderExtraFooter: panelMode => React.element=?,
    ~showNow: bool=?,
    ~showTime: ShowTime.t=?,
    ~defaultValue: 'a=?,
    ~showToday: bool=?,
    ~value: 'a=?,
    ~onChange: 'a => unit=?,
    ~onOk: unit => unit=?,
    ~monthCellRender: ('a, monthLocale) => React.element=?,
  ) => React.element = "QuarterPicker"
}

module RangePicker = {
  type rangeInfo = {range: [#start | #end]}

  type rangeValue<'a> = Js.null<(Js.null<'a>, Js.null<'a>)>

  @react.component @module("antd") @scope("DatePicker")
  external make: (
    ~className: string=?,
    ~dropdownClassName: string=?,
    ~allowClear: bool=?,
    ~inputReadOnly: bool=?,
    ~id: string=?,
    ~dropdownAlign: alignType=?,
    ~popupStyle: ReactDOM.style=?,
    ~transitionName: string=?,
    ~tabIndex: int=?,
    ~autoFocus: bool=?,
    ~bordered: bool=?,
    ~className: string=?,
    ~disabledDate: 'a => bool,
    ~popupClassName: string=?,
    ~getPopupContainer: unit => Webapi.Dom.HtmlElement.t=?,
    ~inputReadOnly: bool=?,
    ~locale: locale=?,
    ~mode: panelMode=?,
    ~nextIcon: React.element=?,
    ~\"open": bool=?,
    ~defaultOpen: bool=?,
    ~panelRender: React.element => React.element=?,
    ~picker: [#date | #week | #month | #quarter | #year]=?,
    ~placeholder: (string, string)=?,
    ~placement: [#bottomLeft | #bottomRight | #topLeft | #topRight]=?,
    ~popupStyle: ReactDOM.style=?,
    ~prevIcon: React.element=?,
    ~presets: array<presets<'a>>=?,
    ~size: [#large | #small | #middle]=?,
    ~status: [#error | #warning]=?,
    ~style: ReactDOM.style=?,
    ~suffixIcon: React.element=?,
    ~superNextIcon: React.element=?,
    ~superPrevIcon: React.element=?,
    ~onOpenChange: bool => unit=?,
    ~onPanelChange: ('a, panelMode) => unit=?,
    ~onFocus: ReactEvent.Synthetic.t => unit=?,
    ~onBlur: ReactEvent.Synthetic.t => unit=?,
    ~onMouseDown: ReactEvent.Mouse.t => unit=?,
    ~onMouseUp: ReactEvent.Mouse.t => unit=?,
    ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
    ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
    ~onClick: ReactEvent.Mouse.t => unit=?,
    ~onContextMenu: ReactEvent.Mouse.t => unit=?,
    ~onKeyDown: (ReactEvent.Keyboard.t, unit => unit) => unit=?,
    ~role: string=?,
    ~name: string=?,
    ~autoComplete: string=?,
    ~direction: [#ltr | #rtl],
    ~allowEmpty: (bool, bool)=?,
    ~dateRender: ('a, 'a, rangeInfo) => React.element=?,
    ~defaultPickerValue: array<'a>=?,
    ~defaultValue: array<'a>=?,
    ~disabled: (bool, bool)=?,
    ~disabledTime: ('a, [#start | #end]) => disabledTimes=?,
    ~format: string=?,
    ~presets: array<presets<'a>>=?,
    ~renderExtraFooter: unit => React.element=?,
    ~separator: React.element=?,
    ~showTime: ShowTime.t=?,
    ~onCalendarChange: (rangeValue<'a>, (string, string), rangeInfo) => unit=?,
    ~onChange: (rangeValue<'a>, (string, string)) => unit=?,
  ) => React.element = "RangePicker"
}
