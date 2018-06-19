import SwiftSideMenu

public protocol MenuPresenter {
    var view: UIView { get }

    func presentMenu(view: UIView, screenEdge: SideMenuScreenEdge)
    func dismissMenu(view: UIView, screenEdge: SideMenuScreenEdge)
}

public extension MenuPresenter where Self: UIView {
    func presentMenu(view: UIView, screenEdge: SideMenuScreenEdge) {
        SideMenuViewAnimation
            .animateTransition(baseView: self, menuView: view, screenEdge: screenEdge, direction: .present)
    }

    func dismissMenu(view: UIView, screenEdge: SideMenuScreenEdge) {
        SideMenuViewAnimation
            .animateTransition(baseView: self, menuView: view, screenEdge: screenEdge, direction: .dismiss)
    }
}

public extension MenuPresenter where Self: UIViewController {
    func presentMenu(view: UIView, screenEdge: SideMenuScreenEdge) {
        SideMenuViewAnimation
            .animateTransition(baseView: self.view, menuView: view, screenEdge: screenEdge, direction: .present)
    }

    func dismissMenu(view: UIView, screenEdge: SideMenuScreenEdge) {
        SideMenuViewAnimation
            .animateTransition(baseView: self.view, menuView: view, screenEdge: screenEdge, direction: .dismiss)
    }
}
