// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeFileSystemPolicyOutputResponse: Equatable {
    /// <p>Specifies the EFS file system to which the <code>FileSystemPolicy</code> applies.</p>
    public let fileSystemId: String?
    /// <p>The JSON formatted <code>FileSystemPolicy</code> for the EFS file system.</p>
    public let policy: String?

    public init (
        fileSystemId: String? = nil,
        policy: String? = nil
    )
    {
        self.fileSystemId = fileSystemId
        self.policy = policy
    }
}

extension DescribeFileSystemPolicyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeFileSystemPolicyOutputResponse(fileSystemId: \(String(describing: fileSystemId)), policy: \(String(describing: policy)))"}
}