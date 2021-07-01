// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateNetworkInsightsPathInput: Equatable {
    /// <p>The protocol.</p>
    public let `protocol`: `Protocol`?
    /// <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information,
    ///    see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How to Ensure Idempotency</a>.</p>
    public var clientToken: String?
    /// <p>The AWS resource that is the destination of the path.</p>
    public let destination: String?
    /// <p>The IP address of the AWS resource that is the destination of the path.</p>
    public let destinationIp: String?
    /// <p>The destination port.</p>
    public let destinationPort: Int
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The AWS resource that is the source of the path.</p>
    public let source: String?
    /// <p>The IP address of the AWS resource that is the source of the path.</p>
    public let sourceIp: String?
    /// <p>The tags to add to the path.</p>
    public let tagSpecifications: [TagSpecification]?

    public init (
        `protocol`: `Protocol`? = nil,
        clientToken: String? = nil,
        destination: String? = nil,
        destinationIp: String? = nil,
        destinationPort: Int = 0,
        dryRun: Bool = false,
        source: String? = nil,
        sourceIp: String? = nil,
        tagSpecifications: [TagSpecification]? = nil
    )
    {
        self.`protocol` = `protocol`
        self.clientToken = clientToken
        self.destination = destination
        self.destinationIp = destinationIp
        self.destinationPort = destinationPort
        self.dryRun = dryRun
        self.source = source
        self.sourceIp = sourceIp
        self.tagSpecifications = tagSpecifications
    }
}

extension CreateNetworkInsightsPathInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateNetworkInsightsPathInput(clientToken: \(String(describing: clientToken)), destination: \(String(describing: destination)), destinationIp: \(String(describing: destinationIp)), destinationPort: \(String(describing: destinationPort)), dryRun: \(String(describing: dryRun)), protocol: \(String(describing: `protocol`)), source: \(String(describing: source)), sourceIp: \(String(describing: sourceIp)), tagSpecifications: \(String(describing: tagSpecifications)))"}
}