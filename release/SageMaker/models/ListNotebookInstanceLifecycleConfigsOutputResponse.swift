// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListNotebookInstanceLifecycleConfigsOutputResponse: Equatable {
    /// <p>If the response is truncated, Amazon SageMaker returns this token. To get the next set of
    ///             lifecycle configurations, use it in the next request. </p>
    public let nextToken: String?
    /// <p>An array of <code>NotebookInstanceLifecycleConfiguration</code> objects, each listing
    ///             a lifecycle configuration.</p>
    public let notebookInstanceLifecycleConfigs: [NotebookInstanceLifecycleConfigSummary]?

    public init (
        nextToken: String? = nil,
        notebookInstanceLifecycleConfigs: [NotebookInstanceLifecycleConfigSummary]? = nil
    )
    {
        self.nextToken = nextToken
        self.notebookInstanceLifecycleConfigs = notebookInstanceLifecycleConfigs
    }
}

extension ListNotebookInstanceLifecycleConfigsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListNotebookInstanceLifecycleConfigsOutputResponse(nextToken: \(String(describing: nextToken)), notebookInstanceLifecycleConfigs: \(String(describing: notebookInstanceLifecycleConfigs)))"}
}