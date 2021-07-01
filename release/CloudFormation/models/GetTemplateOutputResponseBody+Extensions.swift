// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetTemplateOutputResponseBody: Equatable {
    public let templateBody: String?
    public let stagesAvailable: [TemplateStage]?
}

extension GetTemplateOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case stagesAvailable = "StagesAvailable"
        case templateBody = "TemplateBody"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("GetTemplateResult"))
        let templateBodyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .templateBody)
        templateBody = templateBodyDecoded
        if containerValues.contains(.stagesAvailable) {
            struct KeyVal0{struct member{}}
            let stagesAvailableWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .stagesAvailable)
            if let stagesAvailableWrappedContainer = stagesAvailableWrappedContainer {
                let stagesAvailableContainer = try stagesAvailableWrappedContainer.decodeIfPresent([TemplateStage].self, forKey: .member)
                var stagesAvailableBuffer:[TemplateStage]? = nil
                if let stagesAvailableContainer = stagesAvailableContainer {
                    stagesAvailableBuffer = [TemplateStage]()
                    for stringContainer0 in stagesAvailableContainer {
                        stagesAvailableBuffer?.append(stringContainer0)
                    }
                }
                stagesAvailable = stagesAvailableBuffer
            } else {
                stagesAvailable = []
            }
        } else {
            stagesAvailable = nil
        }
    }
}