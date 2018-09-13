# GA4GH __variant__
  

The document describes attributes of the "variant" object, which e.g. can be instantiated as database documents in a MongoDB collection.


## Variant

### alternate_bases

one or more bases relative to start position of the reference genome,replacing the reference_bases value; for precise variants

#### Example

```
"alternate_bases" : "AC"
```

### biosample_id

The identifier ("biosample.id") of the biosample this variant was reported from. This is a shortcut to using the variant -> callset -> biosample chaining.

#### Example

```
"biosample_id" : "pgx-bs-987647"
```

### callset_id

The identifier ("callset.id") of the callset this variant is part of.

#### Example

```
"callset_id" : "PGX_AM_CS_GSM1690424"
```

### digest

concatenated unique specific elements of the variant

#### Example

```
"digest" : "4:12282-46465:DEL"
```

### end

array of 0 (for presise sequence variants), 1 or 2 (for imprecise end position of structural variant) integers

#### Example

```
"end" : [
  21977798,
  21978106
]
```

#### Queries:
the query will return all variants with any overlap of the CDKN2A CDR
```
db.variants.find( { "reference_name" : 9,  "variant_type" : "DEL", "start" : { $lteq : 21975098 }, "end" : { $gteq : 21967753 } } )
```

### genotype

list of strings, which represent the (phased) alleles in which the variant was being observed

#### Example

```
"genotype" : [
  '1',
  '.'
]
```

### info

additional variant information, as defined in the example and accompanying documentation

#### Example

```
"info" : {
  'cnv_value' : {
                   'type' : 'number',
                   'value' : '-0.294',
                   'format' : 'float'
                 },
  'cnv_length' : {
                    'type' : 'number',
                    'value' : 1205290,
                    'format' : 'int64'
                  }
}
```

### mate_name

Mate name (chromosome) for fusion (BRK) events; otherwise left empty. Accepting values 1-22, X, Y.

#### Example

```
"mate_name" : 14
```

### reference_bases

one or more bases at start position in the reference genome, which have been replaced by the alternate_bases value; for precise variants

#### Example

```
"reference_bases" : "G"
```

### reference_name

Reference name (chromosome). Accepting values 1-22, X, Y.

#### Example

```
"reference_name" : 8
```

### start

array of 1 or 2 (for imprecise end position of structural variant) integers

#### Example

```
"start" : [
  20867740
]
```

### updated

time of the last edit of this record, in ISO8601

#### Example

```
"updated" : "2017-10-25T07:06:03Z"
```

### variant_type

the variant type in case of a named (structural) variant (DUP | DEL | BRK ...)

#### Example

```
"variant_type" : "DEL"
```
