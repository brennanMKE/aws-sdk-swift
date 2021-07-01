// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The output properties for a detection job.</p>
public struct OutputDataConfig: Equatable {
    /// <p>When you use the <code>OutputDataConfig</code> object with asynchronous operations, you
    ///       specify the Amazon S3 location where you want to write the output data. The URI must be in the
    ///       same region as the API endpoint that you are calling. The location is used as the prefix for
    ///       the actual location of the output.</p>
    public let s3Bucket: String?
    /// <p>The path to the output data files in the S3 bucket. Amazon Comprehend Medical creates an output directory
    ///       using the job ID so that the output from one job does not overwrite the output of
    ///       another.</p>
    public let s3Key: String?

    public init (
        s3Bucket: String? = nil,
        s3Key: String? = nil
    )
    {
        self.s3Bucket = s3Bucket
        self.s3Key = s3Key
    }
}

extension OutputDataConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OutputDataConfig(s3Bucket: \(String(describing: s3Bucket)), s3Key: \(String(describing: s3Key)))"}
}