import UIKit

extension UIStoryboard {
    func instantiateViewController<T: UIViewController>(ofType _: T.Type) -> T {
        //swiftlint:disable:next force_cast
        return instantiateViewController(withIdentifier: T.className) as! T
    }
}
