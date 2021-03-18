// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListFunctionsInput: Equatable {
    /// <p>Set to <code>ALL</code> to include entries for all published versions of each function.</p>
    public let functionVersion: FunctionVersion?
    /// <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    public let marker: String?
    /**
     <p>For Lambda@Edge functions, the AWS Region of the master function. For example, <code>us-east-1</code> filters
           the list of functions to only include Lambda@Edge functions replicated from a master function in US East (N.
           Virginia). If specified, you must set <code>FunctionVersion</code> to <code>ALL</code>.</p>
     */
    public let masterRegion: String?
    /// <p>The maximum number of functions to return.</p>
    public let maxItems: Int?

    public init (
        functionVersion: FunctionVersion? = nil,
        marker: String? = nil,
        masterRegion: String? = nil,
        maxItems: Int? = nil
    )
    {
        self.functionVersion = functionVersion
        self.marker = marker
        self.masterRegion = masterRegion
        self.maxItems = maxItems
    }
}
