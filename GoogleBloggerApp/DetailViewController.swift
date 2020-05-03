//
//  DetailViewController.swift
//  GoogleBloggerApp
//
//  Created by Veldanov, Anton on 5/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {


  @IBOutlet weak var webView: WKWebView!
  
  
  
  func configureView() {
    // Update the user interface for the detail item.
    
    
    
    if let detail = detailItem {
      self.title = detail.value(forKey: "title") as! String

        if let blogWebView = webView {
          blogWebView.loadHTMLString((detail.value(forKey: "content") as? String)!, baseURL: nil)
            
        }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    configureView()
  }

  var detailItem: Event? {
    didSet {
        // Update the view.
        configureView()
    }
  }


}

