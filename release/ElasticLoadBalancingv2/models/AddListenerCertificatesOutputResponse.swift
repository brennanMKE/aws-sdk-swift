// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AddListenerCertificatesOutputResponse: Equatable {
    /// <p>Information about the certificates in the certificate list.</p>
    public let certificates: [Certificate]?

    public init (
        certificates: [Certificate]? = nil
    )
    {
        self.certificates = certificates
    }
}

extension AddListenerCertificatesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AddListenerCertificatesOutputResponse(certificates: \(String(describing: certificates)))"}
}