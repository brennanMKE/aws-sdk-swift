// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetDevicesInPlacementInput: Equatable {
    /// <p>The name of the placement to get the devices from.</p>
    public let placementName: String?
    /// <p>The name of the project containing the placement.</p>
    public let projectName: String?

    public init (
        placementName: String? = nil,
        projectName: String? = nil
    )
    {
        self.placementName = placementName
        self.projectName = projectName
    }
}

extension GetDevicesInPlacementInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetDevicesInPlacementInput(placementName: \(String(describing: placementName)), projectName: \(String(describing: projectName)))"}
}