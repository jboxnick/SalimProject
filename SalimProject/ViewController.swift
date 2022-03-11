//
//  ViewController.swift
//  SalimProject
//
//  Created by Julian on 11.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var topicSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var quotesTextView: UITextView!
    
    @IBOutlet weak var previousButton: UIButton!

    @IBOutlet weak var nextButton: UIButton!
    
    //MARK: - Properties
    
    var currentTopic: String = "ALL"
        
    var quotes: [Quote] = [Quote(category: .work, text: "The first quote"), Quote(category: .love, text: "The second quote")]
    
    
    //MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupViews()
        setupQuotes()
    }
    
    //MARK: - Setup Functions
    
    private func setupViews() {
        
    }
    
    private func setupQuotes() {
        
    }
    
    
    //MARK: - Helper Functions
    
    func loadNextQuote() {
                
        switch currentTopic {
            
        case "ALL":
            
            quotesTextView.text = currentTopic
        case "Love":
            
            quotesTextView.text = currentTopic

        case "Problem":
            
            quotesTextView.text = currentTopic

        case "Work":
            
            quotesTextView.text = currentTopic

        default: break
        }
    }
    
    //MARK: - Actions
    
    @IBAction func topicSegmentedControlChanged(_ sender: UISegmentedControl) {
                
        switch sender.selectedSegmentIndex {
            
        case 0:
            currentTopic = "ALL"
            
        case 1:
            currentTopic = "Love"
            
        case 2:
            currentTopic = "Problem"

        case 3:
            currentTopic = "Work"

        default: break
        }
        
        loadNextQuote()
    }
    
    @IBAction func previousButtonTapped(_ sender: UIButton) {
        
        print(#function)

    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
        print(#function)

    }
    


}

