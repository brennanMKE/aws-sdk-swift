// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListScriptsOutputResponseBody: Equatable {
    public let scripts: [Script]?
    public let nextToken: String?
}

extension ListScriptsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case scripts = "Scripts"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let scriptsContainer = try containerValues.decodeIfPresent([Script?].self, forKey: .scripts)
        var scriptsDecoded0:[Script]? = nil
        if let scriptsContainer = scriptsContainer {
            scriptsDecoded0 = [Script]()
            for structure0 in scriptsContainer {
                if let structure0 = structure0 {
                    scriptsDecoded0?.append(structure0)
                }
            }
        }
        scripts = scriptsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}