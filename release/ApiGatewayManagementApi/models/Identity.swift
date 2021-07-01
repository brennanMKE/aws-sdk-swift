// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct Identity: Equatable {
    /// <p>The source IP address of the TCP connection making the request to API Gateway.</p>
    public let sourceIp: String?
    /// <p>The User Agent of the API caller.</p>
    public let userAgent: String?

    public init (
        sourceIp: String? = nil,
        userAgent: String? = nil
    )
    {
        self.sourceIp = sourceIp
        self.userAgent = userAgent
    }
}

extension Identity: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Identity(sourceIp: \(String(describing: sourceIp)), userAgent: \(String(describing: userAgent)))"}
}