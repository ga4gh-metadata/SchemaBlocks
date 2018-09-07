# individual  



## _id

the database-internal object id

#### Example

'' : `ObjectId("558e5c56ad9a82d958392bd6")
`

## biocharacteristics

list of biocharacteristic_class objects with properly prefixed term ids, describing features of the individual which are not specific to the reported biosample(s); typical examples here are sex, species and "systemic" phenotypes and diseases

#### Example

'' : ```
[
  {
    'description' => 'girl',
    'class' => {
                 'id' => 'PATO:0020000',
                 'label' => 'female genetic sex'
               }
  },
  {
    'description' => 'Jean-Luc Picard',
    'class' => {
                 'id' => 'NCBITaxon:9606',
                 'label' => 'Homo sapiens'
               }
  },
  {
    'description' => 'Patient with Down syndrome',
    'class' => {
                 'label' => 'Genetic anticipation',
                 'id' => 'HP:0003745'
               }
  }
]

```

#### Queries:
the query will return all individuals who have been properly labeled as human
```
db.individual.find( { "biocharacteristics.class.id" : "NCBITaxon:9606" } )
```

this call to the distinct funcion will return *all* HPO annotated classes
```
db.biosamples.distinct( { "biocharacteristics.class.id", "biocharacteristics.class.id" : { $regex : /HP\:/i } } )
```

## description

A free text description of the individual.

#### Example

'' : `patient with lung cancer, male smoker
`

## geo_provenance

This geo_class attribute ideally describes the geographic location of where this individual originates from.
This value may reflect either the place of burth or residence, but frequently may correspond to the place the study was performed.


#### Example

'' : ```
[
  {
    'latitude' => '45.75',
    'city' => 'Timisoara',
    'country' => 'Romania',
    'label' => 'Str Marasesti 5, 300077 Timisoara, Romania',
    'longitude' => '21.23'
  }
]

```

## id

The local-unique identifier of this individual (referenced as "individual_id").

#### Example

'' : `AM_BS__NCBISKYCGH-1993
`

## updated

time of the last edit of this record, in ISO8601

#### Example

'' : `2017-10-25T07:06:03Z
`

