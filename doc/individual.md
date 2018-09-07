
### _id

the database-internal object id

* example: `ObjectId("558e5c56ad9a82d958392bd6")
`

### biocharacteristics

list of biocharacteristic_class objects with properly prefixed term ids, describing features of the individual which are not specific to the reported biosample(s); typical examples here are sex, species and "systemic" phenotypes and diseases

* example: 
```
[
  {
    'description' => 'girl',
    'class' => {
                 'label' => 'female genetic sex',
                 'id' => 'PATO:0020000'
               }
  },
  {
    'class' => {
                 'id' => 'NCBITaxon:9606',
                 'label' => 'Homo sapiens'
               },
    'description' => 'Jean-Luc Picard'
  },
  {
    'class' => {
                 'label' => 'Genetic anticipation',
                 'id' => 'HP:0003745'
               },
    'description' => 'Patient with Down syndrome'
  }
]

```

### description

A free text description of the individual.

* example: `patient with lung cancer, male smoker
`

### geo_provenance

This geo_class attribute ideally describes the geographic location of where this individual originates from.
This value may reflect either the place of burth or residence, but frequently may correspond to the place the study was performed.


* example: 
```
[
  {
    'longitude' => '21.23',
    'latitude' => '45.75',
    'label' => 'Str Marasesti 5, 300077 Timisoara, Romania',
    'city' => 'Timisoara',
    'country' => 'Romania'
  }
]

```

### id

The local-unique identifier of this individual (referenced as "individual_id").

* example: `AM_BS__NCBISKYCGH-1993
`

### updated

time of the last edit of this record, in ISO8601

* example: `2017-10-25T07:06:03Z
`

