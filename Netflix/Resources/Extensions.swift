//
//  Extensions.swift
//  Netflix
//
//  Created by Abdulmajit Kubatbekov on 27.11.22.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(0).uppercased() + self.lowercased().dropLast()
    }
}
