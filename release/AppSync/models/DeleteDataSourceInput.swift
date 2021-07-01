// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteDataSourceInput: Equatable {
    /// <p>The API ID.</p>
    public let apiId: String?
    /// <p>The name of the data source.</p>
    public let name: String?

    public init (
        apiId: String? = nil,
        name: String? = nil
    )
    {
        self.apiId = apiId
        self.name = name
    }
}

extension DeleteDataSourceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteDataSourceInput(apiId: \(String(describing: apiId)), name: \(String(describing: name)))"}
}