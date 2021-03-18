// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct ScanInputBody: Equatable {
    public let tableName: String?
    public let indexName: String?
    public let attributesToGet: [String]?
    public let limit: Int?
    public let select: Select?
    public let scanFilter: [String:Condition]?
    public let conditionalOperator: ConditionalOperator?
    public let exclusiveStartKey: [String:AttributeValue]?
    public let returnConsumedCapacity: ReturnConsumedCapacity?
    public let totalSegments: Int?
    public let segment: Int?
    public let projectionExpression: String?
    public let filterExpression: String?
    public let expressionAttributeNames: [String:String]?
    public let expressionAttributeValues: [String:AttributeValue]?
    public let consistentRead: Bool?
}

extension ScanInputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case attributesToGet = "AttributesToGet"
        case conditionalOperator = "ConditionalOperator"
        case consistentRead = "ConsistentRead"
        case exclusiveStartKey = "ExclusiveStartKey"
        case expressionAttributeNames = "ExpressionAttributeNames"
        case expressionAttributeValues = "ExpressionAttributeValues"
        case filterExpression = "FilterExpression"
        case indexName = "IndexName"
        case limit = "Limit"
        case projectionExpression = "ProjectionExpression"
        case returnConsumedCapacity = "ReturnConsumedCapacity"
        case scanFilter = "ScanFilter"
        case segment = "Segment"
        case select = "Select"
        case tableName = "TableName"
        case totalSegments = "TotalSegments"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tableNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tableName)
        tableName = tableNameDecoded
        let indexNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .indexName)
        indexName = indexNameDecoded
        let attributesToGetContainer = try containerValues.decodeIfPresent([String].self, forKey: .attributesToGet)
        var attributesToGetDecoded0:[String]? = nil
        if let attributesToGetContainer = attributesToGetContainer {
            attributesToGetDecoded0 = [String]()
            for string0 in attributesToGetContainer {
                attributesToGetDecoded0?.append(string0)
            }
        }
        attributesToGet = attributesToGetDecoded0
        let limitDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .limit)
        limit = limitDecoded
        let selectDecoded = try containerValues.decodeIfPresent(Select.self, forKey: .select)
        select = selectDecoded
        let scanFilterContainer = try containerValues.decodeIfPresent([String:Condition].self, forKey: .scanFilter)
        var scanFilterDecoded0: [String:Condition]? = nil
        if let scanFilterContainer = scanFilterContainer {
            scanFilterDecoded0 = [String:Condition]()
            for (key0, condition0) in scanFilterContainer {
                scanFilterDecoded0?[key0] = condition0
            }
        }
        scanFilter = scanFilterDecoded0
        let conditionalOperatorDecoded = try containerValues.decodeIfPresent(ConditionalOperator.self, forKey: .conditionalOperator)
        conditionalOperator = conditionalOperatorDecoded
        let exclusiveStartKeyContainer = try containerValues.decodeIfPresent([String:AttributeValue].self, forKey: .exclusiveStartKey)
        var exclusiveStartKeyDecoded0: [String:AttributeValue]? = nil
        if let exclusiveStartKeyContainer = exclusiveStartKeyContainer {
            exclusiveStartKeyDecoded0 = [String:AttributeValue]()
            for (key0, attributevalue0) in exclusiveStartKeyContainer {
                exclusiveStartKeyDecoded0?[key0] = attributevalue0
            }
        }
        exclusiveStartKey = exclusiveStartKeyDecoded0
        let returnConsumedCapacityDecoded = try containerValues.decodeIfPresent(ReturnConsumedCapacity.self, forKey: .returnConsumedCapacity)
        returnConsumedCapacity = returnConsumedCapacityDecoded
        let totalSegmentsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .totalSegments)
        totalSegments = totalSegmentsDecoded
        let segmentDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .segment)
        segment = segmentDecoded
        let projectionExpressionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .projectionExpression)
        projectionExpression = projectionExpressionDecoded
        let filterExpressionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .filterExpression)
        filterExpression = filterExpressionDecoded
        let expressionAttributeNamesContainer = try containerValues.decodeIfPresent([String:String].self, forKey: .expressionAttributeNames)
        var expressionAttributeNamesDecoded0: [String:String]? = nil
        if let expressionAttributeNamesContainer = expressionAttributeNamesContainer {
            expressionAttributeNamesDecoded0 = [String:String]()
            for (key0, attributename0) in expressionAttributeNamesContainer {
                expressionAttributeNamesDecoded0?[key0] = attributename0
            }
        }
        expressionAttributeNames = expressionAttributeNamesDecoded0
        let expressionAttributeValuesContainer = try containerValues.decodeIfPresent([String:AttributeValue].self, forKey: .expressionAttributeValues)
        var expressionAttributeValuesDecoded0: [String:AttributeValue]? = nil
        if let expressionAttributeValuesContainer = expressionAttributeValuesContainer {
            expressionAttributeValuesDecoded0 = [String:AttributeValue]()
            for (key0, attributevalue0) in expressionAttributeValuesContainer {
                expressionAttributeValuesDecoded0?[key0] = attributevalue0
            }
        }
        expressionAttributeValues = expressionAttributeValuesDecoded0
        let consistentReadDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .consistentRead)
        consistentRead = consistentReadDecoded
    }
}
