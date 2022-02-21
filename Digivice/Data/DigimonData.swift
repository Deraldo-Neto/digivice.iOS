
import SwiftUI

// MARK: DIGIMONS DATA

let DigimonsData: [Digimon] = [
    Digimon(
        title: "Koromon",
        headline: "Digimon do tipo inferior",
        image: "Koromon",
        gradientColors: [Color("ColorPinkLight"), Color("ColorPinkDark")],
        description: "Produz bolhas para intimidar seus oponentes.",
        status: ["Baby II", "Data"],
        source: "https://wikimon.net/Koromon"
    ),
    Digimon(
        title: "Agumon",
        headline: "Digimon do tipo réptil",
        image: "Agumon",
        gradientColors: [Color("ColorYellowLight"), Color("ColorYellowDark")],
        description: "Sua pele tem uma coloração âmbar de cor laranja e grands olhos verdes, ele tem braços achatados e grandes garras, além de uma cauda curta e uma cabeça e focinho tão grandes quanto seu corpo.",
        status: ["Rookie", "Vacina"],
        source: "https://wikimon.net/Agumon"
    ),
    Digimon(
        title: "Greymon",
        headline: "Digimon do tipo dinossauro",
        image: "Greymon",
        gradientColors: [Color("ColorYellow2Light"), Color("ColorYellow2Dark")],
        description: "Um digimon cujo seu cranio endureceu de tal forma que agora é coberto por um casco duro. É muito agressivo, com um corpo como uma arma letal coberta de garras afiadas e chifres gigantescos.",
        status: ["Champion", "Vacina"],
        source: "https://wikimon.net/Greymon"
    ),
    Digimon(
        title: "Meramon",
        headline: "Digimon do tipo chama",
        image: "Meramon",
        gradientColors: [Color("ColorYellow2Light"), Color("ColorYellow2Dark")],
        description: "Seu corpo é envolto em chamas, tem um temperamento violento por conta de ter sido gerado a partir do Firewall.",
        status: ["Champion", "Vacina"],
        source: "https://wikimon.net/Meramon"
    ),
    Digimon(
        title: "Tyrannomon",
        headline: "Digimon do tipo dinossauro",
        image: "Tyrannomon",
        gradientColors: [Color("ColorRedLight"), Color("ColorRedDark")],
        description: "Varre tudo com seus dois braços bem desenvolvidos e sua cauda gigantesca.",
        status: ["Champion", "Data"],
        source: "https://wikimon.net/Tyrannomon"
    ),
    Digimon(
        title: "Tsunomon",
        headline: "Digimon do tipo inferior",
        image: "Tsunomon",
        gradientColors: [Color("ColorYellow2Light"), Color("ColorYellow2Dark")],
        description: "É coberto de pelos e uma das suas antenas se desenvolveu e endureceu.",
        status: ["Baby II", "Data"],
        source: "https://wikimon.net/Tsunomon"
    ),
    Digimon(
        title: "Gabumon",
        headline: "Digimon do tipo réptil",
        image: "Gabumon",
        gradientColors: [Color("ColorBlueLight"), Color("ColorBlueDark")],
        description: "Embora esteja coberto de pelo, é claramente um digimon réptil. Tem uma personalidade extremamente tímida.",
        status: ["Rookie", "Data"],
        source: "https://wikimon.net/Gabumon"
    ),
    Digimon(
        title: "Garurumon",
        headline: "Digimon do tipo besta",
        image: "Garurumon",
        gradientColors: [Color("ColorBlue2Light"), Color("ColorBlue2Dark")],
        description: "Coberto de pelo azul, branco e prateado, é um digimon do tipo besta com uma aparência semelhante a um logo. Sua pele é tão dura quanto um 'Mithril', que se diz ser um metal raro lendário, e como as lâminas que crescem nas pontas de seus ombros têm bordas afiadas, qualquer coisa que as toque é cortada em pedaços.",
        status: ["Champion", "Vacina"],
        source: "https://wikimon.net/Garurumon"
    ),
    Digimon(
        title: "Dorugamon",
        headline: "Digimon do tipo besta dragão",
        image: "Dorugamon",
        gradientColors: [Color("ColorGrayLight"), Color("ColorGrayDark")],
        description: "Os digimons tem tanto medo dele que fogem apenas com a sua sombra. Mas, embora exiba ferocidade, também é inteligênte e geralmente muito dócil.",
        status: ["Champion", "Vacina"],
        source: "https://wikimon.net/Dorugamon"
    ),
    Digimon(
        title: "Veedramon",
        headline: "Digimon do tipo dragão místico",
        image: "Veedramon",
        gradientColors: [Color("ColorBlue2Light"), Color("ColorBlue2Dark")],
        description: "Um digimon que só existe no continente Folder. Sua existência é extremamente rara e, mesmo no continente Folder é difícil de ser encontrado. Seu modo de vida é um mistério.",
        status: ["Champion", "Vacina"],
        source: "https://wikimon.net/Veedramon"
    )
]
