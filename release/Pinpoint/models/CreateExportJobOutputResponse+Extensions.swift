// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateExportJobOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
           let unwrappedData = data {
            if let responseDecoder = decoder {
                let output: ExportJobResponse = try responseDecoder.decode(responseBody: unwrappedData)
                self.exportJobResponse = output
            } else {
                self.exportJobResponse = nil
            }
        } else {
            self.exportJobResponse = nil
        }
    }
}