struct Acronym {
    func abbreviate(phrase: String) -> String {
        var cleanedPhrase = ""
        
        var previousCharacter: Character = "#"
            
        for character in phrase {
            switch character {
            case "-":
                cleanedPhrase = "\(cleanedPhrase) "
            case let character where previousCharacter.isLetter && character.isUppercase:
                cleanedPhrase = "\(cleanedPhrase) \(character)"
            default:
                cleanedPhrase = "\(cleanedPhrase)\(character)"
            }
            
            previousCharacter = character
        }
        
        let words = cleanedPhrase.split(separator: " ")
        
        let initials = words.map({ $0.first?.uppercased() ?? "" })
        
        return initials.joined(separator: "")
    }
}
