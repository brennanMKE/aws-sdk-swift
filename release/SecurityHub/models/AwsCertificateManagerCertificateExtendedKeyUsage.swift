// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about an extended key usage X.509 v3 extension object.</p>
public struct AwsCertificateManagerCertificateExtendedKeyUsage: Equatable {
    /// <p>The name of an extension value. Indicates the purpose for which the certificate public
    ///          key can be used.</p>
    public let name: String?
    /// <p>An object identifier (OID) for the extension value.</p>
    ///          <p>The format is numbers separated by periods.</p>
    public let oId: String?

    public init (
        name: String? = nil,
        oId: String? = nil
    )
    {
        self.name = name
        self.oId = oId
    }
}

extension AwsCertificateManagerCertificateExtendedKeyUsage: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsCertificateManagerCertificateExtendedKeyUsage(name: \(String(describing: name)), oId: \(String(describing: oId)))"}
}