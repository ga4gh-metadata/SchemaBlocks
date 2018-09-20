# GA4GH __individual__


An individual is a single organism (here typically a human).


The schema definitions are done in the [YAML file](../yaml/individual.yaml).

## Individual

<h3>Properties of the <i>Individual</i> class</h3>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>

  <tr>
    <td>biocharacteristics</td>
    <td>array</td>
    <td></td>
    <td>list of biocharacteristic_class objects with properly prefixed term ids, describing features of the individual which are not specific to the reported biosample(s); typical examples here are sex, species and "systemic" phenotypes and diseases
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
    <td>Data use conditions applying to data from this individual, as ontology object (e.g. DUO).
</td>
  </tr>

  <tr>
    <td>description</td>
    <td>string</td>
    <td></td>
    <td>A free text description of the individual.</td>
  </tr>

  <tr>
    <td>geo_provenance</td>
    <td></td>
    <td></td>
    <td>This geo_class attribute ideally describes the geographic location of where this individual originates from.
This value may reflect either the place of burth or residence, but frequently may correspond to the place the study was performed.
</td>
  </tr>

  <tr>
    <td>id</td>
    <td>string</td>
    <td></td>
    <td>The local-unique identifier of this individual (referenced as "individual_id").</td>
  </tr>

  <tr>
    <td>info</td>
    <td></td>
    <td></td>
    <td>additional variant information, as defined in the example and accompanying documentation</td>
  </tr>

  <tr>
    <td>updated</td>
    <td>string</td>
    <td></td>
    <td>The time of the last edit of this record, in ISO8601
</td>
  </tr>
</table>

<h3>Extended notes and examples on the <i>Individual</i> properties</h3>


--------------------------------------------------------------------------------
### biocharacteristics

list of biocharacteristic_class objects with properly prefixed term ids, describing features of the individual which are not specific to the reported biosample(s); typical examples here are sex, species and "systemic" phenotypes and diseases


#### Example

```
'biocharacteristics' : [
  {
    'description' : 'girl',
    'class' : {
                 'label' : 'female genetic sex',
                 'id' : 'PATO:0020000'
               }
  },
  {
    'description' : 'Jean-Luc Picard',
    'class' : {
                 'id' : 'NCBITaxon:9606',
                 'label' : 'Homo sapiens'
               }
  },
  {
    'class' : {
                 'label' : 'Genetic anticipation',
                 'id' : 'HP:0003745'
               },
    'description' : 'Patient with Down syndrome'
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


--------------------------------------------------------------------------------
### created

The creation time of this record, in ISO8601


#### Example

```
'created' : "2017-10-25T07:06:03Z"
```

--------------------------------------------------------------------------------
### data_use_conditions

Data use conditions applying to data from this individual, as ontology object (e.g. DUO).


#### Example

```
'data_use_conditions' : {
  'id' : 'DUO:0000004',
  'label' : 'no restriction'
}
```

--------------------------------------------------------------------------------
### description

A free text description of the individual.

#### Example

```
'description' : "patient with lung cancer, male smoker"
```

--------------------------------------------------------------------------------
### geo_provenance

This geo_class attribute ideally describes the geographic location of where this individual originates from.
This value may reflect either the place of burth or residence, but frequently may correspond to the place the study was performed.


#### Example

```
'geo_provenance' : {
  'longitude' : 21.23,
  'city' : 'Timisoara',
  'country' : 'Romania',
  'altitude' : 94,
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'latitude' : 45.75
}
```

--------------------------------------------------------------------------------
### id

The local-unique identifier of this individual (referenced as "individual_id").

#### Example

```
'id' : "AM_BS__NCBISKYCGH-1993"
```

--------------------------------------------------------------------------------
### info

additional variant information, as defined in the example and accompanying documentation

#### Example

```
'info' : {
  'last_name' : {
                   'type' : 'string',
                   'value' : 'Tichy'
                 },
  'first_name' : {
                    'type' : 'string',
                    'value' : 'Ion'
                  }
}
```

--------------------------------------------------------------------------------
### updated

The time of the last edit of this record, in ISO8601


#### Example

```
'updated' : "2022-11-11T09:45:13Z"
```
