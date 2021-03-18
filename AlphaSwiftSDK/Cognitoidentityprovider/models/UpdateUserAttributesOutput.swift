// Code generated by smithy-swift-codegen. DO NOT EDIT!



/**
 <p>Represents the response from the server for the request to update user
             attributes.</p>
 */
public struct UpdateUserAttributesOutput: Equatable {
    /**
     <p>The code delivery details list from the server for the request to update user
                 attributes.</p>
     */
    public let codeDeliveryDetailsList: [CodeDeliveryDetailsType]?

    public init (
        codeDeliveryDetailsList: [CodeDeliveryDetailsType]? = nil
    )
    {
        self.codeDeliveryDetailsList = codeDeliveryDetailsList
    }
}
