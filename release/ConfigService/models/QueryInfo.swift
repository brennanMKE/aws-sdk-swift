// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Details about the query.</p>
public struct QueryInfo: Equatable {
    /// <p>Returns a <code>FieldInfo</code> object.</p>
    public let selectFields: [FieldInfo]?

    public init (
        selectFields: [FieldInfo]? = nil
    )
    {
        self.selectFields = selectFields
    }
}

extension QueryInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "QueryInfo(selectFields: \(String(describing: selectFields)))"}
}