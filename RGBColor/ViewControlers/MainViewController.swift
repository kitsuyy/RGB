//
//  MainViewController.swift
//  RGBColor
//
//  Created by Kirill Lozovoi on 10/12/22.
//

import UIKit

protocol SetMainViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        
        settingVC.mainViewColor = view.backgroundColor
        settingVC.delegate = self
    }
}

// MARK: - SettingsViewControllerDelegate
extension MainViewController: SetMainViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
