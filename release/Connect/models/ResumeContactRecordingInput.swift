// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ResumeContactRecordingInput: Equatable {
    /// <p>The identifier of the contact.</p>
    public let contactId: String?
    /// <p>The identifier of the contact. This is the identifier of the contact associated with the
    ///    first interaction with the contact center.</p>
    public let initialContactId: String?
    /// <p>The identifier of the Amazon Connect instance.</p>
    public let instanceId: String?

    public init (
        contactId: String? = nil,
        initialContactId: String? = nil,
        instanceId: String? = nil
    )
    {
        self.contactId = contactId
        self.initialContactId = initialContactId
        self.instanceId = instanceId
    }
}

extension ResumeContactRecordingInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResumeContactRecordingInput(contactId: \(String(describing: contactId)), initialContactId: \(String(describing: initialContactId)), instanceId: \(String(describing: instanceId)))"}
}