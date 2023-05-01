String idToLabel(String id) {
  final Map<String, String> idToLabel = {
    "0": "Black Footed Albatross",
    "1": "Laysan Albatross",
    "2": "Sooty Albatross",
    "3": "Groove Billed Ani",
    "4": "Crested Auklet",
    "5": "Least Auklet",
    "6": "Parakeet Auklet",
    "7": "Rhinoceros Auklet",
    "8": "Brewer Blackbird",
    "9": "Red Winged Blackbird",
    "10": "Rusty Blackbird",
    "11": "Yellow Headed Blackbird",
    "12": "Bobolink",
    "13": "Indigo Bunting",
    "14": "Lazuli Bunting",
    "15": "Painted Bunting",
    "16": "Cardinal",
    "17": "Spotted Catbird",
    "18": "Gray Catbird",
    "19": "Yellow Breasted Chat",
    "20": "Eastern Towhee",
    "21": "Chuck Will Widow",
    "22": "Brandt Cormorant",
    "23": "Red Faced Cormorant",
    "24": "Pelagic Cormorant",
    "25": "Bronzed Cowbird",
    "26": "Shiny Cowbird",
    "27": "Brown Creeper",
    "28": "American Crow",
    "29": "Fish Crow",
    "30": "Black Billed Cuckoo",
    "31": "Mangrove Cuckoo",
    "32": "Yellow Billed Cuckoo",
    "33": "Gray Crowned Rosy Finch",
    "34": "Purple Finch",
    "35": "Northern Flicker",
    "36": "Acadian Flycatcher",
    "37": "Great Crested Flycatcher",
    "38": "Least Flycatcher",
    "39": "Olive Sided Flycatcher",
    "40": "Scissor Tailed Flycatcher",
    "41": "Vermilion Flycatcher",
    "42": "Yellow Bellied Flycatcher",
    "43": "Frigatebird",
    "44": "Northern Fulmar",
    "45": "Gadwall",
    "46": "American Goldfinch",
    "47": "European Goldfinch",
    "48": "Boat Tailed Grackle",
    "49": "Eared Grebe",
    "50": "Horned Grebe",
    "51": "Pied Billed Grebe",
    "52": "Western Grebe",
    "53": "Blue Grosbeak",
    "54": "Evening Grosbeak",
    "55": "Pine Grosbeak",
    "56": "Rose Breasted Grosbeak",
    "57": "Pigeon Guillemot",
    "58": "California Gull",
    "59": "Glaucous Winged Gull",
    "60": "Heermann Gull",
    "61": "Herring Gull",
    "62": "Ivory Gull",
    "63": "Ring Billed Gull",
    "64": "Slaty Backed Gull",
    "65": "Western Gull",
    "66": "Anna Hummingbird",
    "67": "Ruby Throated Hummingbird",
    "68": "Rufous Hummingbird",
    "69": "Green Violetear",
    "70": "Long Tailed Jaeger",
    "71": "Pomarine Jaeger",
    "72": "Blue Jay",
    "73": "Florida Jay",
    "74": "Green Jay",
    "75": "Dark Eyed Junco",
    "76": "Tropical Kingbird",
    "77": "Gray Kingbird",
    "78": "Belted Kingfisher",
    "79": "Green Kingfisher",
    "80": "Pied Kingfisher",
    "81": "Ringed Kingfisher",
    "82": "White Breasted Kingfisher",
    "83": "Red Legged Kittiwake",
    "84": "Horned Lark",
    "85": "Pacific Loon",
    "86": "Mallard",
    "87": "Western Meadowlark",
    "88": "Hooded Merganser",
    "89": "Red Breasted Merganser",
    "90": "Mockingbird",
    "91": "Nighthawk",
    "92": "Clark Nutcracker",
    "93": "White Breasted Nuthatch",
    "94": "Baltimore Oriole",
    "95": "Hooded Oriole",
    "96": "Orchard Oriole",
    "97": "Scott Oriole",
    "98": "Ovenbird",
    "99": "Brown Pelican",
    "100": "White Pelican",
    "101": "Western Wood Pewee",
    "102": "Sayornis",
    "103": "American Pipit",
    "104": "Whip Poor Will",
    "105": "Horned Puffin",
    "106": "Common Raven",
    "107": "White Necked Raven",
    "108": "American Redstart",
    "109": "Geococcyx",
    "110": "Loggerhead Shrike",
    "111": "Great Grey Shrike",
    "112": "Baird Sparrow",
    "113": "Black Throated Sparrow",
    "114": "Brewer Sparrow",
    "115": "Chipping Sparrow",
    "116": "Clay Colored Sparrow",
    "117": "House Sparrow",
    "118": "Field Sparrow",
    "119": "Fox Sparrow",
    "120": "Grasshopper Sparrow",
    "121": "Harris Sparrow",
    "122": "Henslow Sparrow",
    "123": "Le Conte Sparrow",
    "124": "Lincoln Sparrow",
    "125": "Nelson Sharp Tailed Sparrow",
    "126": "Savannah Sparrow",
    "127": "Seaside Sparrow",
    "128": "Song Sparrow",
    "129": "Tree Sparrow",
    "130": "Vesper Sparrow",
    "131": "White Crowned Sparrow",
    "132": "White Throated Sparrow",
    "133": "Cape Glossy Starling",
    "134": "Bank Swallow",
    "135": "Barn Swallow",
    "136": "Cliff Swallow",
    "137": "Tree Swallow",
    "138": "Scarlet Tanager",
    "139": "Summer Tanager",
    "140": "Artic Tern",
    "141": "Black Tern",
    "142": "Caspian Tern",
    "143": "Common Tern",
    "144": "Elegant Tern",
    "145": "Forsters Tern",
    "146": "Least Tern",
    "147": "Green Tailed Towhee",
    "148": "Brown Thrasher",
    "149": "Sage Thrasher",
    "150": "Black Capped Vireo",
    "151": "Blue Headed Vireo",
    "152": "Philadelphia Vireo",
    "153": "Red Eyed Vireo",
    "154": "Warbling Vireo",
    "155": "White Eyed Vireo",
    "156": "Yellow Throated Vireo",
    "157": "Bay Breasted Warbler",
    "158": "Black And White Warbler",
    "159": "Black Throated Blue Warbler",
    "160": "Blue Winged Warbler",
    "161": "Canada Warbler",
    "162": "Cape May Warbler",
    "163": "Cerulean Warbler",
    "164": "Chestnut Sided Warbler",
    "165": "Golden Winged Warbler",
    "166": "Hooded Warbler",
    "167": "Kentucky Warbler",
    "168": "Magnolia Warbler",
    "169": "Mourning Warbler",
    "170": "Myrtle Warbler",
    "171": "Nashville Warbler",
    "172": "Orange Crowned Warbler",
    "173": "Palm Warbler",
    "174": "Pine Warbler",
    "175": "Prairie Warbler",
    "176": "Prothonotary Warbler",
    "177": "Swainson Warbler",
    "178": "Tennessee Warbler",
    "179": "Wilson Warbler",
    "180": "Worm Eating Warbler",
    "181": "Yellow Warbler",
    "182": "Northern Waterthrush",
    "183": "Louisiana Waterthrush",
    "184": "Bohemian Waxwing",
    "185": "Cedar Waxwing",
    "186": "American Three Toed Woodpecker",
    "187": "Pileated Woodpecker",
    "188": "Red Bellied Woodpecker",
    "189": "Red Cockaded Woodpecker",
    "190": "Red Headed Woodpecker",
    "191": "Downy Woodpecker",
    "192": "Bewick Wren",
    "193": "Cactus Wren",
    "194": "Carolina Wren",
    "195": "House Wren",
    "196": "Marsh Wren",
    "197": "Rock Wren",
    "198": "Winter Wren",
    "199": "Common Yellowthroat"
  };

  return idToLabel[id];
}
