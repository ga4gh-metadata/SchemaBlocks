# GA4GH __variant__


The document describes attributes of the _variant_ object. In its current implementation, _valiant_ (and related genomic objects such as _callset_) represent extended versions of the original, VCF-derived GA4GH schema. This format may be superseeded or augmented based on current developments in the GA4GH::GKS work stream.


The schema definitions are done in the [YAML file](../yaml/variant.yaml).

## Variant

<h3>Properties of the <i>Variant</i> class</h3>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>

  <tr>
    <td>alternate_bases</td>
    <td>string</td>
    <td></td>
    <td>one or more bases relative to start position of the reference genome,replacing the reference_bases value; for precise variants</td>
  </tr>

  <tr>
    <td>biosample_id</td>
    <td></td>
    <td></td>
    <td>The identifier ("biosample.id") of the biosample this variant was reported from. This is a shortcut to using the variant -> callset -> biosample chaining.</td>
  </tr>

  <tr>
    <td>callset_id</td>
    <td>string</td>
    <td></td>
    <td>The identifier ("callset.id") of the callset this variant is part of.</td>
  </tr>

  <tr>
    <td>created</td>
    <td>string</td>
    <td></td>
    <td>The creation time of this record, in ISO8601
</td>
  </tr>

  <tr>
    <td>digest</td>
    <td>string</td>
    <td></td>
    <td>concatenated unique specific elements of the variant</td>
  </tr>

  <tr>
    <td>end</td>
    <td>array</td>
    <td>int64</td>
    <td>array of 0 (for presise sequence variants), 1 or 2 (for imprecise end position of structural variant) integers</td>
  </tr>

  <tr>
    <td>genotype</td>
    <td>array</td>
    <td></td>
    <td>list of strings, which represent the (phased) alleles in which the variant was being observed</td>
  </tr>

  <tr>
    <td>id</td>
    <td>string</td>
    <td></td>
    <td>The local-unique identifier of this variant (referenced as "variant_id").</td>
  </tr>

  <tr>
    <td>info</td>
    <td></td>
    <td></td>
    <td>additional variant information, as defined in the example and accompanying documentation</td>
  </tr>

  <tr>
    <td>mate_name</td>
    <td>string</td>
    <td></td>
    <td>Mate name (chromosome) for fusion (BRK) events; otherwise left empty. Accepting values 1-22, X, Y.</td>
  </tr>

  <tr>
    <td>reference_bases</td>
    <td>string</td>
    <td></td>
    <td>one or more bases at start position in the reference genome, which have been replaced by the alternate_bases value; for precise variants</td>
  </tr>

  <tr>
    <td>reference_name</td>
    <td>string</td>
    <td></td>
    <td>Reference name (chromosome). Accepting values 1-22, X, Y.</td>
  </tr>

  <tr>
    <td>start</td>
    <td>array</td>
    <td>int64</td>
    <td>array of 1 or 2 (for imprecise end position of structural variant) integers</td>
  </tr>

  <tr>
    <td>updated</td>
    <td>string</td>
    <td></td>
    <td>The time of the last edit of this record, in ISO8601
</td>
  </tr>

  <tr>
    <td>variant_type</td>
    <td>string</td>
    <td></td>
    <td>the variant type in case of a named (structural) variant (e.g. DUP, DEL, BRK ...)</td>
  </tr>
</table>

<h3>Extended notes and examples on the <i>Variant</i> properties</h3>


--------------------------------------------------------------------------------
### alternate_bases

one or more bases relative to start position of the reference genome,replacing the reference_bases value; for precise variants

#### Example

```
'alternate_bases' : "AC"
```

--------------------------------------------------------------------------------
### biosample_id

The identifier ("biosample.id") of the biosample this variant was reported from. This is a shortcut to using the variant -> callset -> biosample chaining.

#### Example

```
'biosample_id' : "pgx-bs-987647"
```

--------------------------------------------------------------------------------
### callset_id

The identifier ("callset.id") of the callset this variant is part of.

#### Example

```
'callset_id' : "PGX_AM_CS_GSM1690424"
```

--------------------------------------------------------------------------------
### created

The creation time of this record, in ISO8601


#### Example

```
'created' : "2017-10-25T07:06:03Z"
```

--------------------------------------------------------------------------------
### digest

concatenated unique specific elements of the variant

#### Example

```
'digest' : "4:12282-46465:DEL"
```

--------------------------------------------------------------------------------
### end

array of 0 (for presise sequence variants), 1 or 2 (for imprecise end position of structural variant) integers

#### Example

```
'end' : [
  21977798,
  21978106
]
```

#### Queries:
the query will return all variants with any overlap of the CDKN2A CDR
```
db.variants.find( { "reference_name" : 9,  "variant_type" : "DEL", "start" : { $lteq : 21975098 }, "end" : { $gteq : 21967753 } } )
```


--------------------------------------------------------------------------------
### genotype

list of strings, which represent the (phased) alleles in which the variant was being observed

#### Example

```
'genotype' : [
  '1',
  '.'
]
```

--------------------------------------------------------------------------------
### id

The local-unique identifier of this variant (referenced as "variant_id").

#### Example

```
'id' : "amvar-8754-7751-1119-8539"
```

--------------------------------------------------------------------------------
### info

additional variant information, as defined in the example and accompanying documentation

#### Example

```
'info' : {
  'cnv_length' : {
                    'format' : 'int64',
                    'value' : 1205290,
                    'type' : 'number'
                  },
  'cnv_value' : {
                   'value' : '-0.294',
                   'type' : 'number',
                   'format' : 'float'
                 }
}
```

--------------------------------------------------------------------------------
### mate_name

Mate name (chromosome) for fusion (BRK) events; otherwise left empty. Accepting values 1-22, X, Y.

#### Example

```
'mate_name' : 14
```

--------------------------------------------------------------------------------
### reference_bases

one or more bases at start position in the reference genome, which have been replaced by the alternate_bases value; for precise variants

#### Example

```
'reference_bases' : "G"
```

--------------------------------------------------------------------------------
### reference_name

Reference name (chromosome). Accepting values 1-22, X, Y.

#### Example

```
'reference_name' : 8
```

--------------------------------------------------------------------------------
### start

array of 1 or 2 (for imprecise end position of structural variant) integers

#### Example

```
'start' : [
  20867740
]
```

--------------------------------------------------------------------------------
### updated

The time of the last edit of this record, in ISO8601


#### Example

```
'updated' : "2022-11-11T09:45:13Z"
```

--------------------------------------------------------------------------------
### variant_type

the variant type in case of a named (structural) variant (e.g. DUP, DEL, BRK ...)

#### Example

```
'variant_type' : "DEL"
```
