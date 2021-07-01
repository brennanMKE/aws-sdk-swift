// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Access Control List files for the documents in a data source. For
///             the format of the file, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/s3-acl.html">Access control for S3 data
///                 sources</a>.</p>
public struct AccessControlListConfiguration: Equatable {
    /// <p>Path to the AWS S3 bucket that contains the ACL files.</p>
    public let keyPath: String?

    public init (
        keyPath: String? = nil
    )
    {
        self.keyPath = keyPath
    }
}

extension AccessControlListConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AccessControlListConfiguration(keyPath: \(String(describing: keyPath)))"}
}