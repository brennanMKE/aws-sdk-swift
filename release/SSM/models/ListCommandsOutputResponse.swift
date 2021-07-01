// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListCommandsOutputResponse: Equatable {
    /// <p>(Optional) The list of commands requested by the user. </p>
    public let commands: [Command]?
    /// <p>(Optional) The token for the next set of items to return. (You received this token from a
    ///    previous call.)</p>
    public let nextToken: String?

    public init (
        commands: [Command]? = nil,
        nextToken: String? = nil
    )
    {
        self.commands = commands
        self.nextToken = nextToken
    }
}

extension ListCommandsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListCommandsOutputResponse(commands: \(String(describing: commands)), nextToken: \(String(describing: nextToken)))"}
}