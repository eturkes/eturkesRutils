datatable <- function(dt) {
    DT::datatable(
        dt, extensions = 'Buttons', options = list(
            dom = 'Bfrtip', buttons = list(
                'copy', 'print', list(
                    extend = 'collection', buttons = c('csv', 'excel', 'pdf'), text = 'Download'
                )
            )
        )
    )
}
