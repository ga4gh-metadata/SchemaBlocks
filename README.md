## [GA4GH __SchemaBlocks__](https://ga4gh-metadata.github.io/schemas/)

<div style="display: block; float: right; width: 260px; margin: 0px 0px 15px 15px; ">
  <img src="https://ga4gh-metadata.github.io/schemas/rsrc/img/ga4gh-object-model.png" />
  <div style="display: block; width: 260px; text-align: justify; font-size: 0.8em; color: #03c; background-color: #eee; padding: 5px;">
A graph showing the basic objects and their relationships. The example attributes are placeholders for elements defined in the general schema description.
  </div>
</div>

This repository contains the schema "blocks" for the GA4GH project, in a collaborative effort between members of the _Clinical and Phenotypic Data Capture_ ([__GA4GH::CP__](http://ga4gh-cp.github.io)) and the _Genomic Knowledge Standards_ ([__GA4GH::GKS__](http://ga4gh-gks.github.io)) work streams.

The primary documents are in the [yaml](./yaml/) directory, with JSON versions and examples extracted from them. The "readable" documentation is also created from the YAML files and can be accessed through the links below.

* [common](./main/doc/common.md) ([raw](/schemas/main/yaml/common.yaml))
    object classes, which are used in the schemas themselves
* [biosample](./main/doc/biosample.md) ([raw](/schemas/yaml/doc/biosample.yaml))
    Most relevant "bio"data (such as diagnoses, phenotypes ...) is stored in the `biosample` object.
* [individual](./main/doc/individual.md) ([raw](/schemas/yaml/doc/individual.yaml))
    The `individual` object contains information which pertains to the whole biological entity biosamples are derived from (e.g. sex, heritable phenotypes...).

The "genomic" parts of the schema recommendations do not yet represent authoritative recommendations of the [_GA4GH::GKS_](http://ga4gh-gks.github.io) group, but rather reflect extended versions of the original, VCF-derived GA4GH schema. Examples for current use of this schema are e.g. in the [arraymap.org](http://arraymap.org) and the [Beacon+](http://beacon.progenetix.org) projects.

* [variant](./main/doc/variant.md) ([raw](/schemas/main/yaml/variant.yaml))
    The `variant` object includes attributes and examples for both structural (DUP, DEL ...) and precise genome variants.
* [callset](./main/doc/callset.md) ([raw](/schemas/main/yaml/callset.yaml))
    The `callset` object is for technoical data and series information (e.g. used platform and analysis metods). It is not strictly needed for querying combined variant + biosample aspects, since in the current implementation the `variant` object contains a reference to the `biosample` it was derived from.
