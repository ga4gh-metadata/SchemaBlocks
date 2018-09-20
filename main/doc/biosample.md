# GA4GH __biosample__

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


The schema definitions are done in the [YAML file](../yaml/biosample.yaml).

## Biosample

<h3>Properties of the <i>Biosample</i> class</h3>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>

  <tr>
    <td>age_at_collection</td>
    <td></td>
    <td></td>
    <td>The age of the individual at time of biosample collection, as Age_class object.
</td>
  </tr>

  <tr>
    <td>biocharacteristics</td>
    <td>array</td>
    <td></td>
    <td>"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.
</td>
  </tr>

  <tr>
    <td>created</td>
    <td>string</td>
    <td></td>
    <td>The creation time of this record, in ISO8601
</td>
  </tr>

  <tr>
    <td>data_use_conditions</td>
    <td></td>
    <td></td>
    <td>Data use conditions applying to data from this biosample, as ontology object (e.g. DUO).
</td>
  </tr>

  <tr>
    <td>description</td>
    <td>string</td>
    <td></td>
    <td>A free text description of the biosample.</td>
  </tr>

  <tr>
    <td>external_ids</td>
    <td>array</td>
    <td></td>
    <td>list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship</td>
  </tr>

  <tr>
    <td>geo_provenance</td>
    <td></td>
    <td></td>
    <td>This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.
</td>
  </tr>

  <tr>
    <td>id</td>
    <td>string</td>
    <td></td>
    <td>The local-unique identifier of this biosample (referenced as "biosample_id").</td>
  </tr>

  <tr>
    <td>individual_id</td>
    <td>string</td>
    <td></td>
    <td>In a complete data model "individual_id" points to the "id" of the individual ("donor") this <i>biosample</i> was derived from.
In a local context this could be the <code>id</code> attribute in a corresponding "individuals" collection.
</td>
  </tr>

  <tr>
    <td>info</td>
    <td></td>
    <td></td>
    <td>This is a wrapper for objects without further specification in the schema.
</td>
  </tr>

  <tr>
    <td>name</td>
    <td>string</td>
    <td></td>
    <td>A short descriptive name for sample which should be sufficient to distinguish it from other samples in the project or collection.
</td>
  </tr>

  <tr>
    <td>project_id</td>
    <td>string</td>
    <td></td>
    <td>The id attribute of the project that this biosample was collected in.
</td>
  </tr>

  <tr>
    <td>updated</td>
    <td>string</td>
    <td></td>
    <td>The time of the last edit of this record, in ISO8601
</td>
  </tr>
</table>

<h3>Extended notes and examples on the <i>Biosample</i> properties</h3>


--------------------------------------------------------------------------------
### age_at_collection

The age of the individual at time of biosample collection, as Age_class object.


#### Example

```
'age_at_collection' : {
  'age_class' : {
                   'label' : 'Juvenile onset',
                   'id' : 'HP:0003621'
                 },
  'age' : 'P56Y'
}
```

--------------------------------------------------------------------------------
### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
'biocharacteristics' : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'label' : 'Pancreas, NOS',
                 'id' : 'pgx:icdot:c25.9'
               }
  },
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'label' : 'Adenocarcinoma, NOS',
                 'id' : 'pgx:icdom:81403'
               }
  },
  {
    'class' : {
                 'label' : 'Pancreatic Adenocarcinoma',
                 'id' : 'ncit:c8294'
               },
    'description' : 'Pancreatic Adenocarcinoma'
  }
]
```

#### Queries:
The query will return all biosamples with an (exact) class.id of "pgx:icdom:81403" in their "biocharacteristics" object list.

```
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```


This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```


--------------------------------------------------------------------------------
### created

The creation time of this record, in ISO8601


#### Example

```
'created' : "2017-10-25T07:06:03Z"
```

--------------------------------------------------------------------------------
### data_use_conditions

Data use conditions applying to data from this biosample, as ontology object (e.g. DUO).


#### Example

```
'data_use_conditions' : {
  'label' : 'no restriction',
  'id' : 'DUO:0000004'
}
```

--------------------------------------------------------------------------------
### description

A free text description of the biosample.

#### Example

```
'description' : "Burkitt lymphoma, cell line Namalwa"
```

--------------------------------------------------------------------------------
### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
'external_ids' : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'relation' : 'report',
    'id' : 'pubmed:17440070'
  },
  {
    'relation' : 'technology',
    'id' : 'geo:GPL4894'
  },
  {
    'relation' : 'denotes',
    'id' : 'geo:GSM185088'
  }
]
```

#### Queries:
the query will return all biosamples reported in this publication
```
db.biosamples.find( { "external_ids.id" : "pubmed:17440070" } )
```


--------------------------------------------------------------------------------
### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
'geo_provenance' : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'country' : 'Romania',
  'altitude' : 94,
  'latitude' : 45.75,
  'longitude' : 21.23,
  'city' : 'Timisoara'
}
```

--------------------------------------------------------------------------------
### id

The local-unique identifier of this biosample (referenced as "biosample_id").

#### Example

```
'id' : "AM_BS__NCBISKYCGH-1993"
```

--------------------------------------------------------------------------------
### individual_id

In a complete data model "individual_id" points to the "id" of the individual ("donor") this <i>biosample</i> was derived from.
In a local context this could be the <code>id</code> attribute in a corresponding "individuals" collection.


#### Example

```
'individual_id' : "ind-cnhl-1293347-004"
```

--------------------------------------------------------------------------------
### info

This is a wrapper for objects without further specification in the schema.


#### Example

```
'info' : {
  'followup_time' : {
                       'type' : 'ISO8601 string',
                       'value' : 'P14M'
                     },
  'death' : {
               'value' : 1,
               'type' : 'boolean'
             }
}
```

#### Queries:
This query retrieves biosamples with an ISO8601 period value for "followup_time" and a boolean "true" for death.

```
db.biosamples.find( {"info" : { $elemMatch: { "followup_time.value" : { $regex : /\P/ }, "death.value" : true } } } )
```


--------------------------------------------------------------------------------
### name

A short descriptive name for sample which should be sufficient to distinguish it from other samples in the project or collection.


#### Example

```
'name' : "Sample BRCA-00429, 2nd replicate"
```

--------------------------------------------------------------------------------
### project_id

The id attribute of the project that this biosample was collected in.


#### Example

```
'project_id' : "ind-cnhl-1293347-004"
```

--------------------------------------------------------------------------------
### updated

The time of the last edit of this record, in ISO8601


#### Example

```
'updated' : "2022-11-11T09:45:13Z"
```
