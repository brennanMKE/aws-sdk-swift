// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutLifecycleEventHookExecutionStatusOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PutLifecycleEventHookExecutionStatusOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.lifecycleEventHookExecutionId = output.lifecycleEventHookExecutionId
        } else {
            self.lifecycleEventHookExecutionId = nil
        }
    }
}