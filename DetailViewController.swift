//
//  DetailViewController.swift
//  HackingWithSwift_Project01
//
//  Created by Robert Burns on 5/3/16.
//  Copyright © 2016 dollop Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var detailImageView: UIImageView!


    var detailItem: String? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let imageView = self.detailImageView {
                imageView.image = UIImage(named: detail)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
        override func viewWillAppear(animated: Bool) {
            
            super.viewWillAppear (animated)
            
            navigationController?.hidesBarsOnTap = true
        }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

