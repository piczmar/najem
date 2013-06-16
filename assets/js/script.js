$(function () {

        $('input[title]').tooltip({placement:'right'});
        $('input[rel="tooltip"]').tooltip();


        $("#demoForm").formwizard({
                    formPluginEnabled:true,
                    validationEnabled:true,
                    focusFirstInput:true,
                    formOptions:{
                        success:function (data) {
                            $("#status").fadeTo(500, 1, function () {
                                $(this).html("Wlasnie stworzyłeś umowę. gratulujemy!").fadeTo(5000, 0);
                            })
                        },
                        beforeSubmit:function (data) {
                            console.log($.param(data));
                        },
                        dataType:'json',
                        resetForm:true
                    }
                }
        );

        var remoteAjax = {}; // empty options object
        var globData = {
            date: "16-06-2013",
            place: "___",
            seller_name: "__",
            seller_surname: "__",
            seller_street: "__",
            seller_city: "__",
            seller_zip: "__",
            seller_nr_dow:"__",
            buyer_os_name: "__",
            buyer_os_surname: "__",
            buyer_os_street: "__",
            buyer_os_city: "__",
            buyer_os_zip: "__"  ,
            buyer_os_nr_dow:"__",
            buyer_company: "__",
            buyer_company_street: "__",
            buyer_company_city: "__",
            buyer_company_zip: "__",
            buyer_name: "__",
            buyer_surname: "__",
            buyer_street: "__",
            buyer_city: "__",
            buyer_zip: "__"  ,
            buyer_nr_dow:"__",
            rent_size:"__",
            rent_street: "__",
            rent_city: "__",
            rent_zip: "__",
            dataWynajmu: "__",
            czasNajmuOd: "__",
            czasNajmuDo: "__",
            rent_month_cost: "__",
            drobneNaprawy: "__"

        };
        $("#demoForm .step").each(function(){ // for each step in the wizard, add an option to the remoteAjax object...
            remoteAjax[$(this).attr("id")] = {
                url : "json.html", // the url which stores the stuff in db for each step
                dataType : 'json',
                beforeSubmit: function(data){

                    console.log("data sent to the server: " + $.param(data) + " "+JSON.stringify(data));
                    for(var i=0; i<data.length; i++){
                        globData[data[i].name]=data[i].value;
                    }

                    if(globData.goto){
                        if(globData.goto ==="osoba"){
                            globData['osoba'] = true;
                            globData['firma'] = false;
                        }
                        if(globData.goto ==="firma"){
                            globData['osoba'] = false;
                            globData['firma'] = true;
                        }
                    }
                    console.log(globData);

                  $('.advantage').fadeOut(400, function(){
                        $('#wizard').removeClass('span3');
                        $('#wizard').addClass('span4');
                        $('#umowa-txt').mustache('umowa-template', globData, { method:'html' });
                    });

                },
                success : function(data){
                    if(data){ //data is either true or false (returned from store_in_database.html) simulating successful / failing store
                        console.log("    .... store done successfully");
                    }else{
                        alert("Server-side validation returned errors, nothing was stored.");
                    }

                    return data; //return true to make the wizard move to the next step, false will cause the wizard to stay on the CV step (change this in store_in_database.html)
                }
            };
        });

        $("#demoForm").formwizard("option", "remoteAjax", remoteAjax); // set the remoteAjax option for the wizard

        var viewData = {
            date:"16-06-2013",
            place:"łódź",
            street:"Kolejowa",
            street_no:"23",
            name:"Adam",
            surname:"Kowalski",
            zip_code: '23-232'
        };

        $.Mustache.load('templates/umowa.html').done(function () {
            //$('#umowa-txt').mustache('simple-hello', viewData, { method:'html' });
        });
    });