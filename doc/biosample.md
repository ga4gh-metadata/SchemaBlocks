# biosample

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.

## _id

the database-internal object id

#### Example

```
"_id" : "ObjectId("558e5c56ad9a82d958392bd6")"
```

## age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"age_at_collection" : "P56Y"
```

## age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"age_at_collection_class" : {
  'id' => 'HP:0003621',
  'label' => 'Juvenile onset'
}
```

## biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.

#### Example

```
"biocharacteristics" : [
  {
    'class' => {
                 'label' => 'Pancreas, NOS',
                 'id' => 'pgx:icdot:c25.9'
               },
    'description' => 'Pancreatic Adenocarcinoma'
  },
  {
    'description' => 'Pancreatic Adenocarcinoma',
    'class' => {
                 'id' => 'pgx:icdom:81403',
                 'label' => 'Adenocarcinoma, NOS'
               }
  },
  {
    'class' => {
                 'label' => 'Pancreatic Adenocarcinoma',
                 'id' => 'ncit:c8294'
               },
    'description' => 'Pancreatic Adenocarcinoma'
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

## description

A free text description of the biosample.

#### Example

```
"description" : "Burkitt lymphoma, cell line Namalwa"
```

## external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"external_ids" : [
  {
    'id' => 'cellosaurus:CVCL_0312',
    'relation' => 'provenance'
  },
  {
    'id' => 'pubmed:17440070',
    'relation' => 'report'
  },
  {
    'relation' => 'technology',
    'id' => 'geo:GPL4894'
  },
  {
    'id' => 'geo:GSM185088',
    'relation' => 'denotes'
  }
]
```

#### Queries:
the query will return all biosamples reported in this publication
```
db.biosamples.find( { "external_ids.id" : "pubmed:17440070" } )
```

## geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"geo_provenance" : {
  'city' => 'Timisoara',
  'country' => 'Romania',
  'latitude' => '45.75',
  'label' => 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' => 94,
  'longitude' => '21.23'
}
```

## id

The local-unique identifier of this biosample (referenced as "biosample_id").

#### Example

```
"id" : "AM_BS__NCBISKYCGH-1993"
```

## individual_id

In a complete data model "individual_id" represents the identifier of this biosample in the "individuals" collection.


#### Example

```
"individual_id" : "ind-cnhl-1293347-004"
```

## info

This is a list for objects without further specification in the schema.


#### Example

```
"info" : [
  {
    'value' => 'P14M',
    'type' => 'ISO8601 string',
    'name' => 'followup_time'
  },
  {
    'name' => 'death',
    'value' => 1,
    'type' => 'boolean'
  }
]
```

#### Queries:
This query retrieves biosamples with an ISO8601 period value for "followup_time" and a boolean "true" for death.

```
db.biosamples.find( {"info" : { $elemMatch: { $elemMatch: { "name" : "followup_time", "value" : { $regex : /\P/ } }, $elemMatch: { "name" : "death", "value" : true } } } } )
```

## updated

time of the last edit of this record, in ISO8601

#### Example

```
"updated" : "2017-10-25T07:06:03Z"
```
