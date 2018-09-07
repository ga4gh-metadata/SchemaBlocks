# variant  

The document describes attributes of the "variant" object, which e.g. can be instantiated as database documents in a MongoDB collection.


## _id

the database-internal object id

#### Example

`ObjectId("558e5c56ad9a82d958392bd6")
`

## alternate_bases



#### Example

`AC
`

## biosample_id

The identifier ("biosample.id") of the biosample this variant was reported from. This is a shortcut to using the variant -> callset -> biosample chaining.

#### Example

`pgx-bs-987647
`

## callset_id

The identifier ("callset.id") of the callset this variant is part of.

#### Example

`PGX_AM_CS_GSM1690424
`

## digest

concatenated unique specific elements of the variant

#### Example

`4:12282-46465:DEL
`

## end



#### Example

```
[
  21977798,
  21978106
]

```

#### Queries:
the query will return all variants with any overlap of the CDKN2A CDR
```
db.variants.find( { "reference_name" : "9",  "variant_type" : "DEL", "start" : { $lteq : 21975098 }, "end" : { $gteq : 21967753 } } )
```

## genotype



#### Example

```
[
  '1',
  '.'
]

```

## info

additional variant information, as defined in the example and accompanying documentation

#### Example

```
[
  {
    'type' => 'float',
    'value' => '-0.294',
    'name' => 'cnv_value'
  },
  {
    'type' => 'int64',
    'value' => 1205290,
    'name' => 'cnv_length'
  }
]

```

## mate_name

Mate name (chromosome) for fusion (BRK) events; otherwise left empty. Accepting values 1-22, X, Y.

#### Example

`14
`

## reference_bases

list of bases at start position in the reference genome, which have been replaced by the alternate_bases value; for precise variants

#### Example

`G
`

## reference_name

Reference name (chromosome). Accepting values 1-22, X, Y.

#### Example

`8
`

## start



#### Example

```
[
  20867740
]

```

## updated

time of the last edit of this record, in ISO8601

#### Example

`2017-10-25T07:06:03Z
`

## variant_type

the variant type in case of a named (structural) variant (DUP | DEL | BRK ...)

#### Example

`DEL
`

