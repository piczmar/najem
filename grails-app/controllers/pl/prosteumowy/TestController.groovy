package pl.prosteumowy

import grails.converters.JSON

class TestController {

    def index() {
        def status = 200
        def templateText = """
    <h3>Umowa Najmu</h3>
    <h1>{{firstName}} {{lastName}}</h1>Blog: {{blogURL}}
        """
        render text: ["response": templateText] as JSON, contentType: 'application/json', status: status
    }

    def getStep() {
        def status = 200


        def templateText = null

        if (params.id && params.id == 1) {
            templateText =
                """
                <h3>Umowa Najmu</h3>
                <h1>{{firstName}} {{lastName}}</h1>Blog: {{blogURL}}
                """
        }else{
            templateText =
                """
                <h3>Cos zupelnie innego</h3>
                <h1>{{blogURL}}
                """
        }
        render text: ["response": templateText] as JSON, contentType: 'application/json', status: status
    }

    def getInputs(){
        def data = []
        5.times {i->
            data.add([id:"id${i}",value: "id${i}", placeholder: "Sample placeholder ${i}" ])
        }
        render text: ["response": data] as JSON, contentType: 'application/json', status: 200
    }
}
