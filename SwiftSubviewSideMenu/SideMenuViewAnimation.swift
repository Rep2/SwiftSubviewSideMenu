import UIKit
import SwiftSideMenu

public class SideMenuViewAnimation {
    public static func animateTransition(
        baseView: UIView,
        menuView: UIView,
        screenEdge: SideMenuScreenEdge,
        direction: TransitionDirection,
        transitionDuration: Double = 0.3) {
        let homeView = direction == .present ? baseView : menuView
        let menuView = direction == .present ? menuView : baseView

        homeView.addSubview(menuView)
        screenEdge
            .setPositionBeforeAnimation(fromView: homeView, toView: menuView, direction: direction)

        UIView.animate(
            withDuration: transitionDuration,
            animations: {
                screenEdge
                    .setPositionAfterAnimation(
                        fromView: homeView,
                        toView: menuView,
                        direction: direction
                )
        })
    }
}
