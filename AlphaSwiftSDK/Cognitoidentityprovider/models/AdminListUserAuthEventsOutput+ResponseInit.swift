// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension AdminListUserAuthEventsOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: AdminListUserAuthEventsOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.authEvents = output.authEvents
            self.nextToken = output.nextToken
        } else {
            self.authEvents = nil
            self.nextToken = nil
        }
    }
}
