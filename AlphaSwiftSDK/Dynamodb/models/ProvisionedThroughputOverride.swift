// Code generated by smithy-swift-codegen. DO NOT EDIT!



/**
 <p>Replica-specific provisioned throughput settings. If not specified, uses the
          source table's provisioned throughput settings.</p>
 */
public struct ProvisionedThroughputOverride: Equatable {
    /**
     <p>Replica-specific read capacity units. If not specified, uses the source table's
              read capacity settings.</p>
     */
    public let readCapacityUnits: Int?

    public init (
        readCapacityUnits: Int? = nil
    )
    {
        self.readCapacityUnits = readCapacityUnits
    }
}
