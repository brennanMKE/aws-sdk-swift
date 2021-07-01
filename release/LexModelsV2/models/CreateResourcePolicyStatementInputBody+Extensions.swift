// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateResourcePolicyStatementInputBody: Equatable {
    public let statementId: String?
    public let effect: Effect?
    public let principal: [Principal]?
    public let action: [String]?
    public let condition: [String:[String:String]]?
}

extension CreateResourcePolicyStatementInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case action
        case condition
        case effect
        case principal
        case statementId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statementIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .statementId)
        statementId = statementIdDecoded
        let effectDecoded = try containerValues.decodeIfPresent(Effect.self, forKey: .effect)
        effect = effectDecoded
        let principalContainer = try containerValues.decodeIfPresent([Principal?].self, forKey: .principal)
        var principalDecoded0:[Principal]? = nil
        if let principalContainer = principalContainer {
            principalDecoded0 = [Principal]()
            for structure0 in principalContainer {
                if let structure0 = structure0 {
                    principalDecoded0?.append(structure0)
                }
            }
        }
        principal = principalDecoded0
        let actionContainer = try containerValues.decodeIfPresent([String?].self, forKey: .action)
        var actionDecoded0:[String]? = nil
        if let actionContainer = actionContainer {
            actionDecoded0 = [String]()
            for string0 in actionContainer {
                if let string0 = string0 {
                    actionDecoded0?.append(string0)
                }
            }
        }
        action = actionDecoded0
        let conditionContainer = try containerValues.decodeIfPresent([String: [String: String?]?].self, forKey: .condition)
        var conditionDecoded0: [String:[String:String]]? = nil
        if let conditionContainer = conditionContainer {
            conditionDecoded0 = [String:[String:String]]()
            for (key0, conditionkeyvaluemap0) in conditionContainer {
                var conditionkeyvaluemap0Decoded0: [String: String]? = nil
                if let conditionkeyvaluemap0 = conditionkeyvaluemap0 {
                    conditionkeyvaluemap0Decoded0 = [String: String]()
                    for (key1, conditionvalue1) in conditionkeyvaluemap0 {
                        if let conditionvalue1 = conditionvalue1 {
                            conditionkeyvaluemap0Decoded0?[key1] = conditionvalue1
                        }
                    }
                }
                conditionDecoded0?[key0] = conditionkeyvaluemap0Decoded0
            }
        }
        condition = conditionDecoded0
    }
}