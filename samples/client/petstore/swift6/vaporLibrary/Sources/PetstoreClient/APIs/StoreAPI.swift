//
// StoreAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class StoreAPI {

    /**
     Delete purchase order by ID
     DELETE /store/order/{order_id}
     For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
     - parameter orderId: (path) ID of the order that needs to be deleted 
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func deleteOrderRaw(orderId: String, headers: HTTPHeaders = OpenAPIClient.shared.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        var localVariablePath = "/store/order/{order_id}"
        let orderIdPreEscape = String(describing: orderId)
        let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = openAPIClient.basePath + localVariablePath

        guard let localVariableApiClient = openAPIClient.apiClient else {
            fatalError("openAPIClient.apiClient is not set.")
        }

        return localVariableApiClient.send(.DELETE, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum DeleteOrder {
        case http400(raw: ClientResponse)
        case http404(raw: ClientResponse)
        case http0(raw: ClientResponse)
    }

    /**
     Delete purchase order by ID
     DELETE /store/order/{order_id}
     For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
     - parameter orderId: (path) ID of the order that needs to be deleted 
     - returns: `EventLoopFuture` of `DeleteOrder` 
     */
    open class func deleteOrder(orderId: String, headers: HTTPHeaders = OpenAPIClient.shared.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DeleteOrder> {
        return deleteOrderRaw(orderId: orderId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> DeleteOrder in
            switch response.status.code {
            case 400:
                return .http400(raw: response)
            case 404:
                return .http404(raw: response)
            default:
                return .http0(raw: response)
            }
        }
    }

    /**
     Returns pet inventories by status
     GET /store/inventory
     Returns a map of status codes to quantities
     - API Key:
       - type: apiKey api_key (HEADER)
       - name: api_key
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func getInventoryRaw(headers: HTTPHeaders = OpenAPIClient.shared.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/store/inventory"
        let localVariableURLString = openAPIClient.basePath + localVariablePath

        guard let localVariableApiClient = openAPIClient.apiClient else {
            fatalError("openAPIClient.apiClient is not set.")
        }

        return localVariableApiClient.send(.GET, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum GetInventory {
        case http200(value: [String: Int], raw: ClientResponse)
        case http0(raw: ClientResponse)
    }

    /**
     Returns pet inventories by status
     GET /store/inventory
     Returns a map of status codes to quantities
     - API Key:
       - type: apiKey api_key (HEADER)
       - name: api_key
     - returns: `EventLoopFuture` of `GetInventory` 
     */
    open class func getInventory(headers: HTTPHeaders = OpenAPIClient.shared.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GetInventory> {
        return getInventoryRaw(headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> GetInventory in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode([String: Int].self, using: openAPIClient.contentConfiguration.requireDecoder(for: [String: Int].defaultContentType)), raw: response)
            default:
                return .http0(raw: response)
            }
        }
    }

    /**
     Find purchase order by ID
     GET /store/order/{order_id}
     For valid response try integer IDs with value <= 5 or > 10. Other values will generate exceptions
     - parameter orderId: (path) ID of pet that needs to be fetched 
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func getOrderByIdRaw(orderId: Int64, headers: HTTPHeaders = OpenAPIClient.shared.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        var localVariablePath = "/store/order/{order_id}"
        let orderIdPreEscape = String(describing: orderId)
        let orderIdPostEscape = orderIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{order_id}", with: orderIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = openAPIClient.basePath + localVariablePath

        guard let localVariableApiClient = openAPIClient.apiClient else {
            fatalError("openAPIClient.apiClient is not set.")
        }

        return localVariableApiClient.send(.GET, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum GetOrderById {
        case http200(value: Order, raw: ClientResponse)
        case http400(raw: ClientResponse)
        case http404(raw: ClientResponse)
        case http0(raw: ClientResponse)
    }

    /**
     Find purchase order by ID
     GET /store/order/{order_id}
     For valid response try integer IDs with value <= 5 or > 10. Other values will generate exceptions
     - parameter orderId: (path) ID of pet that needs to be fetched 
     - returns: `EventLoopFuture` of `GetOrderById` 
     */
    open class func getOrderById(orderId: Int64, headers: HTTPHeaders = OpenAPIClient.shared.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GetOrderById> {
        return getOrderByIdRaw(orderId: orderId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> GetOrderById in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(Order.self, using: openAPIClient.contentConfiguration.requireDecoder(for: Order.defaultContentType)), raw: response)
            case 400:
                return .http400(raw: response)
            case 404:
                return .http404(raw: response)
            default:
                return .http0(raw: response)
            }
        }
    }

    /**
     Place an order for a pet
     POST /store/order
     - parameter body: (body) order placed for purchasing the pet 
     - returns: `EventLoopFuture` of `ClientResponse` 
     */
    open class func placeOrderRaw(body: Order, headers: HTTPHeaders = OpenAPIClient.shared.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ClientResponse> {
        let localVariablePath = "/store/order"
        let localVariableURLString = openAPIClient.basePath + localVariablePath

        guard let localVariableApiClient = openAPIClient.apiClient else {
            fatalError("openAPIClient.apiClient is not set.")
        }

        return localVariableApiClient.send(.POST, headers: headers, to: URI(string: localVariableURLString)) { localVariableRequest in
            try Configuration.apiWrapper(&localVariableRequest)
            
            
            try localVariableRequest.content.encode(body, using: openAPIClient.contentConfiguration.requireEncoder(for: Order.defaultContentType))
            
            try beforeSend(&localVariableRequest)
        }
    }

    public enum PlaceOrder {
        case http200(value: Order, raw: ClientResponse)
        case http400(raw: ClientResponse)
        case http0(raw: ClientResponse)
    }

    /**
     Place an order for a pet
     POST /store/order
     - parameter body: (body) order placed for purchasing the pet 
     - returns: `EventLoopFuture` of `PlaceOrder` 
     */
    open class func placeOrder(body: Order, headers: HTTPHeaders = OpenAPIClient.shared.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PlaceOrder> {
        return placeOrderRaw(body: body, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> PlaceOrder in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(Order.self, using: openAPIClient.contentConfiguration.requireDecoder(for: Order.defaultContentType)), raw: response)
            case 400:
                return .http400(raw: response)
            default:
                return .http0(raw: response)
            }
        }
    }
}
