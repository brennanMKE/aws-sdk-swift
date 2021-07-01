// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteConferenceProviderInput: Equatable {
    /// <p>The ARN of the conference provider.</p>
    public let conferenceProviderArn: String?

    public init (
        conferenceProviderArn: String? = nil
    )
    {
        self.conferenceProviderArn = conferenceProviderArn
    }
}

extension DeleteConferenceProviderInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteConferenceProviderInput(conferenceProviderArn: \(String(describing: conferenceProviderArn)))"}
}