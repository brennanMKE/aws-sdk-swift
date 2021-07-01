// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information about a specified data ingestion job, including dataset
///          information, data ingestion configuration, and status. </p>
public struct DataIngestionJobSummary: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the dataset used in the data ingestion job. </p>
    public let datasetArn: String?
    /// <p>The name of the dataset used for the data ingestion job. </p>
    public let datasetName: String?
    /// <p> Specifies information for the input data for the data inference job, including data S3
    ///          location parameters. </p>
    public let ingestionInputConfiguration: IngestionInputConfiguration?
    /// <p>Indicates the job ID of the data ingestion job. </p>
    public let jobId: String?
    /// <p>Indicates the status of the data ingestion job. </p>
    public let status: IngestionJobStatus?

    public init (
        datasetArn: String? = nil,
        datasetName: String? = nil,
        ingestionInputConfiguration: IngestionInputConfiguration? = nil,
        jobId: String? = nil,
        status: IngestionJobStatus? = nil
    )
    {
        self.datasetArn = datasetArn
        self.datasetName = datasetName
        self.ingestionInputConfiguration = ingestionInputConfiguration
        self.jobId = jobId
        self.status = status
    }
}

extension DataIngestionJobSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DataIngestionJobSummary(datasetArn: \(String(describing: datasetArn)), datasetName: \(String(describing: datasetName)), ingestionInputConfiguration: \(String(describing: ingestionInputConfiguration)), jobId: \(String(describing: jobId)), status: \(String(describing: status)))"}
}