package learn.grails

import learn.grails.Book
import grails.plugin.springsecurity.annotation.Secured
import grails.gorm.transactions.Transactional


class BookController {

    BookService bookService

    // @Secured(['ROLE_USER'])
    def index() {
        respond Book.list(params)
    }

    def create(){
        if (request.method == 'POST') {
            def newBook = new Book(params)
            if (bookService.saveBook(params)) {
                redirect(action: "show", id: newBook.id)
            } else {
                render(view: "form", model: [book: newBook])
            }
        } else {
            render(view: "form", model: [book: new Book()])
        }
    }

    def show(Long id) {
        def book = Book.get(id)
        if (!book) {
            flash.message = "Book not found"
            redirect(action: "index")
            return
        }
        respond book
    }

    @Transactional
    def update(Long id){
        def book = Book.get(id)
        if (!book) {
            flash.message = "Book not found"
            redirect(action: "index")
            return
        }

        if (request.method == 'POST') {
            book.properties = params
            if (book.save(flush: true)) {
                redirect(action: "show", id: book.id)
            } else {
                render(view: "update", model: [book: book])
                return
            }
        } else {
            render(view: "update", model: [book: book])
        }
    }

    @Transactional
    def destroy(Long id){
        def book = Book.get(id)
        if (!book) {
            flash.message = "Book not found"
            redirect(action: "index")
            return
        }

        try {
            book.delete(flush: true)
            flash.message = "Book deleted successfully"
            redirect(action: "index")
        } catch (Exception e) {
            flash.message = "Error deleting book"
            log.error("Failed to delete book with id: ${id}", e)
            redirect(action: "show", id: id)
        }
    }

}
