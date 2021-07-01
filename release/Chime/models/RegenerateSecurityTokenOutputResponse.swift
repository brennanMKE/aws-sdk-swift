// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RegenerateSecurityTokenOutputResponse: Equatable {
    /// <p>A resource that allows Enterprise account administrators to configure an interface to receive events from Amazon Chime.</p>
    public let bot: Bot?

    public init (
        bot: Bot? = nil
    )
    {
        self.bot = bot
    }
}

extension RegenerateSecurityTokenOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegenerateSecurityTokenOutputResponse(bot: \(String(describing: bot)))"}
}