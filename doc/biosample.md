# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```

### id

The local-unique identifier of this biosample (referenced as "biosample_id").

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```
" : "AM_BS__NCBISKYCGH-1993"
```

### individual_id

In a complete data model "individual_id" represents the identifier of this biosample in the "individuals" collection.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```

### id

The local-unique identifier of this biosample (referenced as "biosample_id").

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```
" : "AM_BS__NCBISKYCGH-1993"
```
" : "ind-cnhl-1293347-004"
```

### info

This is a wrapper for objects without further specification in the schema.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```

### id

The local-unique identifier of this biosample (referenced as "biosample_id").

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```
" : "AM_BS__NCBISKYCGH-1993"
```

### individual_id

In a complete data model "individual_id" represents the identifier of this biosample in the "individuals" collection.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```

### id

The local-unique identifier of this biosample (referenced as "biosample_id").

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```
" : "AM_BS__NCBISKYCGH-1993"
```
" : "ind-cnhl-1293347-004"
```
" : {
  'death' : {
               'value' : 1,
               'type' : 'boolean'
             },
  'followup_time' : {
                       'type' : 'ISO8601 string',
                       'value' : 'P14M'
                     }
}
```

#### Queries:
This query retrieves biosamples with an ISO8601 period value for "followup_time" and a boolean "true" for death.

```
db.biosamples.find( {"info" : { $elemMatch: { "followup_time.value" : { $regex : /\P/ }, "death.value" : true } } } )
```

### updated

time of the last edit of this record, in ISO8601

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```

### id

The local-unique identifier of this biosample (referenced as "biosample_id").

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```
" : "AM_BS__NCBISKYCGH-1993"
```

### individual_id

In a complete data model "individual_id" represents the identifier of this biosample in the "individuals" collection.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```

### id

The local-unique identifier of this biosample (referenced as "biosample_id").

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```
" : "AM_BS__NCBISKYCGH-1993"
```
" : "ind-cnhl-1293347-004"
```

### info

This is a wrapper for objects without further specification in the schema.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```

### id

The local-unique identifier of this biosample (referenced as "biosample_id").

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```
" : "AM_BS__NCBISKYCGH-1993"
```

### individual_id

In a complete data model "individual_id" represents the identifier of this biosample in the "individuals" collection.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```

### id

The local-unique identifier of this biosample (referenced as "biosample_id").

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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

### geo_provenance

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```

### external_ids

list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```

### description

A free text description of the biosample.

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```

### biocharacteristics

"biocharacteristics" represents a wrapper list of "biocharacteristic_class" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.


#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```

### age_at_collection_class

the age of the individual at time of biosample collection, as ontology object

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample

### age_at_collection

the age of the individual at time of biosample collection, as ISO8601 string

#### Example

```
"# biosample  

In this schema, a "biosample" as the source of the material of a molecular analysis (e.g. genomic array, sequencing), represents the main “biological item” against which molecular variants are referenced.


## Biosample
" : "P56Y"
```
" : {
  'label' : 'Juvenile onset',
  'id' : 'HP:0003621'
}
```
" : [
  {
    'description' : 'Pancreatic Adenocarcinoma',
    'class' : {
                 'id' : 'pgx:icdot:c25.9',
                 'label' : 'Pancreas, NOS'
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
db.biosamples.find( { "biocharacteristics.class.id" : "pgx:icdom:81403" } )
```

This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /ncit/ } } )
```
" : "Burkitt lymphoma, cell line Namalwa"
```
" : [
  {
    'relation' : 'provenance',
    'id' : 'cellosaurus:CVCL_0312'
  },
  {
    'id' : 'pubmed:17440070',
    'relation' : 'report'
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
" : {
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'altitude' : 94,
  'longitude' : 21.23,
  'latitude' : 45.75,
  'city' : 'Timisoara',
  'country' : 'Romania'
}
```
" : "AM_BS__NCBISKYCGH-1993"
```
" : "ind-cnhl-1293347-004"
```
" : {
  'death' : {
               'value' : 1,
               'type' : 'boolean'
             },
  'followup_time' : {
                       'type' : 'ISO8601 string',
                       'value' : 'P14M'
                     }
}
```

#### Queries:
This query retrieves biosamples with an ISO8601 period value for "followup_time" and a boolean "true" for death.

```
db.biosamples.find( {"info" : { $elemMatch: { "followup_time.value" : { $regex : /\P/ }, "death.value" : true } } } )
```
" : "2017-10-25T07:06:03Z"
```
