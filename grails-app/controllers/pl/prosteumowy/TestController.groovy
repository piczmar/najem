package pl.prosteumowy

import grails.converters.JSON

class TestController {

    def getInputs() {
        println "params: ${params}"

        def stepNo = params.stepNumber as Long
        def step = Step.findByNumber(stepNo)
        println step

        //TODO: if step is router step - handle branches

        def data = []
        if (step) {
//            data = Input.findAll {
//                step: step
//                order('number')
//            }
            data = Input.findAllByStep(step, [sort: "number", order: "asc"])
        } else {
            data = [end: true]
        }
        println data
        render text: ["response": data] as JSON, contentType: 'application/json', status: 200
    }

    def stepSubmit() {
        println "stepSubmit: " + params
        render text: ["response": "OK"] as JSON, contentType: 'application/json', status: 200
    }
}
