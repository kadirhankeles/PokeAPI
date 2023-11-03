//
//  PokemonSpecies.swift
//  PokemonAPI
//
//  Created by Ali Çolak on 3.11.2023.
//

import Foundation

struct PokemonSpecies: Codable {
    let base_happiness: Int
    let capture_rate: Int
    let color: Color
    let egg_groups: [EggGroup]
    let evolution_chain_url: String
    let evolves_from_species: Species?
    let flavor_text_entries: [FlavorTextEntry]
    let genera: [Genus]
    let generation: Generation
    let growth_rate: GrowthRate
    let gender_rate: Int
    let habitat: String?
    let hatch_counter: Int
    let id: Int
    let is_baby: Bool
    let is_legendary: Bool
    let is_mythical: Bool
    let name: String
    let order: Int
    let pokedex_numbers: [PokedexNumber]
    let pal_park_encounters: [PalParkEncounter]
    let shape: Shape
    let varieties: [Variety]
}

struct Color: Codable {
    let name: String
    let url: String
}

struct EggGroup: Codable {
    let name: String
    let url: String
}

struct Species: Codable {
    let name: String
    let url: String
}

struct FlavorTextEntry: Codable {
    let flavor_text: String
    let language: Language
    let version: Version
}

struct Language : Codable{
    let name: String
    let url: String
}

struct Version: Codable {
    let name: String
    let url: String
}

struct Genus: Codable {
    let genus: String
    let language: Language
}

struct Generation: Codable {
    let name: String
    let url: String
}

struct GrowthRate: Codable {
    let name: String
    let url: String
}

struct PokedexNumber: Codable {
    let entry_number: Int
    let pokedex: Pokedex
}

struct Pokedex: Codable {
    let name: String
    let url: String
}

struct PalParkEncounter: Codable {
    let area: Area
    let base_score: Int
    let rate: Int
}

struct Area: Codable {
    let name: String
    let url: String
}

struct Shape: Codable {
    let name: String
    let url: String
}

struct Variety: Codable {
    let is_default: Bool
    let pokemon: PokemonNameUrl
}

struct PokemonNameUrl: Codable {
    let name: String
    let url: String
}
