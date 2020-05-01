//
//  DetailViewController.swift
//  Bookstore
//
//  Created by Alumno on 3/3/20.
//  Copyright © 2020 Alejandro Hahn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

   // MARK: Properties
    
    @IBOutlet weak var authorLabel : UILabel!
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var pagesLagel : UILabel!
    @IBOutlet weak var descriptionTextView : UITextView!
    @IBOutlet weak var switchOutlet : UISwitch!
    
    var delegate : BookStoreDelegate? = nil
    var myBook = Book()
    
    func configureView() {
        switchOutlet.isEnabled = false;
        if let myBook = detailItem {
            self.myBook = myBook
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            descriptionTextView.text = myBook.description
            pagesLagel.text = String(myBook.pages)
            switchOutlet.setOn(myBook.readThisBook, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    var detailItem : Book? {
        didSet {
            
        }
    }
    
    @IBAction func deleteBookAction(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Warning", message: "Delete this book?", preferredStyle: .alert)
        let noAction = UIAlertAction(title: "No", style: .cancel) { (action) in
            print("Cancel");
        }
        alertController.addAction(noAction)
        let yesAction = UIAlertAction(title: "Yes", style: .destructive) { (action) in
            self.delegate?.deleteBook(self)
        }
        alertController.addAction(yesAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func editBookAction(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "editDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editDetail" {
            if let vc = segue.destination as? AddViewController {
                vc.delegate = delegate
                vc.editBook = true
                vc.book = myBook
            }
        }
    }

}

