
### reference_name

Reference name (chromosome). Accepting values 1-22, X, Y.

* example: `8`

### digest

concatenated unique specific elements of the variant

* example: `4:12282-46465:DEL`

### info

additional variant information, as defined in the example and accompanying documentation

* example: `ARRAY(0x7fb84f958948)`

### mate_name

Mate name (chromosome) for fusion (BRK) events; otherwise left empty. Accepting values 1-22, X, Y.

* example: `14`

### callset_id

The identifier ("callset.id") of the callset this variant is part of.

* example: `PGX_AM_CS_GSM1690424`

### end



* example: `ARRAY(0x7fb84f939eb0)`

### reference_bases

list of bases at start position in the reference genome, which have been replaced by the alternate_bases value; for precise variants

* example: `G`

### start



* example: `ARRAY(0x7fb84f93a198)`

### alternate_bases



* example: `AC`

### biosample_id

The identifier ("biosample.id") of the biosample this variant was reported from. This is a shortcut to using the variant -> callset -> biosample chaining.

* example: `pgx-bs-987647`

### updated

time of the last edit of this record, in ISO8601

* example: `2017-10-25T07:06:03Z`

### _id

the database-internal object id

* example: `ObjectId("558e5c56ad9a82d958392bd6")`

### genotype



* example: `ARRAY(0x7fb84f939b38)`

### variant_type

the variant type in case of a named (structural) variant (DUP | DEL | BRK ...)

* example: `DEL`

