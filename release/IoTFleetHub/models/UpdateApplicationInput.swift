// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateApplicationInput: Equatable {
    /// <p>An optional description of the web application.</p>
    public let applicationDescription: String?
    /// <p>The unique Id of the web application.</p>
    public let applicationId: String?
    /// <p>The name of the web application.</p>
    public let applicationName: String?
    /// <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request.
    ///       Don't reuse this client token if a new idempotent request is required.</p>
    public var clientToken: String?

    public init (
        applicationDescription: String? = nil,
        applicationId: String? = nil,
        applicationName: String? = nil,
        clientToken: String? = nil
    )
    {
        self.applicationDescription = applicationDescription
        self.applicationId = applicationId
        self.applicationName = applicationName
        self.clientToken = clientToken
    }
}

extension UpdateApplicationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateApplicationInput(applicationDescription: \(String(describing: applicationDescription)), applicationId: \(String(describing: applicationId)), applicationName: \(String(describing: applicationName)), clientToken: \(String(describing: clientToken)))"}
}