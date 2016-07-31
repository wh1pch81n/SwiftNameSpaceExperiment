//
//  ViewController.swift
//  NamespaceCollision
//
//  Created by Derrick Ho on 7/10/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import UIKit
import Common

class ViewController: UIViewController {
	
	var commonCollision: Common.Collision!
	var localCollision: NamespaceCollision.Collision!

	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		print(Collision.name) // No ambiguity warning
		print(Common.Collision.name)
		print(NamespaceCollision.Collision.name)
		NamespaceCollision.ViewController.funky(self)()
		
		localCollision = Collision()

		commonCollision = Common.Collision(last: "hi")
		
		print(commonCollision, localCollision)
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	func funky() {
		print("Wacky")
	}
}

