// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetCertificatesInput: Equatable {
    /// <p>The name for the certificate for which to return information.</p>
    ///          <p>When omitted, the response includes all of your certificates in the AWS Region where the
    ///       request is made.</p>
    public let certificateName: String?
    /// <p>The status of the certificates for which to return information.</p>
    ///          <p>For example, specify <code>ISSUED</code> to return only certificates with an
    ///         <code>ISSUED</code> status.</p>
    ///          <p>When omitted, the response includes all of your certificates in the AWS Region where the
    ///       request is made, regardless of their current status.</p>
    public let certificateStatuses: [CertificateStatus]?
    /// <p>Indicates whether to include detailed information about the certificates in the
    ///       response.</p>
    ///          <p>When omitted, the response includes only the certificate names, Amazon Resource Names
    ///       (ARNs), domain names, and tags.</p>
    public let includeCertificateDetails: Bool

    public init (
        certificateName: String? = nil,
        certificateStatuses: [CertificateStatus]? = nil,
        includeCertificateDetails: Bool = false
    )
    {
        self.certificateName = certificateName
        self.certificateStatuses = certificateStatuses
        self.includeCertificateDetails = includeCertificateDetails
    }
}

extension GetCertificatesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetCertificatesInput(certificateName: \(String(describing: certificateName)), certificateStatuses: \(String(describing: certificateStatuses)), includeCertificateDetails: \(String(describing: includeCertificateDetails)))"}
}