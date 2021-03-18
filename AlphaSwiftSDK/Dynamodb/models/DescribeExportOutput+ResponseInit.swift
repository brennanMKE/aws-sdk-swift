// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension DescribeExportOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeExportOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.exportDescription = output.exportDescription
        } else {
            self.exportDescription = nil
        }
    }
}
