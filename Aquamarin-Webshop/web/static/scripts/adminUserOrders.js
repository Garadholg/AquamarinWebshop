async function getDetails(id) {
    var details = await $.ajax({
        type: "GET",
        url: "/Aquamarin-Webshop/order?id=" + id,
    });
    
    return details;
}

function parseAddress() {
    var address = $('#receiverLabel').html();
    
    var data = address.split(',');
    
    $('#receiverLabel').html(data[0]);
    $('#streetLabel').html(data[1]);
    $('#cityLabel').html(data[2]);
    $('#countryLabel').html(data[3]);
};

$(document).ready(function () {
    var dt = $('#ordersTable').DataTable({
        'columnDefs': [
            {
                'sortable': false,
                'searchable': false,
                'targets': [2, 3, 4]
            }
        ],
        'lengthChange': false,
        'info': false
    });
    
    $('#ordersTable tbody').on('click', 'td.tdDetailsBtn button', async function () {
        var tr = $(this).closest('tr');
        var row = dt.row( tr );
 
        if ( row.child.isShown() ) {
            row.child.hide();
            tr.removeClass('shown');
        }
        else {
            row.child(await getDetails(row.data()[0])).show();
            parseAddress();
            tr.addClass('shown');
        }
    });
});