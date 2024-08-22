
import Foundation
import SwiftUI

public struct NewModuleView<VM>: View where VM: NewModuleViewModelProtocol {

    // MARK: - Properties

    @ObservedObject var viewModel: VM

    // MARK: - Initialize

    public init( viewModel: VM) {
        self.viewModel = viewModel    
    }

    public var body: some View {
        Text("NewModule View")
    }
}

struct NewModuleView_Previews: PreviewProvider {
    static var previews: some View {
        NewModuleView(viewModel: NewModuleViewModel(configuration: configMock(), bundleMainApp: .main))
    }
}

class configMock: NewModuleConfigurationProtocol {
    var config: [String : AnyObject] = ["Any" : "Any" as AnyObject]
}