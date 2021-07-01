// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateDataSetOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateDataSetOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.arn = output.arn
            self.dataSetId = output.dataSetId
            self.ingestionArn = output.ingestionArn
            self.ingestionId = output.ingestionId
            self.requestId = output.requestId
        } else {
            self.arn = nil
            self.dataSetId = nil
            self.ingestionArn = nil
            self.ingestionId = nil
            self.requestId = nil
        }
        self.status = httpResponse.statusCode.rawValue
    }
}