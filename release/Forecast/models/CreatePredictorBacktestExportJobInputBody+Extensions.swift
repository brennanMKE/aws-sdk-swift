// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreatePredictorBacktestExportJobInputBody: Equatable {
    public let predictorBacktestExportJobName: String?
    public let predictorArn: String?
    public let destination: DataDestination?
    public let tags: [Tag]?
}

extension CreatePredictorBacktestExportJobInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case destination = "Destination"
        case predictorArn = "PredictorArn"
        case predictorBacktestExportJobName = "PredictorBacktestExportJobName"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let predictorBacktestExportJobNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .predictorBacktestExportJobName)
        predictorBacktestExportJobName = predictorBacktestExportJobNameDecoded
        let predictorArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .predictorArn)
        predictorArn = predictorArnDecoded
        let destinationDecoded = try containerValues.decodeIfPresent(DataDestination.self, forKey: .destination)
        destination = destinationDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
    }
}