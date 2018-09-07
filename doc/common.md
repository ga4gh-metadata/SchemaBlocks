
## biocharacteristic_class



### description

a free-text description of this biocharacteristic

#### Type

string

#### Example

```
Invasive ductal breast carcinoma, metastasized
```
   
### class

an ontology_class object

#### Type

ontology_class

#### Example

```
HASH(0x7fa9a294c5e0)
```
   
### negated

flag for negating this biocharacteristic_class object; a "false" is assumed as default and does not have to be stated

#### Type

boolean

#### Example

```
true
```
   

## geo_class



### label

A text representation, preferably using standard geographic identification elements, of the corresponding latitude,longitude(,altitude). This representation serves the purposes to
  - capture standard data entry parameters
  - provide a sanity check for latitude,longitude values


#### Type

string

#### Example

```
Str Marasesti 5, 300077 Timisoara, Romania
```
   
### city



#### Type

string

#### Example

```
Timisoara
```
   
### country



#### Type

string

#### Example

```
Romania
```
   
### latitude

signed decimal degrees (North, relative to Equator)

#### Type

double

#### Example

```
47.37
```
   
### longitude

signed decimal degrees (East, relative to IERS Reference Meridian)

#### Type

double

#### Example

```
8.54
```
   
### altitude

height in meters above the WGS 84 reference ellipsoid; otional

#### Type

double

#### Example

```
8848
```
   

## info_class



### name

the attribute / key

#### Type

string

#### Example

```
cnv_length
```
   
### type

type of the value; optional

#### Type

string

#### Example

```
int64
```
   
### value

the value in a format correstponding to type

#### Type



#### Example

```
1503320
```
   

## ontology_class



### id

properly prefixed CURIE of the ontology term

#### Type

string

#### Example

```
ncit:C8294
```
   
### label

the text label associated with the term

#### Type

string

#### Example

```
Pancreatic Adenocarcinoma
```
   

## reference_class



### id

properly prefixed CURIE of the external reference

#### Type

string

#### Example

```
pubmed:17440070
```
   
### relation

the relation of the external reference to the object it was pointed from

#### Type

string

#### Example

```
denotes
```
   

