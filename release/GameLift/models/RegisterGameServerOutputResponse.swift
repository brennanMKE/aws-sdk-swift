// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RegisterGameServerOutputResponse: Equatable {
    /// <p>Object that describes the newly registered game server.</p>
    public let gameServer: GameServer?

    public init (
        gameServer: GameServer? = nil
    )
    {
        self.gameServer = gameServer
    }
}

extension RegisterGameServerOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegisterGameServerOutputResponse(gameServer: \(String(describing: gameServer)))"}
}