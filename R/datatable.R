# A custom datatable with additional features and formatting.

datatable <- function(dt) {DT::datatable(dt, extensions = "Buttons", options = list(
  dom = "Blfrtip", buttons = list("copy", "print", list(
    extend = "collection", buttons = c("csv", "excel", "pdf"), text = "Download"
  )),
  rowCallback = DT::JS(
    "function(row, data) {for (i = 1; i < data.length; i++) {if (data[i]>1000 | data[i]<1) {",
      "$('td:eq('+i+')', row).html(data[i].toExponential(2));",
    "}}}"
  )
))}
