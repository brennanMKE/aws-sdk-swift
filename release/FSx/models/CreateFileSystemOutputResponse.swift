// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The response object returned after the file system is created.</p>
public struct CreateFileSystemOutputResponse: Equatable {
    /// <p>The configuration of the file system that was created.</p>
    public let fileSystem: FileSystem?

    public init (
        fileSystem: FileSystem? = nil
    )
    {
        self.fileSystem = fileSystem
    }
}

extension CreateFileSystemOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateFileSystemOutputResponse(fileSystem: \(String(describing: fileSystem)))"}
}