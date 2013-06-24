import pl.prosteumowy.Step
import pl.prosteumowy.Input
import pl.prosteumowy.TextInput
import pl.prosteumowy.CheckBox
import pl.prosteumowy.Text

class BootStrap {

    def init = { servletContext ->

        def step = new Step(id: 1, number: 1).save(flush: true, failOnError: true)
        new TextInput(id: 1, code: 'name', number: 1, value: "Jan", placeholder: "placeholder 1", step: step, type: 'input_text').save(flush: true, failOnError: true)
        new TextInput(id: 2, code: 'surname', number: 2, value: "Kowalski", placeholder: "placeholder 2", step: step, type: 'input_text').save(flush: true, failOnError: true)
        new TextInput(id: 3, code: 'street', number: 3, value: "Klonowa 11", placeholder: "placeholder 3", step: step, type: 'input_text').save(flush: true, failOnError: true)
        new TextInput(id: 4, code: 'city', number: 4, value: "Warszawa", placeholder: "placeholder 4", step: step, type: 'input_text').save(flush: true, failOnError: true)
        new TextInput(id: 5, code: 'zip', number: 5, value: "02-023", placeholder: "placeholder 5", step: step, type: 'input_text').save(flush: true, failOnError: true)


        step = new Step(id: 2, number: 2).save(flush: true, failOnError: true)
        new TextInput(id: 6, code: 'name', number: 1, value: "Adam", placeholder: "placeholder 1", step: step, type: 'input_text').save(flush: true, failOnError: true)
        new TextInput(id: 7, code: 'surname', number: 2, value: "Kłos", placeholder: "placeholder 2", step: step, type: 'input_text').save(flush: true, failOnError: true)

        new Text(id: 1, number: 3, value: "Choose below options:", step: step, code: "unused", placeholder: 'unused').save(flush: true, failOnError: true)
        new CheckBox(id: 1, code: "checkBox1", number: 4, text: 'Option 1', value: 'opt1', step: step).save(flush: true, failOnError: true)
        new CheckBox(id: 2, code: "checkBox1", number: 5, text: 'Option 2', value: 'opt2', step: step).save(flush: true, failOnError: true)
    }

    def destroy = {
    }
}
