// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the output of a <code>BatchGetItem</code> operation.</p>
public struct BatchGetItemOutput: Equatable {
    /**
     <p>The read capacity units consumed by the entire <code>BatchGetItem</code> operation.</p>
              <p>Each element consists of:</p>
              <ul>
                 <li>
                    <p>
                       <code>TableName</code> - The table that consumed the provisioned throughput.</p>
                 </li>
                 <li>
                    <p>
                       <code>CapacityUnits</code> - The total number of capacity units consumed.</p>
                 </li>
              </ul>
     */
    public let consumedCapacity: [ConsumedCapacity]?
    /**
     <p>A map of table name to a list of items. Each object in <code>Responses</code> consists of a table
           name, along with a map of attribute data consisting of the data type and attribute value.</p>
     */
    public let responses: [String:[[String:AttributeValue]?]?]?
    /**
     <p>A map of tables and their respective keys that were not processed with the current response.
           The <code>UnprocessedKeys</code> value is in the same form as <code>RequestItems</code>, so the value can
           be provided directly to a subsequent <code>BatchGetItem</code> operation. For more information, see
             <code>RequestItems</code> in the Request Parameters section.</p>
              <p>Each element consists of:</p>
              <ul>
                 <li>
                    <p>
                       <code>Keys</code> - An array of primary key attribute values that define specific items in the
               table.</p>
                 </li>
                 <li>
                    <p>
                         <code>ProjectionExpression</code> - One or more attributes to be
                         retrieved from the table or index. By default, all attributes are returned. If a
                         requested attribute is not found, it does not appear in the result.</p>
                 </li>
                 <li>
                    <p>
                       <code>ConsistentRead</code> - The consistency of a read operation. If set to <code>true</code>,
               then a strongly consistent read is used; otherwise, an eventually consistent read is
               used.</p>
                 </li>
              </ul>
              <p>If there are no unprocessed keys remaining, the response contains an empty
             <code>UnprocessedKeys</code> map.</p>
     */
    public let unprocessedKeys: [String:KeysAndAttributes]?

    public init (
        consumedCapacity: [ConsumedCapacity]? = nil,
        responses: [String:[[String:AttributeValue]?]?]? = nil,
        unprocessedKeys: [String:KeysAndAttributes]? = nil
    )
    {
        self.consumedCapacity = consumedCapacity
        self.responses = responses
        self.unprocessedKeys = unprocessedKeys
    }
}
