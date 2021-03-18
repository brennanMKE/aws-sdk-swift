// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a request to perform an <code>UpdateItem</code> operation.</p>
public struct Update: Equatable {
    /**
     <p>A condition that must be satisfied in order for a conditional update to
             succeed.</p>
     */
    public let conditionExpression: String?
    /// <p>One or more substitution tokens for attribute names in an expression.</p>
    public let expressionAttributeNames: [String:String]?
    /// <p>One or more values that can be substituted in an expression.</p>
    public let expressionAttributeValues: [String:AttributeValue]?
    /**
     <p>The primary key of the item to be updated. Each element consists of
           an attribute name and a value for that attribute.</p>
     */
    public let key: [String:AttributeValue]?
    /**
     <p>Use <code>ReturnValuesOnConditionCheckFailure</code> to
             get the item attributes if the <code>Update</code> condition fails.
             For <code>ReturnValuesOnConditionCheckFailure</code>, the valid
             values are: NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW.</p>
     */
    public let returnValuesOnConditionCheckFailure: ReturnValuesOnConditionCheckFailure?
    /// <p>Name of the table for the <code>UpdateItem</code> request.</p>
    public let tableName: String?
    /**
     <p>An expression that defines one or more attributes to be updated,
           the action to be performed on them, and new value(s) for them.</p>
     */
    public let updateExpression: String?

    public init (
        conditionExpression: String? = nil,
        expressionAttributeNames: [String:String]? = nil,
        expressionAttributeValues: [String:AttributeValue]? = nil,
        key: [String:AttributeValue]? = nil,
        returnValuesOnConditionCheckFailure: ReturnValuesOnConditionCheckFailure? = nil,
        tableName: String? = nil,
        updateExpression: String? = nil
    )
    {
        self.conditionExpression = conditionExpression
        self.expressionAttributeNames = expressionAttributeNames
        self.expressionAttributeValues = expressionAttributeValues
        self.key = key
        self.returnValuesOnConditionCheckFailure = returnValuesOnConditionCheckFailure
        self.tableName = tableName
        self.updateExpression = updateExpression
    }
}
