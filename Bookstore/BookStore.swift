//
//  BookStore.swift
//  Bookstore
//
//  Created by Alumno on 3/3/20.
//  Copyright © 2020 Alejandro Hahn. All rights reserved.
//

import Foundation

class BookStore {
    
    var bookList : [Book] = []
    
    init() {
        var newBook = Book()
        newBook.title = "A Game of Thrones"
        newBook.author = "George R.R. MARTIN"
        newBook.description = """
        Winter is coming.Such is the stern motto of House Stark, the northernmost
        of the fiefdoms that owe allegiance to King Robert Baratheon in far-off King's Landing.
        There Eddard Stark of Winterfall rules in ...
        """
        newBook.pages = 100
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Clash of Kings"
        newBook.author = "George R.R. Martin"
        newBook.description = """
        A Song of Ice and Fire: Book Two
        """
        newBook.pages = 100
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Storm of Swords"
        newBook.author = "George R.R. Martin"
        newBook.description = """
        Of the five contenders for power, one is dead, another in disfavor, and still the wars rage as violently as ever, as alliances are made and broken. Joffrey, of House Lannister, sits on the Iron Throne, the uneasy ruler of the land of the Seven Kingdoms. His most bitter rival, Lord Stannis, stands
        """
        newBook.pages = 100
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Feast for Crows"
        newBook.author = "George R.R. Martin"
        newBook.description = """
        Few books have captivated the imagination and won the devotion and praise of readers and critics everywhere as has George R. R. Martin's monumental epic cycle of high fantasy that began with A Game of Thrones. Now, in A Feast for Crows, Martin delivers the long-awaited fourth book of his landmark series, as a kingdom torn asunder finds itself at last on the brink of peace . . . only to be launched on an even more terrifying course of destruction.
        """
        newBook.pages = 100
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Dance with Dragons"
        newBook.author = "George R.R. Martin"
        newBook.description = """
        Dubbed the American Tolkien by Time magazine, George R. R. Martin has earned international acclaim for his monumental cycle of epic fantasy. Now the number-one New York Times best-selling author delivers the fifth book in his spellbinding landmark series - as both familiar faces and surprising new forces vie for a foothold in a fragmented empire.
        """
        newBook.pages = 100
        bookList.append(newBook)
        
    }
    
    func sort() {
        bookList = bookList.sorted(by: { $0.title < $1.title })
    }
    
}
