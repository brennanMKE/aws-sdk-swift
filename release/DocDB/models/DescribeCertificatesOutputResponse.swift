// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeCertificatesOutputResponse: Equatable {
    /// <p>A list of certificates for this AWS account.</p>
    public let certificates: [Certificate]?
    /// <p>An optional pagination token provided if the number of records retrieved is greater than <code>MaxRecords</code>. If this parameter is specified, the marker specifies the next record in the list. Including the value of <code>Marker</code> in the next call to <code>DescribeCertificates</code> results in the next page of certificates.</p>
    public let marker: String?

    public init (
        certificates: [Certificate]? = nil,
        marker: String? = nil
    )
    {
        self.certificates = certificates
        self.marker = marker
    }
}

extension DescribeCertificatesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeCertificatesOutputResponse(certificates: \(String(describing: certificates)), marker: \(String(describing: marker)))"}
}