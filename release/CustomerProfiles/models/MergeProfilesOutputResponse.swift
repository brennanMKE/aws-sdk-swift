// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct MergeProfilesOutputResponse: Equatable {
    /// <p>A message that indicates the merge request is complete.</p>
    public let message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension MergeProfilesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MergeProfilesOutputResponse(message: \(String(describing: message)))"}
}