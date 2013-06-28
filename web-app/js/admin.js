$(function(){
    var tableCounter = 1;

    $('#addElement').on('click', function(){
        var table = $('table.elements');
        var row = $('<tr/>');
        var cell = $('<td/>');

        var stepNumber = cell.clone().html('<input name="stepNumber" placeholder="Numer kroku" />');
        var elementOrder = cell.clone().html('<input name="elementOrder" placeholder="Kolejnosc elementu" />');
        var elementCode = cell.clone().html('<input name="elementCode" placeholder="Kod elementu" />');
        var elementType = cell.clone().html('<input name="elementType" placeholder="Typ elementu" />');
        var text = cell.clone().html('<input name="text" placeholder="Tekst"/>');
        var remove = cell.clone().append($('<button/>', {
            name: tableCounter++
        }));

        row.append(stepNumber).append(elementOrder).append(elementCode).append(elementType).append(text).append(remove);
        table.append(row);
    });

    $('table.elements').on('click', 'button', function(e){
        e.preventDefault();

        //$('table.elements tr')[$(this).prop('name')].remove();
    });
});
