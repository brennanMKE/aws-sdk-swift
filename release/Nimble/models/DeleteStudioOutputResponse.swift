// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteStudioOutputResponse: Equatable {
    /// <p>Information about a studio.</p>
    public let studio: Studio?

    public init (
        studio: Studio? = nil
    )
    {
        self.studio = studio
    }
}

extension DeleteStudioOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteStudioOutputResponse(studio: \(String(describing: studio)))"}
}