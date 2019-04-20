# A custom datatable with additional buttons

datatable <- function(dt) {
    DT::datatable(
        dt, extensions = "Buttons", options = list(
            dom = "Blfrtip", buttons = list(
                "copy", "print", list(
                    extend = "collection", buttons = c("csv", "excel", "pdf"), text = "Download"
                )
            )
        )
    )
}
