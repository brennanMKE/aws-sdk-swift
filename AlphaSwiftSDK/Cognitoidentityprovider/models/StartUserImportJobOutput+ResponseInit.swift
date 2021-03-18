// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension StartUserImportJobOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: StartUserImportJobOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.userImportJob = output.userImportJob
        } else {
            self.userImportJob = nil
        }
    }
}
