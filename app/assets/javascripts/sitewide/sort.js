$(document).on('turbolinks:load', function() {
    function sort(col, len) {
        console.log(col, "???")
        var tableRows = $('#table tbody tr').get();
        tableRows.sort(function(titleRow, authorRow) {
            var titles = getValue(titleRow);
            var authors = getValue(authorRow);
            if (titles < authors) {
                return (1 * col);
            };
            if (titles > authors) {
                return (-1 * col);
            };
            return 0;
        });

        function getValue(el) {
            var value = $(el).children('td').eq(len).text().toUpperCase();
            console.log(len)
            if ($.isNumeric(value)) {
                value = parseInt(value, 10);
            };

            return value;
        };

        $.each(tableRows, function(index, row) {
            $('#table').children('tbody').append(row);
        });

    }; //end of sort method

    var title = 1;
    var author = 1;

    $("#title").click(function(el) {
        title *= -1;
        var len = $(this).prevAll().length;
        console.log(len)
        sort(title, len);
    });

    $("#author").click(function(el) {
        author *= -1;
        var len = $(this).prevAll().length;
        sort(author, len);
    });

}); //end of document
