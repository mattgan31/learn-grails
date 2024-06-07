package learn.grails

class Book {

    String title
    Date releaseDate
    String author

    static constraints = {
        title(blank: false)
        releaseDate(nullable: false)
        author(blank: false)
    }

}
