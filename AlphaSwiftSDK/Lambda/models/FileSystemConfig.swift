// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Details about the connection between a Lambda function and an Amazon EFS file system.</p>
public struct FileSystemConfig: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the Amazon EFS access point that provides access to the file system.</p>
    public let arn: String?
    /// <p>The path where the function can access the file system, starting with <code>/mnt/</code>.</p>
    public let localMountPath: String?

    public init (
        arn: String? = nil,
        localMountPath: String? = nil
    )
    {
        self.arn = arn
        self.localMountPath = localMountPath
    }
}
