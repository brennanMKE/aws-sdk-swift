// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteBotVersionInput: Equatable {
    /// <p>The identifier of the bot that contains the version.</p>
    public let botId: String?
    /// <p>The version of the bot to delete.</p>
    public let botVersion: String?
    /// <p>By default, the <code>DeleteBotVersion</code> operations throws a
    ///             <code>ResourceInUseException</code> exception if you try to delete a
    ///          bot version that has an alias pointing at it. Set the
    ///             <code>skipResourceInUseCheck</code> parameter to <code>true</code>
    ///          to skip this check and remove the version even if an alias points to
    ///          it.</p>
    public let skipResourceInUseCheck: Bool

    public init (
        botId: String? = nil,
        botVersion: String? = nil,
        skipResourceInUseCheck: Bool = false
    )
    {
        self.botId = botId
        self.botVersion = botVersion
        self.skipResourceInUseCheck = skipResourceInUseCheck
    }
}

extension DeleteBotVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteBotVersionInput(botId: \(String(describing: botId)), botVersion: \(String(describing: botVersion)), skipResourceInUseCheck: \(String(describing: skipResourceInUseCheck)))"}
}