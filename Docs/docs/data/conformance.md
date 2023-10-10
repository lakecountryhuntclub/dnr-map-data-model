# Data Conformance

> **Purpose**: Conform and synthesize the data extracted from [FLIGHT]() application with the
> data downloaded from the [DNR Pheasant Stocking Property Listing]().

## Contents

<!-- TOC -->

- [Contents](#contents)
- [Discrepancies and Mitigations](#discrepancies-and-mitigations)
  - [Extensive WL Habitat](#extensive-wl-habitat)
  - [Glacial Habitat Restoration](#glacial-habitat-restoration)
  - [Lower Wisconsin State Riverway](#lower-wisconsin-state-riverway)
  - [Lower Wolf River Bottomlands Natural Resource Area](#lower-wolf-river-bottomlands-natural-resource-area)
  - [Scattered Wildlife](#scattered-wildlife)
  - [Statewide Habitat Areas](#statewide-habitat-areas)
  - [Statewide Wildlife Habitate](#statewide-wildlife-habitate)
  - [Stream Bank Protection Program](#stream-bank-protection-program)

<!-- /TOC -->

## Discrepancies and Mitigations

### Extensive WL Habitat

- **FFLIGHT** property "EXTENSIVE WL HABITAT" has three separate, distinct codes, which have now been mapped to
  individual properties per below:

| Code | FFLIGHT | Property |
| :--: | :-----: | :------: |
| 10145 | EXTENSIVE WL HABITAT | Oconomowoc Fish And Wildlife Habitat Area |
| 10049 | EXTENSIVE WL HABITAT | Bloomfield Wildlife Area - Brever And Litchfield Road |
| 10107 | EXTENSIVE WL HABITAT | Troy Wildlife Area - Lauderdale Hwy A |


### Glacial Habitat Restoration

- **FFLIGHT** property "GLACIAL HABITAT RESTORATION" uses a single code (7534) for all listings, however, the comments
  and stocking levels indicate three separate actual properties that are in turn converged into two used properties.

> Note: In FFLIGHT, "GLACIAL HABITAT RESTORATION" separates "Winnebago County" and "Fond du Lac" **GHRA** properties
> (300 and 1,200 acres, respectively), but in the DNR Property Data these are combined into a single property with
> 1,500 acres: "Glacial Habitat Restoration Area" in Winnebago County.


| Code | FFLIGHT                     | Property                                     | County    | Acres for Hunting | Stocking Levels | Max Birds per Stocking | Comments                                                     |
| ---- | --------------------------- | -------------------------------------------- | --------- | ----------------- | --------------- | ---------------------- | ------------------------------------------------------------ |
| 7534 | GLACIAL HABITAT RESTORATION | Glacial Habitat Restoration Area - Dodge     | Dodge     | 398               | 180             | 40                     | Dodge County GHRA properties- DeVries, Werth                 |
| 7534 | GLACIAL HABITAT RESTORATION | Glacial Habitat Restoration Area - Winnebago | Winnebago | 1500              | 770             | 180                    | Winnebago County-Warnke GHRA; Fond du Lac GHRA (Glacial Habitat  Restoration Area) properties: Spirit, Rens, Buwalda, and O'Leary. |


### Lower Wisconsin State Riverway

- **FFLIGHT** "LOWER WISCONSIN STATE RIVERWAY" Property has three separate codees which have now been mapped to
  individual properties per below:

> Notes:
>
> - In FFLIGHT, code 10389 has two separate properties with 120 and 200 acres respectively, these are labeled with
>   comments indicating "Winward Square Prairie" and "Wanek LWSR".
> - These are to be mapped to "Richwood Unit" in Richland County once merged into a single property with 320 acres.

| Code  | FFLIGHT                        | Property      | County   | Acres for Hunting | Stocking Levels | Max Birds per Stocking | Comments                                                     |
| ----- | ------------------------------ | ------------- | -------- | ----------------- | --------------- | ---------------------- | ------------------------------------------------------------ |
| 10310 | LOWER WISCONSIN STATE RIVERWAY | Boscobel Unit | Grant    | 1600              | 880             | 80                     |                                                              |
| 10389 | LOWER WISCONSIN STATE RIVERWAY | Richwood Unit | Richland | 320               | 220             | 60                     | Combining "Winward Square Prairie" (120 acres) and "Wanek  - LWSR" (200 acres) into Richwood Unit with 320 total acres. |
| 10305 | LOWER WISCONSIN STATE RIVERWAY | Avoca Unit    | Iowa     | 2000              | 1550            | 140                    | Avoca Rod & Gun Club stocks ~450 birds as part of the DOC program |

### Lower Wolf River Bottomlands Natural Resource Area

- **FFLIGHT** Property "Lower Wolf River Bottomlands Natural Resource Area" mapped to "Beilfuss Unit":

| Code  | FFLIGHT                                            | Property      | County  | Acres for Hunting | Stocking Levels | Max Birds per Stocking | Comments                                                     |
| ----- | -------------------------------------------------- | ------------- | ------- | ----------------- | --------------- | ---------------------- | ------------------------------------------------------------ |
| 11599 | Lower Wolf River Bottomlands Natural Resource Area | Beilfuss Unit | Shawano | 120               | 20              | 20                     | Mapped "Lower Wolf River Bottomlands Natural Resource Area" to  "Beilfuss Unit" |


### Scattered Wildlife

In FFLIGHT, the "SCATTERED WILDLIFE" Property has two separate codes: 10243 and 10102 deemed to be
"Hallie Marsh Wildlife Area" and "Northfield Fishery Area", respectively.

> Question: *Hallie Marsh Wildlife Area is missing acres?*

| Code  | FFLIGHT            | Property                   | County   | Acres for Hunting | Stocking Levels | Max Birds per Stocking | Comments                                         |
| ----- | ------------------ | -------------------------- | -------- | ----------------- | --------------- | ---------------------- | ------------------------------------------------ |
| 10243 | SCATTERED WILDLIFE | Hallie Marsh Wildlife Area | Chippewa |                   | 280             | 60                     | Missing Acres; Split out from SCATTERED WILDLIFE |
| 10102 | SCATTERED WILDLIFE | Northfield Fishery Area    | Jackson  | 475               | 220             | 60                     | Split out from SCATTERED WILDLIFE                |


### Statewide Habitat Areas

In FFLIGHT "STATEWIDE HABITAT AREAS" (10413) mapped to property "Hoosier Creek Habitat Area":

| Code  | FFLIGHT                 | Property                   | County | Acres for Hunting | Stocking Levels | Max Birds per Stocking | Comments                                                     |
| ----- | ----------------------- | -------------------------- | ------ | ----------------- | --------------- | ---------------------- | ------------------------------------------------------------ |
| 10413 | STATEWIDE HABITAT AREAS | Hoosier Creek Habitat Area | Racine | 115               | 100             | 20                     | Mapped "STATEWIDE HABITAT AREAS" to "Hoosier Creek Habitat  Area" |

### Statewide Wildlife Habitate

In FFLIGHT, "STATEWIDE WILDLIFE HABITAT" (10217 and 10301) properties are now mapped to DNR properties
"Brusky Wildlife Area" (10217) and "Statewide Wildlife Habitat - Dodge" (10301):

| Code  | FFLIGHT                    | Property                           | County   | Acres for Hunting | Stocking Levels | Max Birds per Stocking | Comments                                                     |
| ----- | -------------------------- | ---------------------------------- | -------- | ----------------- | --------------- | ---------------------- | ------------------------------------------------------------ |
| 10217 | STATEWIDE WILDLIFE HABITAT | Brusky Wildlife Area               | Kewaunee | 70                | 60              | 60                     | Stocked with birds from D.O.C. (Door County Fish Farm and Game Club);  Split out from "STATEWIDE WILDLIFE HABITAT" |
| 10301 | STATEWIDE WILDLIFE HABITAT | Statewide Wildlife Habitat - Dodge | Dodge    | 230               | 100             | 20                     | Sinissippi                                                   |

### Stream Bank Protection Program

In FFLIGHT, "Stream Bank Protection Program" (11423 and 11387) property is now mapped to
"Sand Creek Fishery Area-Monroe Co." and "Honey Creek Stream Bank Protection Area":

| Code  | FFLIGHT                            | Property                                | County   | Acres for Hunting | Stocking Levels | Max Birds per Stocking | Comments |
| ----- | ---------------------------------- | --------------------------------------- | -------- | ----------------- | --------------- | ---------------------- | -------- |
| 11423 | Stream Bank Protection Fee Program | Sand Creek Fishery Area-Monroe Co.      | Monroe   | 450               | 220             | 80                     |          |
| 11387 | Stream Bank Protection Fee Program | Honey Creek Stream Bank Protection Area | Walworth | 490               | 300             | 60                     |          |
