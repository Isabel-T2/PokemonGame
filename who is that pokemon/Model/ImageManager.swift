//
//  ImageManager.swift
//  who is that pokemon
//
//  Created by Maria Isabel Torres Torres on 14/12/22.
//

import Foundation

protocol ImageManagerDelegate {
    func didUpdatePokemonImage(pokemonImage: ImageModel)
    func didFailWithErrorImage(error: Error)
}

struct ImageManager{
    var delegate : ImageManagerDelegate?
    
    func fetchImage(url: String){
        performRequest(with: url)
    }
    
    private func performRequest(with urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    self.delegate?.didFailWithErrorImage(error: error!)
                }
                if let safeData = data {
                    if let image = self.parseJSON(imageData: safeData){
                        self.delegate?.didUpdatePokemonImage(pokemonImage: image)
                    }
                }
            }
            task.resume()
        }
    }
    
    private func parseJSON(imageData: Data) -> ImageModel? {
        let decoder = JSONDecoder()
        do{
            let decodeData = try decoder.decode(ImageData.self, from: imageData)
            let image = ImageModel(url: decodeData.sprites?.other?.officialArtwork?.frontDefault ?? "")
            return image
        } catch {
            return nil
        }
    }
}
