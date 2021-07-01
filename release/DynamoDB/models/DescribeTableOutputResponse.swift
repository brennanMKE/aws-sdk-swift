// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the output of a <code>DescribeTable</code> operation.</p>
public struct DescribeTableOutputResponse: Equatable {
    /// <p>The properties of the table.</p>
    public let table: TableDescription?

    public init (
        table: TableDescription? = nil
    )
    {
        self.table = table
    }
}

extension DescribeTableOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeTableOutputResponse(table: \(String(describing: table)))"}
}