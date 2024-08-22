
import Foundation
import SwiftUI

public enum NewModulePage: Hashable {
    case root
}

@available(iOS 16, *)
public class NewModuleCoordinator: NewModuleCoordinatorProtocol {

    // MARK: - Properties

    @Published public var path = NavigationPath()
    private let configuration: NewModuleConfigurationProtocol
    private let bundleMainApp: Bundle?

    // MARK: - Initializer

    public required init(path: NavigationPath = NavigationPath(), configuration: NewModuleConfigurationProtocol, bundleMainApp: Bundle? = nil) {
        self.path = path
        self.configuration = configuration
        self.bundleMainApp = bundleMainApp
    }
    
    // MARK: - Functions

    public func push(page: NewModulePage) {
        path.append(page)
    }
    
    public func popToRoot() {
        path.removeLast(path.count)
    }
    
    public func pop() {
        path.removeLast()
    }

    @ViewBuilder public func build(page: NewModulePage) -> some View {
        switch page {
        case .root:
            NewModuleView(
                viewModel: NewModuleViewModel(
                    configuration: configuration,
                    bundleMainApp: bundleMainApp ?? .main
                )
            )
        }
    }
}