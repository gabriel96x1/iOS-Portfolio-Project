//
//  GamesListViewController.swift
//  iOS Portfolio Project
//
//  Created by Gabriel Rodriguez on 10/07/23.
//

import UIKit
import SwiftUI

struct GamesListViewController: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> some UIViewController {
        let storyboard = UIStoryboard(name: "GamesListStoryboardUIKit", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "GamesListStoryboardUIKitId")
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }

}
