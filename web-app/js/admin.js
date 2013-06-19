$(function () {
//        for (var i = 0; i < 10; i++) {
//            // $('#demoForm').add("input").addClass("input-block-level required");
//            var addDiv = $('#demoForm');
//
//            $('<p><input type="text" id="p_new" size="40" name="p_new_' + i + '" value="" placeholder="I am New" /><a href="#" id="remNew"><span id="IL_AD2" class="IL_AD">Remove</span></a> </p>').appendTo(addDiv);
//        }
    $('#next').click(function () {
        console.log('next..')
        test();
        return false; // do not submit the form
    });
    $('#back').click(function () {
        console.log('next..')
    });

    $.Mustache.load('templates/formParts.html').done(function () {
        //$('#umowa-txt').mustache('simple-hello', viewData, { method:'html' });
    });
})
;
function getInputTemplate() {
    $.Mustache.load('templates/formParts.html').done(function () {
        //$('#umowa-txt').mustache('simple-hello', viewData, { method:'html' });
    });
}

function addInputsData(inputTemplate, form) {
    $.getJSON('test/getInputs').done(function (data) {
        console.log(data.response);
        for (var i = 0; i < data.response.length; i++) {
            //var html = Mustache.to_html( '<input id="{{id}}" name="{{id}}" value="{{value}}" type="text" class="input-block-level required" placeholder="{{placeholder}}">',data.response[i]);
            var html =  $.Mustache.render(inputTemplate, data.response[i]);
            console.log(html);
            $('#demoForm').append(html);
        }
    });
}
function test(){
    addInputsData('input-text',$('#demoForm'));
}

function compileTemplate(stepId){
    $.getJSON('test/index/'+stepId, function(data) {
//            var items = [];
//
//            $.each(data, function(key, val) {
//                items.push('<li id="' + key + '">' + val + '</li>');
//            });
//
//            $('<ul/>', {
//                'class': 'my-new-list',
//                html: items.join('')
//            }).appendTo('body');
        console.log(data.response);

        var person = {
            firstName: "Christophe",
            lastName: "Coenraets",
            blogURL: "http://coenraets.org"
        };

        var html = Mustache.to_html(data.response, person);
        console.log(html);
    });


    $.getJSON( 'test/getStep/'+stepId).done(function( data ) {
        var person = {
            firstName: "Christophe",
            lastName: "Coenraets",
            blogURL: "http://coenraets.org"
        };

        var html = Mustache.to_html(data.response, person);
        console.log(html);
    });
}