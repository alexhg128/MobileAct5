//
//  BookStoreDelegate.swift
//  Bookstore
//
//  Created by Alejandro Hahn Gallegos on 13/04/20.
//  Copyright © 2020 Alejandro Hahn. All rights reserved.
//

import Foundation

protocol BookStoreDelegate {
    func newBook(_ controller: AnyObject, newBook: Book)
    func editBook(_ controller: AnyObject, editBook : Book)
    func deleteBook(_ controller: AnyObject)
}
