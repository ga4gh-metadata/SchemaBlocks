
### _id

the database-internal object id

* example: `ObjectId("558e5c56ad9a82d958392bd6")`

### alternate_bases



* example: `AC`

### biosample_id

The identifier ("biosample.id") of the biosample this variant was reported from. This is a shortcut to using the variant -> callset -> biosample chaining.

* example: `pgx-bs-987647`

### callset_id

The identifier ("callset.id") of the callset this variant is part of.

* example: `PGX_AM_CS_GSM1690424`

### digest

concatenated unique specific elements of the variant

* example: `4:12282-46465:DEL`

### end



* example: 
```
[
  21977798,
  21978106
]

```

### genotype



* example: 
```
[
  '1',
  '.'
]

```

### info

additional variant information, as defined in the example and accompanying documentation

* example: 
```
[
  {
    'value' => '-0.294',
    'type' => 'float',
    'name' => 'cnv_value'
  },
  {
    'type' => 'int64',
    'value' => 1205290,
    'name' => 'cnv_length'
  }
]

```

### mate_name

Mate name (chromosome) for fusion (BRK) events; otherwise left empty. Accepting values 1-22, X, Y.

* example: `14`

### reference_bases

list of bases at start position in the reference genome, which have been replaced by the alternate_bases value; for precise variants

* example: `G`

### reference_name

Reference name (chromosome). Accepting values 1-22, X, Y.

* example: `8`

### start



* example: 
```
[
  20867740
]

```

### updated

time of the last edit of this record, in ISO8601

* example: `2017-10-25T07:06:03Z`

### variant_type

the variant type in case of a named (structural) variant (DUP | DEL | BRK ...)

* example: `DEL`

