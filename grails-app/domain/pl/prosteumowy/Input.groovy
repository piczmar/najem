package pl.prosteumowy

class Input {

    String id
    String code
    String value
    String placeholder
    Long number
    Step step
    static constraints = {
        placeholder(nullable: true)
    }
}

