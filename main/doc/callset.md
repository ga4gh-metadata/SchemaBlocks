# GA4GH __callset__

The callset object contains information about an experiment performed on material from a single biosample and is a shared identifier for all variants detected in this experiment, attributed to the referenced biosample. 


The schema definitions are done in the [YAML file](../yaml/callset.yaml).

## Callset

<h3>Properties of the <i>Callset</i> class</h3>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>

  <tr>
    <td>biosample_id</td>
    <td>string</td>
    <td></td>
    <td>The identifier ("biosample.id") of the biosample this variant was reported from. This is a shortcut to using the variant -> callset -> biosample chaining.</td>
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
    <td>Data use conditions applying to data from this callset, as ontology object (e.g. DUO).
</td>
  </tr>

  <tr>
    <td>description</td>
    <td>string</td>
    <td></td>
    <td>A free text description of the callset.</td>
  </tr>

  <tr>
    <td>geo_provenance</td>
    <td></td>
    <td></td>
    <td>This geo_class attribute ideally describes the geographic location of where this callset was analysed.
</td>
  </tr>

  <tr>
    <td>id</td>
    <td>string</td>
    <td></td>
    <td>The local-unique identifier of this callset (referenced as "callset_id").</td>
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

<h3>Extended notes and examples on the <i>Callset</i> properties</h3>


--------------------------------------------------------------------------------
### biosample_id

The identifier ("biosample.id") of the biosample this variant was reported from. This is a shortcut to using the variant -> callset -> biosample chaining.

#### Example

```
'biosample_id' : "pgx-bs-987647"
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

Data use conditions applying to data from this callset, as ontology object (e.g. DUO).


#### Example

```
'data_use_conditions' : {
  'label' : 'no restriction',
  'id' : 'DUO:0000004'
}
```

--------------------------------------------------------------------------------
### description

A free text description of the callset.

#### Example

```
'description' : "SNP6 array of cancer sample BRCA-0893"
```

--------------------------------------------------------------------------------
### geo_provenance

This geo_class attribute ideally describes the geographic location of where this callset was analysed.


#### Example

```
'geo_provenance' : {
  'latitude' : 45.75,
  'label' : 'Str Marasesti 5, 300077 Timisoara, Romania',
  'country' : 'Romania',
  'city' : 'Timisoara',
  'longitude' : 21.23
}
```

--------------------------------------------------------------------------------
### id

The local-unique identifier of this callset (referenced as "callset_id").

#### Example

```
'id' : "GSM264198"
```

--------------------------------------------------------------------------------
### info

additional variant information, as defined in the example and accompanying documentation

#### Example

```
'info' : {
  'cnv_maps' : {
                  'schema' : {
                                '$ref' : './common/Info_class'
                              },
                  'description' : 'The cnv_maps object is a wrapper for genomic interval mapped status information. In Progenetix and arrayMap, this is used to indictate - for fixed 1MB genome intervals - the status (dup_map => "DUP" or "", del_map => "DEL" or ""), or the maximum / minimum positive / negative value encountered in the segment, as far as it has been called to contain DUP or DEL.
With a standard binning of 1MB, the arrays would contain ~3000 values each (depending on genome edition).
',
                  'value' : {
                               'dup_map' : {
                                              'type' : 'array',
                                              'description' : 'gain cnv status for the corresponding genome intervals
',
                                              'value' : [
                                                           '',
                                                           '',
                                                           'DUP',
                                                           'DUP',
                                                           'DUP',
                                                           '',
                                                           '',
                                                           '',
                                                           '',
                                                           '',
                                                           ''
                                                         ]
                                            },
                               'binning' : {
                                              'value' : 1000000,
                                              'type' : 'number',
                                              'description' : 'interval size in bases for the binning, when creating the cnv_maps',
                                              'format' : 'int64'
                                            }
                             }
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
