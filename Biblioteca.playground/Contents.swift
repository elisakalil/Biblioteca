import UIKit

//OBS: Insira o nome do tema que você deseja procurar!


//Seguindo a seguinte lista, você deve criar uma estrutura para armazenar os livros e depois criar a lógica para cumprir o requisito
struct Books {
    let name: String?
    let subject: String?
    let pages: Int?
}

var books: [Books] = []

books.append(Books(name: "Só Sei que foi assim", subject: "Drama", pages: 210))
books.append(Books(name: "O que é isso?", subject: "Tecnico", pages: 85))
books.append(Books(name: "Mamãe", subject: "Infantil", pages: 42))
books.append(Books(name: "Como resolvo esse bug", subject: "Tecnico", pages: 110))
books.append(Books(name: "Livro Legal", subject: "Infantil", pages: 35))
books.append(Books(name: "Xcode - e agora?", subject: "Drama", pages: 200))
books.append(Books(name: "Meu mouse - O terror", subject: "Drama", pages: 107))

//- Qual o livro com **menor** quantidade de páginas?
func lessPages(books: [Books]) -> String {
    var bookPage: Int = 1000
    var bookName = ""
    
    for book in books {
        guard let pages = book.pages,
              let name = book.name else { return bookName }
        if pages < bookPage {
            bookPage = pages
            bookName = name
        }
    }
    print("O livro com menor quantidade de páginas é o \(bookName)")
    return bookName
}


//Qual o livro com **maior** quantidade de páginas?
func morePages(books: [Books]) -> String {
    var bookPage: Int = 0
    var bookName = ""
    
    for book in books {
        guard let pages = book.pages,
              let name = book.name else { return bookName }
        if pages > bookPage {
            bookPage = pages
            bookName = name
        }
    }
    print("O livro com maior quantidade de páginas é o \(bookName)")
    return bookName
}

//- Qual o livro do tema “**Tecnico**” com maior quantidade de páginas?
func findBooks(books: [Books], of tema: String) -> [String] {
    var booksName: [String] = []
    
    for book in books {
        guard let subject = book.subject,
              let name = book.name else { return booksName }
        if subject == tema {
            booksName.append(name)
        }
    }
    print("Os livros de tema \(tema) são \(booksName)")
    return booksName
}

//- Somando as paginas dos temas, qual tema tem a **menor** quantidade de páginas?
func findSubjectWithLessPages(books: [Books]) -> String {
    var infantilPages: Int = 0
    var dramaPages: Int  = 0
    var tecnicalPages: Int = 0
    var subjectWithLessPages = ""
    
    for book in books {
        guard let subject = book.subject,
              let pages = book.pages else { return subjectWithLessPages }
        
        if subject == "Tecnico" {
            tecnicalPages = tecnicalPages + pages
        }
        
        if subject == "Drama" {
            dramaPages += pages
        }
        
        if subject == "Infantil" {
            infantilPages += pages
        }
    }
    
    if tecnicalPages < infantilPages {
        if tecnicalPages < dramaPages {
            subjectWithLessPages = "Tecnico"
        } else {
            subjectWithLessPages = "Drama"
        }
    } else {
        subjectWithLessPages = "Infantil"
    }
    
    print("O tema com menor número de páginas é \(subjectWithLessPages)")
    return subjectWithLessPages
}

//- Somando as paginas dos temas, qual tema tem a **maior** quantidade de páginas?
func findSubjectWithMorePages(books: [Books]) -> String {
    var infantilPages: Int = 0
    var dramaPages: Int  = 0
    var tecnicalPages: Int = 0
    var subjectWithMorePages = ""
    
    for book in books {
        guard let subject = book.subject,
              let pages = book.pages else { return subjectWithMorePages }
        
        if subject == "Tecnico" {
            tecnicalPages = tecnicalPages + pages
        }
        
        if subject == "Drama" {
            dramaPages += pages
        }
        
        if subject == "Infantil" {
            infantilPages += pages
        }
    }
    
    if tecnicalPages > infantilPages {
        if tecnicalPages > dramaPages {
            subjectWithMorePages = "Tecnico"
        } else {
            subjectWithMorePages = "Drama"
        }
    } else {
        subjectWithMorePages = "Infantil"
    }
    
    print("O tema com maior número de páginas é \(subjectWithMorePages)")
    return subjectWithMorePages
}


lessPages(books: books)
morePages(books: books)
findBooks(books: books, of: "Infantil")
findSubjectWithLessPages(books: books)
findSubjectWithMorePages(books: books)
