//
//  ViewController.swift
//  RadialMenu
//
//  Created by Михаил Нечаев on 25/06/2019.
//  Copyright © 2019 Михаил Нечаев. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - Class Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        setupMenuButton()
        addAnimatedBorderView()
    }

}

// MARK: - Setup UI

private extension ViewController {
    
    func setupMenuButton() {
        let menu = RadialMenu(frame: CGRect(x: view.frame.width / 2, y: view.frame.height / 2, width: 50, height: 50))
        menu.title = "P"
        menu.layer.cornerRadius = menu.frame.width / 2
        menu.backgroundColor = .red
        menu.setItems(with: ["1", "2", "3"])
//        menu.setStartingPositions()
//        menu.setStartingPositions(.pi, arcLength: 2 * .pi)//+ .pi / 2)
        menu.setStartingPositions(.pi)
        view.addSubview(menu)
    }

    func addAnimatedBorderView() {
//        let view1 = AnimatedBorderView(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
//        view1.title = "L"
//        view1.backgroundColor = .green
//        view.addSubview(view1)
    }
}
