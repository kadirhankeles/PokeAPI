//
//  PokemonSpecies.swift
//  PokemonAPI
//
//  Created by Ali Çolak on 3.11.2023.
//

import Foundation

struct PokemonSpecies {
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

struct Color {
    let name: String
    let url: String
}

struct EggGroup {
    let name: String
    let url: String
}

struct Species {
    let name: String
    let url: String
}

struct FlavorTextEntry {
    let flavor_text: String
    let language: Language
    let version: Version
}

struct Language {
    let name: String
    let url: String
}

struct Version {
    let name: String
    let url: String
}

struct Genus {
    let genus: String
    let language: Language
}

struct Generation {
    let name: String
    let url: String
}

struct GrowthRate {
    let name: String
    let url: String
}

struct PokedexNumber {
    let entry_number: Int
    let pokedex: Pokedex
}

struct Pokedex {
    let name: String
    let url: String
}

struct PalParkEncounter {
    let area: Area
    let base_score: Int
    let rate: Int
}

struct Area {
    let name: String
    let url: String
}

struct Shape {
    let name: String
    let url: String
}

struct Variety {
    let is_default: Bool
    let pokemon: PokemonNameUrl
}

struct PokemonNameUrl {
    let name: String
    let url: String
}
