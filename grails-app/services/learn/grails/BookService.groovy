package learn.grails

import groovy.transform.CompileStatic
import grails.gorm.transactions.Transactional

@CompileStatic
@Transactional
class BookService {

    boolean saveBook(Map params) {
        def newBook = new Book(params)
        newBook.save(flush: true)
    }
}
