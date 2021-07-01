// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ApplyPendingMaintenanceActionOutputResponse: Equatable {
    /// <p>Represents the output of <a>ApplyPendingMaintenanceAction</a>.
    ///         </p>
    public let resourcePendingMaintenanceActions: ResourcePendingMaintenanceActions?

    public init (
        resourcePendingMaintenanceActions: ResourcePendingMaintenanceActions? = nil
    )
    {
        self.resourcePendingMaintenanceActions = resourcePendingMaintenanceActions
    }
}

extension ApplyPendingMaintenanceActionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ApplyPendingMaintenanceActionOutputResponse(resourcePendingMaintenanceActions: \(String(describing: resourcePendingMaintenanceActions)))"}
}