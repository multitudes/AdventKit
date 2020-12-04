//
//  File.swift
//  
//
//  Created by Laurent B on 04/12/2020.
//

import Foundation

public struct RuntimeError: Error, CustomStringConvertible {
	public var description: String

	public init(_ description: String) {
		self.description = description
	}
}
