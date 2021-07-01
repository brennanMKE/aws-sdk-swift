// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeDatabaseOutputResponse: Equatable {
    /// <p>The name of the Timestream table.</p>
    public let database: Database?

    public init (
        database: Database? = nil
    )
    {
        self.database = database
    }
}

extension DescribeDatabaseOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDatabaseOutputResponse(database: \(String(describing: database)))"}
}