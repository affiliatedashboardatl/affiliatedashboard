function myDateRangePicker(elem, route, div) {
    var start = moment().subtract(29, 'days');
    var end = moment();

    function cb(start, end) {
        $(elem).html(start.format('MMMM D, YYYY') 
          + ' - ' 
          + end.format('MMMM D, YYYY') 
          + " <i class=\"fa fa-caret-down\" aria-hidden=\"true\"></i>");

        handleRequest(start, end);
    }

    function handleRequest(start, end) {
      var path = route + "?startDate=" + start.format('YYYY-MM-DD')  
                  + "&endDate=" + end.format('YYYY-MM-DD'); 

      $(div).html("<div style=\"text-align:center\"><i class=\"fa fa-spinner fa-spin fa-3x fa-fw\"></i></div>");
      $(div).load(path, function () {
      }); 
    }

    $(elem).daterangepicker({
        startDate: start,
        endDate: end,
        opens: 'left',
        ranges: {
           'Today': [moment(), moment()],
           'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
           'Last 7 Days': [moment().subtract(6, 'days'), moment()],
           'Last 30 Days': [moment().subtract(29, 'days'), moment()],
        }
    }, cb);

    cb(start, end);   
}
