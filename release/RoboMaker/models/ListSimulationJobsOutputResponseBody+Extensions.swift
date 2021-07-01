// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListSimulationJobsOutputResponseBody: Equatable {
    public let simulationJobSummaries: [SimulationJobSummary]?
    public let nextToken: String?
}

extension ListSimulationJobsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case simulationJobSummaries
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let simulationJobSummariesContainer = try containerValues.decodeIfPresent([SimulationJobSummary?].self, forKey: .simulationJobSummaries)
        var simulationJobSummariesDecoded0:[SimulationJobSummary]? = nil
        if let simulationJobSummariesContainer = simulationJobSummariesContainer {
            simulationJobSummariesDecoded0 = [SimulationJobSummary]()
            for structure0 in simulationJobSummariesContainer {
                if let structure0 = structure0 {
                    simulationJobSummariesDecoded0?.append(structure0)
                }
            }
        }
        simulationJobSummaries = simulationJobSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}