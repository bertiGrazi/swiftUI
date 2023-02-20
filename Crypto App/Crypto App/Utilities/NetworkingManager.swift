//
//  NetworkingManager.swift
//  Crypto App
//
//  Created by Grazi  Berti on 20/02/23.
//

import Foundation
import Combine

class NetworkingManager {
    /// adicionando o static nunca iremos precisar primeiro instanciar NetworkingManager e depois acessar a função download. Dessa maneira, fazendo o acesso da função diretamente
    static func download(url: URL) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap({ try handleURLResponse(output: $0) })
            .receive(on: DispatchQueue.main)
        //converte em qualquer retorno de Publishers
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output) throws -> Data {
        guard let response = output.response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else {
            throw URLError(.badServerResponse)
        }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
