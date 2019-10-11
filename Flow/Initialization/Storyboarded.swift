//    The MIT License (MIT)
//
//    Copyright (c) 2019 Inácio Ferrarini
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.
//

import UIKit

///
/// Markup protocol used to designate that the object intentionally is capable to handle properly its own instantiation.
///
/// Note that this object differs from the regular `Instantiable` since it aims to mark Storyboard-based `View`.
///
public protocol Storyboarded: Instantiable {

    ///
    /// Instantiates the `ViewController` from the Storyboard with the given name,
    /// located in the same bundle as the class to be instantiated.
    ///
    /// - Parameter storyboard: The storyboard to be instantiated.
    /// - Returns: `Self`?
    ///
    static func instantiate(from storyboard: String) -> Self?

}

public extension Storyboarded where Self: UIViewController {

    ///
    /// Instantiates the `ViewController` from a Storyboard with the given name,
    /// located in the same bundle as the class to be instantiated.
    ///
    /// - Returns: `Self`?
    ///
    static func instantiate() -> Self? {
        return self.instantiate(from: String(describing: self))
    }

    ///
    /// Instantiates the `ViewController` from a Storyboard with the same name,
    /// located in the same bundle as the class to be instantiated.
    ///
    /// - Returns: `Self`?
    ///
    static func instantiate(from storyboard: String) -> Self? {
        let className = String(describing: self)
        let bundle = Bundle(for: Self.self)
        let storyboard = UIStoryboard(name: storyboard, bundle: bundle)
        return storyboard.instantiateViewController(withIdentifier: className) as? Self
    }

}
