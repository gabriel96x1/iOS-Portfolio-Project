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
        let controller = UIViewController()
        
        
        let label = UILabel()
        label.text = "UIKit Screeeen!"
        
        label.center.x = controller.view.center.x
        label.center.y = controller.view.center.y
                
        // Agregar la etiqueta a la vista del controlador
        controller.view.addSubview(label)
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }

}
