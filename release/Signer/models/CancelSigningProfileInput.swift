// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CancelSigningProfileInput: Equatable {
    /// <p>The name of the signing profile to be canceled.</p>
    public let profileName: String?

    public init (
        profileName: String? = nil
    )
    {
        self.profileName = profileName
    }
}

extension CancelSigningProfileInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CancelSigningProfileInput(profileName: \(String(describing: profileName)))"}
}