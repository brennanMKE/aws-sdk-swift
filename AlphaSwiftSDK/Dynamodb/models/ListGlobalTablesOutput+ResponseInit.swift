// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ListGlobalTablesOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListGlobalTablesOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.globalTables = output.globalTables
            self.lastEvaluatedGlobalTableName = output.lastEvaluatedGlobalTableName
        } else {
            self.globalTables = nil
            self.lastEvaluatedGlobalTableName = nil
        }
    }
}
