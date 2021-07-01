// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the response from the server that describes the remote access session
///             when AWS Device Farm stops the session.</p>
public struct StopRemoteAccessSessionOutputResponse: Equatable {
    /// <p>A container that represents the metadata from the service about the remote access session you are
    ///             stopping.</p>
    public let remoteAccessSession: RemoteAccessSession?

    public init (
        remoteAccessSession: RemoteAccessSession? = nil
    )
    {
        self.remoteAccessSession = remoteAccessSession
    }
}

extension StopRemoteAccessSessionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StopRemoteAccessSessionOutputResponse(remoteAccessSession: \(String(describing: remoteAccessSession)))"}
}