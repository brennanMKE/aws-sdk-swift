// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ReportTaskProgressInputBody: Equatable {
    public let taskId: String?
    public let fields: [Field]?
}

extension ReportTaskProgressInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fields
        case taskId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let taskIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .taskId)
        taskId = taskIdDecoded
        let fieldsContainer = try containerValues.decodeIfPresent([Field?].self, forKey: .fields)
        var fieldsDecoded0:[Field]? = nil
        if let fieldsContainer = fieldsContainer {
            fieldsDecoded0 = [Field]()
            for structure0 in fieldsContainer {
                if let structure0 = structure0 {
                    fieldsDecoded0?.append(structure0)
                }
            }
        }
        fields = fieldsDecoded0
    }
}