# GA4GH - common and shared object definitions
  

Definition of some prototype objects which are re-used in other schema documents.


## Biocharacteristic_class

### class

an ontology_class object

#### Example

```
"class" : {
  'id' : 'ncit:c8294',
  'label' : 'Pancreatic Adenocarcinoma'
}
```

### description

a free-text description of this biocharacteristic

#### Example

```
"description" : "Invasive ductal breast carcinoma, metastasized"
```

### negated

flag for negating this biocharacteristic_class object; a "false" is assumed as default and does not have to be stated

#### Example

```
"negated" : "true"
```

## Geo_class

### altitude

height in meters above the WGS 84 reference ellipsoid; otional

#### Example

```
"altitude" : 8848
```

### city



#### Example

```
"city" : "Timisoara"
```

### country



#### Example

```
"country" : "Romania"
```

### label

A text representation, preferably using standard geographic identification elements, of the corresponding latitude,longitude(,altitude). This representation serves the purposes to
  - capture standard data entry parameters
  - provide a sanity check for latitude,longitude values


#### Example

```
"label" : "Str Marasesti 5, 300077 Timisoara, Romania"
```

### latitude

signed decimal degrees (North, relative to Equator)

#### Example

```
"latitude" : 47.37
```

### longitude

signed decimal degrees (East, relative to IERS Reference Meridian)

#### Example

```
"longitude" : 8.54
```

## Info_class

### description

an optional free-text annotation about the object

#### Example

```
"description" : "The base length of the called segment."
```

### format

format of the value; optional

#### Example

```
"format" : "int64"
```

### type

type of the value; optional

#### Example

```
"type" : "number"
```

### value

the value in a format correstponding to type

#### Example

```
"value" : 1503320
```

## Ontology_class

### id

properly prefixed CURIE of the ontology term

#### Example

```
"id" : "ncit:C8294"
```

### label

the text label associated with the term

#### Example

```
"label" : "Pancreatic Adenocarcinoma"
```

## Reference_class

### id

properly prefixed CURIE of the external reference

#### Example

```
"id" : "pubmed:17440070"
```

### relation

the relation of the external reference to the object it was pointed from

#### Example

```
"relation" : "denotes"
```
