//
//  File.swift
//  
//
//  Created by Laurent B on 05/12/2020.
//

import Foundation

public struct BoardingPass {
	var row = 0
	var column = 0
	public var seatID = 0
	var decoding: [(String,String)] = [("F","0"),("B","1"),("R","1"),("L","0")]
	public init(binarySpace: String) {
		var binString = binarySpace
		let _ = decoding.map { binString.replace($0.0, with: $0.1)  }
		if let row = Int(binString.prefix(7), radix: 2),
		   let column = Int(binString.suffix(3), radix: 2) {
			self.row = row
			self.column = column
			self.seatID = self.row * 8 + self.column
		}
	}
}
