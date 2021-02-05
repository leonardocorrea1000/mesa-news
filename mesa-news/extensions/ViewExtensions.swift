//
//  ViewExtensions.swift
//  mesa-news
//
//  Created by Jose Correa on 04/02/21.
//

import Foundation
import UIKit

extension UIView {
    
    func hideActivityIndicator() {
        self.subviews.forEach { view in
            if view is UIActivityIndicatorView {
                DispatchQueue.main.async {
                    view.removeFromSuperview()
                }
            }
        }
    }
}
