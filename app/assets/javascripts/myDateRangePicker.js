function myDateRangePicker(elem) {
    var start = moment().subtract(29, 'days');
    var end = moment();

    function cb(start, end) {
        $(elem).html(start.format('MMMM D, YYYY') 
          + ' - ' 
          + end.format('MMMM D, YYYY') 
          + "<i class=\"fa fa-caret-down\" aria-hidden=\"true\"></i>");
    }

    $(elem).daterangepicker({
        startDate: start,
        endDate: end,
        ranges: {
           'Today': [moment(), moment()],
           'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
           'Last 7 Days': [moment().subtract(6, 'days'), moment()],
           'Last 30 Days': [moment().subtract(29, 'days'), moment()],
        }
    }, cb);

    cb(start, end);   
}
