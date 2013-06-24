var maxSteps;


$(function () {

    $('#next').click(function () {
        console.log('next..')
        //TODO: save what was filled in for current step - store in session? database temp table? workspace table for logged in users?
        $("#demoForm").ajaxSubmit({url: 'test/stepSubmit', type: 'post'})


        var stepNo = $("#demoForm input[name=stepNumber]").val();
        stepNo++;
        // TODO: if stepNo == maxSteps then disable Next button ( make it Submit button = return true from here), do not increment, else:
        $("#demoForm input[name=stepNumber]").val(stepNo);


        printStep(stepNo,$('#demoFormInput'));

        return false; // do not submit the form
    });
    $('#back').click(function () {
        console.log('back..') ;
        var stepNo = $("#demoForm input[name=stepNumber]").val();

        console.log("back, step no: " + stepNo);
        stepNo--;

        // TODO: if stepNo == 0  (steps are indexed starting with 1) then disable Back button, do not decrement, else:
        $("#demoForm input[name=stepNumber]").val(stepNo);

        printStep(stepNo,$('#demoFormInput'));

        return false; // do not submit the form
    });

    $.Mustache.load('templates/formParts.html').done(function () {
        //$('#umowa-txt').mustache('simple-hello', viewData, { method:'html' });
    });

    init();
}) ;

function init(){
    //TODO: get max steps for doc
    var stepNo = 1;
    printStep(1,$('#demoFormInput'));

    // TODO: if stepNo == maxSteps then disable Next button
}
function printStep(stepNo, form) {
    $.post('test/getInputs', {stepNumber:stepNo}).done(function (data) {

        clearForm(form);
        var inputs = data.response;
        console.log(inputs);
        if (data.response.end) {
            form.append('<p>My friend, this is the end.</p>');
        } else {
            for (var i = 0; i < inputs.length; i++) {
                var input = inputs[i];
                var html = $.Mustache.render(input.type, input);
                form.append(html);
            }
        }
    });
}

function clearForm(form) {
    // remove old data
    var matches = form.find(':input').filter(function () {
        return this.name != 'stepNumber'
    });
    matches.remove();

    matches = form.find('label');
    matches.remove();

    matches = form.find('p');
    matches.remove();

}