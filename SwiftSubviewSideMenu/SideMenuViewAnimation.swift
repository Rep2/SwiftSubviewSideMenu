import UIKit
import SwiftSideMenu

public class SideMenuViewAnimation {
    public static func animateTransition(
        baseView: UIView,
        menuView: UIView,
        screenEdge: SideMenuScreenEdge,
        direction: TransitionDirection,
        transitionDuration: Double = 0.3) {
        screenEdge
            .setPositionBeforeAnimation(fromView: baseView, toView: menuView, direction: direction)

        UIView.animate(
            withDuration: transitionDuration,
            animations: {
                screenEdge
                    .setPositionAfterAnimation(
                        fromView: baseView,
                        toView: menuView,
                        direction: direction
                )
        })
    }
}
