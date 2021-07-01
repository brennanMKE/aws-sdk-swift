// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The <code>ReadJobRequest</code> structure.</p>
public struct ReadJobInput: Equatable {
    /// <p>The identifier of the job for which you want to get detailed information.</p>
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension ReadJobInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReadJobInput(id: \(String(describing: id)))"}
}