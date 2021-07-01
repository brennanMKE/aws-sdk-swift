// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents information about an artifact to be worked on, such as a test or build
///             artifact.</p>
public struct InputArtifact: Equatable {
    /// <p>The name of the artifact to be worked on (for example, "My App").</p>
    ///         <p>The input artifact of an action must exactly match the output artifact declared in
    ///             a preceding action, but the input artifact does not have to be the next action in strict
    ///             sequence from the action that provided the output artifact. Actions in parallel can
    ///             declare different output artifacts, which are in turn consumed by different following
    ///             actions.</p>
    public let name: String?

    public init (
        name: String? = nil
    )
    {
        self.name = name
    }
}

extension InputArtifact: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InputArtifact(name: \(String(describing: name)))"}
}