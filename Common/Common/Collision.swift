//
//  Collision.swift
//  Common
//
//  Created by Derrick Ho on 7/10/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

import Foundation

public struct Collision {
	public static var name = "Common"
	public var last: String
	
	// By default, a struct generates an init for you but makes it internal.
	// Therefore you must make this public
	public init(last: String) {
		self.last = last
	}
}
