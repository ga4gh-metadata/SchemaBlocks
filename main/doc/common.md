# GA4GH SchemaBlocks - common and shared object definitions


Definition of some prototype objects which are re-used in other schema documents.


The schema definitions are done in the [YAML file](../yaml/common.yaml).

## Age_class

<h3>Properties of the <i>Age_class</i> class</h3>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>

  <tr>
    <td>age</td>
    <td>string</td>
    <td></td>
    <td>The age as ISO8601 string.</td>
  </tr>

  <tr>
    <td>age_at_collection_class</td>
    <td></td>
    <td></td>
    <td>The of the object (e.g. individual at tome of a biosample collection), as Ontology_class. object
</td>
  </tr>
</table>

<h3>Extended notes and examples on the <i>Age_class</i> properties</h3>


--------------------------------------------------------------------------------
### age

The age as ISO8601 string.

#### Example

```
'age' : "P56Y"
```

--------------------------------------------------------------------------------
### age_at_collection_class

The of the object (e.g. individual at tome of a biosample collection), as Ontology_class. object


#### Example

```
'age_at_collection_class' : {
  'id' : 'HP:0003621',
  'label' : 'Juvenile onset'
}
```
## Geo_class

<h3>Properties of the <i>Geo_class</i> class</h3>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>

  <tr>
    <td>altitude</td>
    <td>number</td>
    <td>float</td>
    <td>height in meters above the WGS 84 reference ellipsoid; otional</td>
  </tr>

  <tr>
    <td>city</td>
    <td>string</td>
    <td></td>
    <td></td>
  </tr>

  <tr>
    <td>country</td>
    <td>string</td>
    <td></td>
    <td></td>
  </tr>

  <tr>
    <td>label</td>
    <td>string</td>
    <td></td>
    <td>A text representation, preferably using standard geographic identification elements, of the corresponding latitude,longitude(,altitude). This representation serves the purposes to
  - capture standard data entry parameters
  - provide a sanity check for latitude,longitude values
</td>
  </tr>

  <tr>
    <td>latitude</td>
    <td>number</td>
    <td></td>
    <td>signed decimal degrees (North, relative to Equator)</td>
  </tr>

  <tr>
    <td>longitude</td>
    <td>number</td>
    <td>float</td>
    <td>signed decimal degrees (East, relative to IERS Reference Meridian)</td>
  </tr>
</table>

<h3>Extended notes and examples on the <i>Geo_class</i> properties</h3>


--------------------------------------------------------------------------------
### altitude

height in meters above the WGS 84 reference ellipsoid; otional

#### Example

```
'altitude' : 8848
```

--------------------------------------------------------------------------------
### city



#### Example

```
'city' : "Timisoara"
```

--------------------------------------------------------------------------------
### country



#### Example

```
'country' : "Romania"
```

--------------------------------------------------------------------------------
### label

A text representation, preferably using standard geographic identification elements, of the corresponding latitude,longitude(,altitude). This representation serves the purposes to
  - capture standard data entry parameters
  - provide a sanity check for latitude,longitude values


#### Example

```
'label' : "Str Marasesti 5, 300077 Timisoara, Romania"
```

--------------------------------------------------------------------------------
### latitude

signed decimal degrees (North, relative to Equator)

#### Example

```
'latitude' : 47.37
```

--------------------------------------------------------------------------------
### longitude

signed decimal degrees (East, relative to IERS Reference Meridian)

#### Example

```
'longitude' : 8.54
```
## Info_class

<h3>Properties of the <i>Info_class</i> class</h3>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>

  <tr>
    <td>description</td>
    <td>string</td>
    <td></td>
    <td>an optional free-text annotation about the object</td>
  </tr>

  <tr>
    <td>format</td>
    <td>string</td>
    <td></td>
    <td>format of the value; optional</td>
  </tr>

  <tr>
    <td>type</td>
    <td>string</td>
    <td></td>
    <td>type of the value; optional</td>
  </tr>

  <tr>
    <td>value</td>
    <td></td>
    <td></td>
    <td>the value in a format correstponding to type</td>
  </tr>
</table>

<h3>Extended notes and examples on the <i>Info_class</i> properties</h3>


--------------------------------------------------------------------------------
### description

an optional free-text annotation about the object

#### Example

```
'description' : "The base length of the called segment."
```

--------------------------------------------------------------------------------
### format

format of the value; optional

#### Example

```
'format' : "int64"
```

--------------------------------------------------------------------------------
### type

type of the value; optional

#### Example

```
'type' : "number"
```

--------------------------------------------------------------------------------
### value

the value in a format correstponding to type

#### Example

```
'value' : 1503320
```
## Ontology_class

<h3>Properties of the <i>Ontology_class</i> class</h3>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>

  <tr>
    <td>id</td>
    <td>string</td>
    <td></td>
    <td>properly prefixed CURIE of the ontology term</td>
  </tr>

  <tr>
    <td>label</td>
    <td>string</td>
    <td></td>
    <td>the text label associated with the term</td>
  </tr>
</table>

<h3>Extended notes and examples on the <i>Ontology_class</i> properties</h3>


--------------------------------------------------------------------------------
### id

properly prefixed CURIE of the ontology term

#### Example

```
'id' : "ncit:C8294"
```

--------------------------------------------------------------------------------
### label

the text label associated with the term

#### Example

```
'label' : "Pancreatic Adenocarcinoma"
```
## Phenotype_class

<h3>Properties of the <i>Phenotype_class</i> class</h3>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>

  <tr>
    <td>description</td>
    <td>string</td>
    <td></td>
    <td></td>
  </tr>

  <tr>
    <td>type</td>
    <td></td>
    <td></td>
    <td>the ontology term as Ontology_class</td>
  </tr>

  <tr>
    <td>negated</td>
    <td>boolean</td>
    <td></td>
    <td>Flag to indicate whether the phenotype was observed or not. Default is 'false', in other words the phenotype was observed. It is only required in cases to indicate that the phenotype was looked for, but __not__ observed.
</td>
  </tr>

  <tr>
    <td>severity</td>
    <td></td>
    <td></td>
    <td>Severity of the condition e.g. subclasses of HP:0012824-Severity or SNOMED:272141005-Severities.
FHIR mapping: Condition.severity
</td>
  </tr>

  <tr>
    <td>evidence</td>
    <td>array</td>
    <td></td>
    <td></td>
  </tr>

  <tr>
    <td>example</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>

<h3>Extended notes and examples on the <i>Phenotype_class</i> properties</h3>


--------------------------------------------------------------------------------
### description



#### Example

```
'description' : ""
```

--------------------------------------------------------------------------------
### type

the ontology term as Ontology_class

#### Example

```
'type' : "undef"
```

--------------------------------------------------------------------------------
### negated

Flag to indicate whether the phenotype was observed or not. Default is 'false', in other words the phenotype was observed. It is only required in cases to indicate that the phenotype was looked for, but __not__ observed.


#### Example

```
'negated' : ""
```

--------------------------------------------------------------------------------
### severity

Severity of the condition e.g. subclasses of HP:0012824-Severity or SNOMED:272141005-Severities.
FHIR mapping: Condition.severity


#### Example

```
'severity' : {
  'id' : '',
  'label' : ''
}
```

--------------------------------------------------------------------------------
### evidence



#### Example

```
'evidence' : [
  {
    'id' : '',
    'label' : ''
  }
]
```

--------------------------------------------------------------------------------
### example



#### Example

```
'example' : "undef"
```
## Reference_class

<h3>Properties of the <i>Reference_class</i> class</h3>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>

  <tr>
    <td>description</td>
    <td>string</td>
    <td></td>
    <td></td>
  </tr>

  <tr>
    <td>relation</td>
    <td>string</td>
    <td></td>
    <td>the relation of the external reference to the object it was pointed from</td>
  </tr>

  <tr>
    <td>type</td>
    <td></td>
    <td></td>
    <td>A properly prefixed CURIE of the external reference and an associated label, represented as Ontology_class object.
</td>
  </tr>
</table>

<h3>Extended notes and examples on the <i>Reference_class</i> properties</h3>


--------------------------------------------------------------------------------
### description



#### Example

```
'description' : ""
```

--------------------------------------------------------------------------------
### relation

the relation of the external reference to the object it was pointed from

#### Example

```
'relation' : "denotes"
```

--------------------------------------------------------------------------------
### type

A properly prefixed CURIE of the external reference and an associated label, represented as Ontology_class object.


#### Example

```
'type' : {
  'label' : 'arrayMap 2014 ',
  'id' : 'pubmed:25428357'
}
```
