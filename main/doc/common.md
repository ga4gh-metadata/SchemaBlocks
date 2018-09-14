# GA4GH - common and shared object definitions
  

Definition of some prototype objects which are re-used in other schema documents.

## Biocharacteristic_class

<h3>Properties of the <i>Biocharacteristic_class</i> class</h3>

<table>
<tr>
  <th>Property</th>
  <th>Type</th>
  <th>Format</th>
  <th>Description</th>
</tr>

<tr>
  <td>class</td>
  <td></td>
  <td></td>
  <td>an ontology_class object</td>
</tr>

<tr>
  <td>description</td>
  <td>string</td>
  <td></td>
  <td>a free-text description of this biocharacteristic</td>
</tr>

<tr>
  <td>negated</td>
  <td>boolean</td>
  <td></td>
  <td>flag for negating this biocharacteristic_class object; a "false" is assumed as default and does not have to be stated</td>
</tr>
</table>

<h3>Extended notes and examples on the <i>Biocharacteristic_class</i> properties</h3>


--------------------------------------------------------------------------------
### class

an ontology_class object

#### Example

```
'class' : {
  'label' : 'Pancreatic Adenocarcinoma',
  'id' : 'ncit:c8294'
}
```

--------------------------------------------------------------------------------
### description

a free-text description of this biocharacteristic

#### Example

```
'description' : "Invasive ductal breast carcinoma, metastasized"
```

--------------------------------------------------------------------------------
### negated

flag for negating this biocharacteristic_class object; a "false" is assumed as default and does not have to be stated

#### Example

```
'negated' : "true"
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
  <td>id</td>
  <td>string</td>
  <td></td>
  <td>properly prefixed CURIE of the external reference</td>
</tr>

<tr>
  <td>relation</td>
  <td>string</td>
  <td></td>
  <td>the relation of the external reference to the object it was pointed from</td>
</tr>
</table>

<h3>Extended notes and examples on the <i>Reference_class</i> properties</h3>


--------------------------------------------------------------------------------
### id

properly prefixed CURIE of the external reference

#### Example

```
'id' : "pubmed:17440070"
```

--------------------------------------------------------------------------------
### relation

the relation of the external reference to the object it was pointed from

#### Example

```
'relation' : "denotes"
```
