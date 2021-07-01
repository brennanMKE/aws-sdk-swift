// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The result message containing a list of managed actions.</p>
public struct DescribeEnvironmentManagedActionsOutputResponse: Equatable {
    /// <p>A list of upcoming and in-progress managed actions.</p>
    public let managedActions: [ManagedAction]?

    public init (
        managedActions: [ManagedAction]? = nil
    )
    {
        self.managedActions = managedActions
    }
}

extension DescribeEnvironmentManagedActionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeEnvironmentManagedActionsOutputResponse(managedActions: \(String(describing: managedActions)))"}
}