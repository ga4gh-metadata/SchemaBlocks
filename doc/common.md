# common  

This file is used for the definition of some prototype objects which are re-used in other schema documents.


## biocharacteristic_class



### description

a free-text description of this biocharacteristic

#### Type

string

#### Example

```
"description" : "Invasive ductal breast carcinoma, metastasized"
```

### class

an ontology_class object

#### Type

ontology_class

#### Example

```
"class" : {
  'label' : 'Pancreatic Adenocarcinoma',
  'id' : 'ncit:c8294'
}
```

### negated

flag for negating this biocharacteristic_class object; a "false" is assumed as default and does not have to be stated

#### Type

boolean

#### Example

```
"negated" : "true"
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
"label" : "Str Marasesti 5, 300077 Timisoara, Romania"
```

### city



#### Type

string

#### Example

```
"city" : "Timisoara"
```

### country



#### Type

string

#### Example

```
"country" : "Romania"
```

### latitude

signed decimal degrees (North, relative to Equator)

#### Type

double

#### Example

```
"latitude" : 47.37
```

### longitude

signed decimal degrees (East, relative to IERS Reference Meridian)

#### Type

double

#### Example

```
"longitude" : 8.54
```

### altitude

height in meters above the WGS 84 reference ellipsoid; otional

#### Type

double

#### Example

```
"altitude" : 8848
```


## info_class


## property

The "property" label stands for the attribute name.

### description

an optional free-text annotation about the object

#### Type

string

#### Example

```
"description" : "The base length of the called segment."
```

### type

type of the value; optional

#### Type

string

#### Example

```
"type" : "int64"
```

### value

the value in a format correstponding to type

#### Type



#### Example

```
"value" : 1503320
```


## ontology_class



### id

properly prefixed CURIE of the ontology term

#### Type

string

#### Example

```
"id" : "ncit:C8294"
```

### label

the text label associated with the term

#### Type

string

#### Example

```
"label" : "Pancreatic Adenocarcinoma"
```


## reference_class



### id

properly prefixed CURIE of the external reference

#### Type

string

#### Example

```
"id" : "pubmed:17440070"
```

### relation

the relation of the external reference to the object it was pointed from

#### Type

string

#### Example

```
"relation" : "denotes"
```
