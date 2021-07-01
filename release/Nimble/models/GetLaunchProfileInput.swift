// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetLaunchProfileInput: Equatable {
    /// <p>The launch profile ID.</p>
    public let launchProfileId: String?
    /// <p>The studio ID.</p>
    public let studioId: String?

    public init (
        launchProfileId: String? = nil,
        studioId: String? = nil
    )
    {
        self.launchProfileId = launchProfileId
        self.studioId = studioId
    }
}

extension GetLaunchProfileInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetLaunchProfileInput(launchProfileId: \(String(describing: launchProfileId)), studioId: \(String(describing: studioId)))"}
}