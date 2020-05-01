//
//  AddViewController.swift
//  Bookstore
//
//  Created by Alejandro Hahn Gallegos on 13/04/20.
//  Copyright © 2020 Alejandro Hahn. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var titleText : UITextField!
    @IBOutlet weak var authorText : UITextField!
    @IBOutlet weak var pagesText : UITextField!
    @IBOutlet weak var descriptionText : UITextView!
    @IBOutlet weak var switchOutlet : UISwitch!
    
    var book : Book = Book()
    var delegate : BookStoreDelegate?
    var editBook = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pagesText.delegate = self

        if editBook {
            NSLog(book.title)
            self.title = "Edit book"
            titleText.text = book.title
            authorText.text = book.author
            pagesText.text = String(book.pages)
            descriptionText.text = book.description
            switchOutlet.setOn(book.readThisBook, animated: true)
        } else {
            self.title = "Add a book"
        }
    }
    
    @IBAction func saveBookAction(_ sender : UIBarButtonItem) {
        book.title = titleText.text!
        book.author = authorText.text!
        book.description = descriptionText.text!
        
        if let text = pagesText.text, let pages = Int(text) {
            book.pages = pages
        }
        
        if switchOutlet.isOn {
            book.readThisBook = true
        } else {
            book.readThisBook = false
        }
        
        if editBook {
            delegate?.editBook(self, editBook: book)
        } else {
            delegate?.newBook(self, newBook: book)
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == pagesText {
            NSLog(string)
            let num = Int(string)
            if num != nil {
                return true
            }
            return false
        }
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
