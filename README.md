# SwiftSubviewSideMenu
Side menu implemented using UIViews and custom animations. Multiple menus can be presented at the same time.

## Description

Most side menu implementations rely on ```UIViewController``` and ```SideMenuAnimatedTransitioning```. As only one ```UIViewController``` can be presented at once, this doesn't allow for multiple menus to be presented at the same time.

Using UIViews it is possible to present multiple menus.

## Usage

Implement ```MenuPresenter```. If using ```UIViewController``` or ```UIView``` it is enough to use default implementations.

```Swift
extension ViewController: MenuPresenter {}
```

Present and dismiss views.

```Swift
viewCotnroller.dismissMenu(view: menuView, screenEdge: screenEdge)

viewCotnroller.presentMenu(view: menuView, screenEdge: screenEdge)
```

Screen edges:

```Swift
public enum SideMenuScreenEdge {
    case left
    case right
    case top
    case bottom
    case leftBottom
    case leftTop
    case rightBottom
    case rightTop
}
```
