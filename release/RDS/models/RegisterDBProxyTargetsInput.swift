// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RegisterDBProxyTargetsInput: Equatable {
    /// <p>One or more DB cluster identifiers.</p>
    public let dBClusterIdentifiers: [String]?
    /// <p>One or more DB instance identifiers.</p>
    public let dBInstanceIdentifiers: [String]?
    /// <p>The identifier of the <code>DBProxy</code> that is associated with the <code>DBProxyTargetGroup</code>.</p>
    public let dBProxyName: String?
    /// <p>The identifier of the <code>DBProxyTargetGroup</code>.</p>
    public let targetGroupName: String?

    public init (
        dBClusterIdentifiers: [String]? = nil,
        dBInstanceIdentifiers: [String]? = nil,
        dBProxyName: String? = nil,
        targetGroupName: String? = nil
    )
    {
        self.dBClusterIdentifiers = dBClusterIdentifiers
        self.dBInstanceIdentifiers = dBInstanceIdentifiers
        self.dBProxyName = dBProxyName
        self.targetGroupName = targetGroupName
    }
}

extension RegisterDBProxyTargetsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegisterDBProxyTargetsInput(dBClusterIdentifiers: \(String(describing: dBClusterIdentifiers)), dBInstanceIdentifiers: \(String(describing: dBInstanceIdentifiers)), dBProxyName: \(String(describing: dBProxyName)), targetGroupName: \(String(describing: targetGroupName)))"}
}