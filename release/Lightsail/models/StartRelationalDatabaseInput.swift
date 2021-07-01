// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartRelationalDatabaseInput: Equatable {
    /// <p>The name of your database to start.</p>
    public let relationalDatabaseName: String?

    public init (
        relationalDatabaseName: String? = nil
    )
    {
        self.relationalDatabaseName = relationalDatabaseName
    }
}

extension StartRelationalDatabaseInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartRelationalDatabaseInput(relationalDatabaseName: \(String(describing: relationalDatabaseName)))"}
}