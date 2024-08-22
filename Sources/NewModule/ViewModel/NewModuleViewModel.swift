
import Combine
import Foundation
import SwiftUI

public class NewModuleViewModel: NewModuleViewModelProtocol {

    // MARK: - Properties

    private let configuration: NewModuleConfigurationProtocol
    private let bundleMainApp: Bundle

    // MARK: - Initializer

    public required init(configuration: NewModuleConfigurationProtocol, bundleMainApp: Bundle) {
        self.configuration = configuration
        self.bundleMainApp = bundleMainApp
    }
}