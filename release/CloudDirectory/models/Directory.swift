// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Directory structure that includes the directory name and directory ARN.</p>
public struct Directory: Equatable {
    /// <p>The date and time when the directory was created.</p>
    public let creationDateTime: Date?
    /// <p>The Amazon Resource Name (ARN) that is associated with the directory. For more
    ///       information, see <a>arns</a>.</p>
    public let directoryArn: String?
    /// <p>The name of the directory.</p>
    public let name: String?
    /// <p>The state of the directory. Can be either <code>Enabled</code>, <code>Disabled</code>, or <code>Deleted</code>.</p>
    public let state: DirectoryState?

    public init (
        creationDateTime: Date? = nil,
        directoryArn: String? = nil,
        name: String? = nil,
        state: DirectoryState? = nil
    )
    {
        self.creationDateTime = creationDateTime
        self.directoryArn = directoryArn
        self.name = name
        self.state = state
    }
}

extension Directory: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Directory(creationDateTime: \(String(describing: creationDateTime)), directoryArn: \(String(describing: directoryArn)), name: \(String(describing: name)), state: \(String(describing: state)))"}
}