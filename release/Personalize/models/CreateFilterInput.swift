// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateFilterInput: Equatable {
    /// <p>The ARN of the dataset group that the filter will belong to.</p>
    public let datasetGroupArn: String?
    /// <p>The filter expression defines which items are included or excluded from recommendations. Filter expression must follow specific format rules.
    ///             For information about filter expression structure and syntax, see
    ///              <a>filter-expressions</a>.</p>
    public let filterExpression: String?
    /// <p>The name of the filter to create.</p>
    public let name: String?

    public init (
        datasetGroupArn: String? = nil,
        filterExpression: String? = nil,
        name: String? = nil
    )
    {
        self.datasetGroupArn = datasetGroupArn
        self.filterExpression = filterExpression
        self.name = name
    }
}

extension CreateFilterInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateFilterInput(datasetGroupArn: \(String(describing: datasetGroupArn)), filterExpression: \(String(describing: filterExpression)), name: \(String(describing: name)))"}
}