// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateTrustInput: Equatable {
    /// <p>Updates selective authentication for the trust.</p>
    public let selectiveAuth: SelectiveAuth?
    /// <p>Identifier of the trust relationship.</p>
    public let trustId: String?

    public init (
        selectiveAuth: SelectiveAuth? = nil,
        trustId: String? = nil
    )
    {
        self.selectiveAuth = selectiveAuth
        self.trustId = trustId
    }
}

extension UpdateTrustInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateTrustInput(selectiveAuth: \(String(describing: selectiveAuth)), trustId: \(String(describing: trustId)))"}
}