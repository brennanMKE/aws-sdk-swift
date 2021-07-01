// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the destination for an export image task.</p>
public struct ExportTaskS3Location: Equatable {
    /// <p>The destination Amazon S3 bucket.</p>
    public let s3Bucket: String?
    /// <p>The prefix (logical hierarchy) in the bucket.</p>
    public let s3Prefix: String?

    public init (
        s3Bucket: String? = nil,
        s3Prefix: String? = nil
    )
    {
        self.s3Bucket = s3Bucket
        self.s3Prefix = s3Prefix
    }
}

extension ExportTaskS3Location: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ExportTaskS3Location(s3Bucket: \(String(describing: s3Bucket)), s3Prefix: \(String(describing: s3Prefix)))"}
}