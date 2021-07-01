// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateDatasetContentInput: Equatable {
    /// <p>The name of the dataset.</p>
    public let datasetName: String?
    /// <p>The version ID of the dataset content. To specify <code>versionId</code> for a dataset
    ///       content, the dataset must use a <a href="https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html">DeltaTimer</a> filter.</p>
    public let versionId: String?

    public init (
        datasetName: String? = nil,
        versionId: String? = nil
    )
    {
        self.datasetName = datasetName
        self.versionId = versionId
    }
}

extension CreateDatasetContentInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDatasetContentInput(datasetName: \(String(describing: datasetName)), versionId: \(String(describing: versionId)))"}
}