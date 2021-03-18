// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension DeleteTableOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteTableOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.tableDescription = output.tableDescription
        } else {
            self.tableDescription = nil
        }
    }
}
