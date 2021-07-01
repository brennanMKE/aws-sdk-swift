// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteApplicationInputProcessingConfigurationInput: Equatable {
    /// <p>The name of the application.</p>
    public let applicationName: String?
    /// <p>The application version.
    ///       You can use the <a>DescribeApplication</a> operation to get the current application version.
    ///       If the version specified is not the current version, the
    ///       <code>ConcurrentModificationException</code> is returned.
    ///     </p>
    public let currentApplicationVersionId: Int?
    /// <p>The ID of the input configuration from which to delete the input processing
    ///       configuration. You can get a list of the input IDs for an application by using the <a>DescribeApplication</a> operation.</p>
    public let inputId: String?

    public init (
        applicationName: String? = nil,
        currentApplicationVersionId: Int? = nil,
        inputId: String? = nil
    )
    {
        self.applicationName = applicationName
        self.currentApplicationVersionId = currentApplicationVersionId
        self.inputId = inputId
    }
}

extension DeleteApplicationInputProcessingConfigurationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteApplicationInputProcessingConfigurationInput(applicationName: \(String(describing: applicationName)), currentApplicationVersionId: \(String(describing: currentApplicationVersionId)), inputId: \(String(describing: inputId)))"}
}