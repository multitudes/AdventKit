//
//  String+Ext.swift
//  
//
//  Created by Laurent B on 02/12/2020.
//

import Foundation


public extension String.StringInterpolation {
	public mutating func appendInterpolation(_ number: Double, specifier: String){
		appendLiteral(String(format:"%.3f", number))
	}
}


public extension String {

	public func getCapturedGroupsFrom(regexPattern: String)-> [String]? {
		let text = self
		let regex = try? NSRegularExpression(pattern: regexPattern)

		let match = regex?.firstMatch(in: text, range: NSRange(text.startIndex..., in: text))

		if let match = match {
			return (0..<match.numberOfRanges).compactMap {
				$0 > 0 ? String(text[Range(match.range(at: $0), in: text)!]) : nil
			}
		}
		return nil
	}


	public subscript(idx: Int) -> Character {
		Character(extendedGraphemeClusterLiteral: self[index(startIndex, offsetBy: idx)])
	}
	
	public subscript(idx: Int) -> String {
		String(self[index(startIndex, offsetBy: idx)])
	}
}
