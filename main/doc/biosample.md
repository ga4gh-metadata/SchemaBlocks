# GA4GH __biosample__

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.
PXF:  See https://github.com/ga4gh-metadata/metadata-schemas/blob/d4ca1b4b36a5e7b3a17db79da9ae03a2114cfcaf/schemas/biometadata.proto#L84-L138 A Biosample refers to a unit of biological material from which the substrate molecules (e.g. genomic DNA, RNA, proteins) for molecular analyses (e.g. sequencing, array hybridisation, mass-spectrometry) are extracted. Examples would be a tissue biopsy, a single cell from a culture for single cell genome sequencing or a protein fraction from a gradient centrifugation. Several instances (e.g. technical replicates) or types of experiments (e.g. genomic array as well as RNA-seq experiments) may refer to the same Biosample. FHIR mapping: Specimen (http://www.hl7.org/fhir/specimen.html).


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
    <td>id</td>
    <td>string</td>
    <td></td>
    <td>The local-unique identifier of this biosample (referenced as "biosample_id"). This is unique in the context of the server instance.</td>
  </tr>

  <tr>
    <td>name</td>
    <td>string</td>
    <td></td>
    <td>A short descriptive name for sample which should be sufficient to distinguish it from other samples in the project or collection. This is a label or symbolic identifier for the biosample.
</td>
  </tr>

  <tr>
    <td>description</td>
    <td>string</td>
    <td></td>
    <td>A free text description of the biosample. This should not contain any structured data.</td>
  </tr>

  <tr>
    <td>data_use_conditions</td>
    <td></td>
    <td></td>
    <td>Data use conditions applying to data from this biosample, as ontology object (e.g. DUO).
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
    <td>individual_id</td>
    <td>string</td>
    <td></td>
    <td>In a complete data model "individual_id" points to the "id" of the individual ("donor") this <i>biosample</i> was derived from.
In a local context this could be the <code>id</code> attribute in a corresponding "individuals" collection.
</td>
  </tr>

  <tr>
    <td>external_references</td>
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
    <td>"biocharacteristics" represents a wrapper list of "Phenotype_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.
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
    <td>created</td>
    <td>timestamp</td>
    <td></td>
    <td>The creation time of this record, in ISO8601
</td>
  </tr>

  <tr>
    <td>updated</td>
    <td>timestamp</td>
    <td></td>
    <td>The time of the last edit of this record, in ISO8601
</td>
  </tr>
</table>

<h3>Extended notes and examples on the <i>Biosample</i> properties</h3>


--------------------------------------------------------------------------------
### id

The local-unique identifier of this biosample (referenced as "biosample_id"). This is unique in the context of the server instance.

#### Example

```
'id' : "AM_BS__NCBISKYCGH-1993"
```

--------------------------------------------------------------------------------
### name

A short descriptive name for sample which should be sufficient to distinguish it from other samples in the project or collection. This is a label or symbolic identifier for the biosample.


#### Example

```
'name' : "Sample BRCA-00429, 2nd replicate"
```

--------------------------------------------------------------------------------
### description

A free text description of the biosample. This should not contain any structured data.

#### Example

```
'description' : "Burkitt lymphoma, cell line Namalwa"
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
### project_id

The id attribute of the project that this biosample was collected in.


#### Example

```
'project_id' : "ind-cnhl-1293347-004"
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
### external_references

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
'external_references' : [
  {
    'type' : {
                'id' : 'cellosaurus:CVCL_0312',
                'label' : 'HOS'
              },
    'description' : 'Cellosaurus cell line identifier',
    'relation' : 'provenance'
  },
  {
    'relation' : 'report',
    'description' : 'PubMed reference',
    'type' : {
                'label' : 'Rearrangement of the p53 gene in human osteogenic sarcomas.',
                'id' : 'pubmed:2823272'
              }
  }
]
```

#### Queries:
The query will return all biosamples reported in this publication

```
db.biosamples.find( { "external_references.type.id" : "pubmed:17440070" } )
```


--------------------------------------------------------------------------------
### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
'geo_provenance' : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'latitude' : 45.75,
  'altitude' : 94,
  'longitude' : 21.23,
  'country' : 'Romania',
  'city' : 'Timisoara'
}
```

--------------------------------------------------------------------------------
### age_at_collection

The age of the individual at time of biosample collection, as Age_class object.


#### Example

```
'age_at_collection' : {
  'age' : 'P56Y',
  'age_class' : {
                   'label' : 'Juvenile onset',
                   'id' : 'HP:0003621'
                 }
}
```

--------------------------------------------------------------------------------
### biocharacteristics

"biocharacteristics" represents a wrapper list of "Phenotype_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
'biocharacteristics' : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'type' : {
                'id' : 'pgx:icdot:c25.9',
                'label' : 'Pancreas, NOS'
              }
  },
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'type' : {
                'label' : 'Adenocarcinoma, NOS',
                'id' : 'pgx:icdom:81403'
              }
  },
  {
    'type' : {
                'id' : 'ncit:c8294',
                'label' : 'Pancreatic Adenocarcinoma'
              },
    'description' : 'Pancreatic Adenocarcinoma'
  }
]
```

#### Queries:
The query will return all biosamples with an (exact) class.id of "pgx:icdom:81403" in their "biocharacteristics" object list.

```
db.biosamples.find( { "biocharacteristics.type.id" : "pgx:icdom:81403" } )
```


This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( "biocharacteristics.type.id", { "biocharacteristics.type.id" : { $regex : /ncit/ } } )
```


--------------------------------------------------------------------------------
### info

This is a wrapper for objects without further specification in the schema.


#### Example

```
'info' : {
  'followup_time' : 'P14M',
  'death' : 1
}
```

#### Queries:
This query retrieves biosamples with an ISO8601 period value for "followup_time" and a boolean "true" for death.

```
db.biosamples.find( {"info" : { $elemMatch: { "followup_time.value" : { $regex : /\P/ }, "death.value" : true } } } )
```


--------------------------------------------------------------------------------
### created

The creation time of this record, in ISO8601


#### Example

```
'created' : "2017-10-25T07:06:03Z"
```

--------------------------------------------------------------------------------
### updated

The time of the last edit of this record, in ISO8601


#### Example

```
'updated' : "2022-11-11T09:45:13Z"
```
