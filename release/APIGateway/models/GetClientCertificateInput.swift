// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A request to get information about the current <a>ClientCertificate</a> resource.</p>
public struct GetClientCertificateInput: Equatable {
    /// <p>[Required] The identifier of the <a>ClientCertificate</a> resource to be described.</p>
    public let clientCertificateId: String?

    public init (
        clientCertificateId: String? = nil
    )
    {
        self.clientCertificateId = clientCertificateId
    }
}

extension GetClientCertificateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetClientCertificateInput(clientCertificateId: \(String(describing: clientCertificateId)))"}
}