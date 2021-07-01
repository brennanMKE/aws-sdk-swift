// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ReportTaskRunnerHeartbeatOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ReportTaskRunnerHeartbeatOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.terminate = output.terminate
        } else {
            self.terminate = false
        }
    }
}