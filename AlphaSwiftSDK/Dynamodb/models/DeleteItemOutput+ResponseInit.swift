// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension DeleteItemOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteItemOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.attributes = output.attributes
            self.consumedCapacity = output.consumedCapacity
            self.itemCollectionMetrics = output.itemCollectionMetrics
        } else {
            self.attributes = nil
            self.consumedCapacity = nil
            self.itemCollectionMetrics = nil
        }
    }
}
