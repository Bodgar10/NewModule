
import Foundation
import SwiftUI

public protocol NewModuleViewModelProtocol: ObservableObject {
    
    // MARK: - Initializer
    
    init(configuration: NewModuleConfigurationProtocol, bundleMainApp: Bundle)
}

public protocol NewModuleConfigurationProtocol: AnyObject {
    
    // MARK: - Properties
    
    var config: [String: AnyObject] { get set }
}

public protocol NewModuleCoordinatorProtocol: ObservableObject {

    // MARK: - Properties

    var path: NavigationPath { get set }

    // MARK: - Functions

    init(path: NavigationPath, configuration: NewModuleConfigurationProtocol, bundleMainApp: Bundle?)
    func push(page: NewModulePage)
    func popToRoot()
    func pop()
    
    associatedtype view: View
    func build(page: NewModulePage) -> view
}