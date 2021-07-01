// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeConnectorEntityInput: Equatable {
    /// <p>
    ///  The entity name for that connector.
    /// </p>
    public let connectorEntityName: String?
    /// <p>
    ///   The name of the connector profile. The name is unique for each <code>ConnectorProfile</code> in the AWS account.
    /// </p>
    public let connectorProfileName: String?
    /// <p>
    ///   The type of connector application, such as Salesforce, Amplitude, and so on.
    /// </p>
    public let connectorType: ConnectorType?

    public init (
        connectorEntityName: String? = nil,
        connectorProfileName: String? = nil,
        connectorType: ConnectorType? = nil
    )
    {
        self.connectorEntityName = connectorEntityName
        self.connectorProfileName = connectorProfileName
        self.connectorType = connectorType
    }
}

extension DescribeConnectorEntityInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeConnectorEntityInput(connectorEntityName: \(String(describing: connectorEntityName)), connectorProfileName: \(String(describing: connectorProfileName)), connectorType: \(String(describing: connectorType)))"}
}