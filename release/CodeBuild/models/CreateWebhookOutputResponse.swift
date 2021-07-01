// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateWebhookOutputResponse: Equatable {
    /// <p>Information about a webhook that connects repository events to a build project in
    ///       AWS CodeBuild.</p>
    public let webhook: Webhook?

    public init (
        webhook: Webhook? = nil
    )
    {
        self.webhook = webhook
    }
}

extension CreateWebhookOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateWebhookOutputResponse(webhook: \(String(describing: webhook)))"}
}