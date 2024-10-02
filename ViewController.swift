//
//  ViewController 2.swift
//  Jazzee
//
//  Created by Brahmadath . on 28/09/24.
//


import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a SwiftUI view and embed it into this view controller
        let contentView = ContentView()
        
        // Use a UIHostingController to wrap the SwiftUI view
        let hostingController = UIHostingController(rootView: contentView)
        
        // Add the hosting controller as a child view controller
        addChild(hostingController)
        hostingController.view.frame = self.view.bounds
        self.view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
    }
    
}

