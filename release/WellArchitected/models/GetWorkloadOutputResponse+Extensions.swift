// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetWorkloadOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetWorkloadOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.workload = output.workload
        } else {
            self.workload = nil
        }
    }
}