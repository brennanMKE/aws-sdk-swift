// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AcceptPageInput: Equatable {
    /// <p>The accept code is a 6-digit code used to acknowledge the page.</p>
    public let acceptCode: String?
    /// <p>The type indicates if the page was <code>DELIVERED</code> or <code>READ</code>.</p>
    public let acceptType: AcceptType?
    /// <p>The ARN of the contact channel.</p>
    public let contactChannelId: String?
    /// <p>Information provided by the user when the user acknowledges the page.</p>
    public let note: String?
    /// <p>The Amazon Resource Name (ARN) of the engagement to a contact channel.</p>
    public let pageId: String?

    public init (
        acceptCode: String? = nil,
        acceptType: AcceptType? = nil,
        contactChannelId: String? = nil,
        note: String? = nil,
        pageId: String? = nil
    )
    {
        self.acceptCode = acceptCode
        self.acceptType = acceptType
        self.contactChannelId = contactChannelId
        self.note = note
        self.pageId = pageId
    }
}

extension AcceptPageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AcceptPageInput(acceptCode: \(String(describing: acceptCode)), acceptType: \(String(describing: acceptType)), contactChannelId: \(String(describing: contactChannelId)), note: \(String(describing: note)), pageId: \(String(describing: pageId)))"}
}