// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetHLSStreamingSessionURLOutputResponse: Equatable {
    /// <p>The URL (containing the session token) that a media player can use to retrieve the HLS
    ///             master playlist.</p>
    public let hLSStreamingSessionURL: String?

    public init (
        hLSStreamingSessionURL: String? = nil
    )
    {
        self.hLSStreamingSessionURL = hLSStreamingSessionURL
    }
}

extension GetHLSStreamingSessionURLOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetHLSStreamingSessionURLOutputResponse(hLSStreamingSessionURL: \(String(describing: hLSStreamingSessionURL)))"}
}