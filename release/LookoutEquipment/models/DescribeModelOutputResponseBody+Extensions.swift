// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeModelOutputResponseBody: Equatable {
    public let modelName: String?
    public let modelArn: String?
    public let datasetName: String?
    public let datasetArn: String?
    public let schema: String?
    public let labelsInputConfiguration: LabelsInputConfiguration?
    public let trainingDataStartTime: Date?
    public let trainingDataEndTime: Date?
    public let evaluationDataStartTime: Date?
    public let evaluationDataEndTime: Date?
    public let roleArn: String?
    public let dataPreProcessingConfiguration: DataPreProcessingConfiguration?
    public let status: ModelStatus?
    public let trainingExecutionStartTime: Date?
    public let trainingExecutionEndTime: Date?
    public let failedReason: String?
    public let modelMetrics: String?
    public let lastUpdatedTime: Date?
    public let createdAt: Date?
    public let serverSideKmsKeyId: String?
}

extension DescribeModelOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case createdAt = "CreatedAt"
        case dataPreProcessingConfiguration = "DataPreProcessingConfiguration"
        case datasetArn = "DatasetArn"
        case datasetName = "DatasetName"
        case evaluationDataEndTime = "EvaluationDataEndTime"
        case evaluationDataStartTime = "EvaluationDataStartTime"
        case failedReason = "FailedReason"
        case labelsInputConfiguration = "LabelsInputConfiguration"
        case lastUpdatedTime = "LastUpdatedTime"
        case modelArn = "ModelArn"
        case modelMetrics = "ModelMetrics"
        case modelName = "ModelName"
        case roleArn = "RoleArn"
        case schema = "Schema"
        case serverSideKmsKeyId = "ServerSideKmsKeyId"
        case status = "Status"
        case trainingDataEndTime = "TrainingDataEndTime"
        case trainingDataStartTime = "TrainingDataStartTime"
        case trainingExecutionEndTime = "TrainingExecutionEndTime"
        case trainingExecutionStartTime = "TrainingExecutionStartTime"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let modelNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .modelName)
        modelName = modelNameDecoded
        let modelArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .modelArn)
        modelArn = modelArnDecoded
        let datasetNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datasetName)
        datasetName = datasetNameDecoded
        let datasetArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datasetArn)
        datasetArn = datasetArnDecoded
        let schemaDecoded = try containerValues.decodeIfPresent(String.self, forKey: .schema)
        schema = schemaDecoded
        let labelsInputConfigurationDecoded = try containerValues.decodeIfPresent(LabelsInputConfiguration.self, forKey: .labelsInputConfiguration)
        labelsInputConfiguration = labelsInputConfigurationDecoded
        let trainingDataStartTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .trainingDataStartTime)
        trainingDataStartTime = trainingDataStartTimeDecoded
        let trainingDataEndTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .trainingDataEndTime)
        trainingDataEndTime = trainingDataEndTimeDecoded
        let evaluationDataStartTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .evaluationDataStartTime)
        evaluationDataStartTime = evaluationDataStartTimeDecoded
        let evaluationDataEndTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .evaluationDataEndTime)
        evaluationDataEndTime = evaluationDataEndTimeDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let dataPreProcessingConfigurationDecoded = try containerValues.decodeIfPresent(DataPreProcessingConfiguration.self, forKey: .dataPreProcessingConfiguration)
        dataPreProcessingConfiguration = dataPreProcessingConfigurationDecoded
        let statusDecoded = try containerValues.decodeIfPresent(ModelStatus.self, forKey: .status)
        status = statusDecoded
        let trainingExecutionStartTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .trainingExecutionStartTime)
        trainingExecutionStartTime = trainingExecutionStartTimeDecoded
        let trainingExecutionEndTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .trainingExecutionEndTime)
        trainingExecutionEndTime = trainingExecutionEndTimeDecoded
        let failedReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .failedReason)
        failedReason = failedReasonDecoded
        let modelMetricsDecoded = try containerValues.decodeIfPresent(String.self, forKey: .modelMetrics)
        modelMetrics = modelMetricsDecoded
        let lastUpdatedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedTime)
        lastUpdatedTime = lastUpdatedTimeDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdAt)
        createdAt = createdAtDecoded
        let serverSideKmsKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serverSideKmsKeyId)
        serverSideKmsKeyId = serverSideKmsKeyIdDecoded
    }
}