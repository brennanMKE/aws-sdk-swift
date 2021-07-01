// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the Amazon S3 Glacier response to your request.</p>
public struct UploadMultipartPartOutputResponse: Equatable {
    /// <p>The SHA256 tree hash that Amazon S3 Glacier computed for the uploaded part.</p>
    public let checksum: String?

    public init (
        checksum: String? = nil
    )
    {
        self.checksum = checksum
    }
}

extension UploadMultipartPartOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UploadMultipartPartOutputResponse(checksum: \(String(describing: checksum)))"}
}