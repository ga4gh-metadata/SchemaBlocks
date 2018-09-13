## [GA4GH Schemas](https://ga4gh-metadata.github.io/schemas/)

<div style="display: block; float: right; width: 260px;">
  <img src="https://ga4gh-metadata.github.io/schemas/rsrc/img/ga4gh-object-model.png" />
  <div style="display: block; width: 260px; text-align: justify; font-size: 0.8em; color: #03c; background-color: #eee; padding: 5px;">
A graph showing the basic objects and their relationships. The example attributes represent placeholders for elements defined in the general schema description.
  </div>
</div>

This repository contains the data schemas for the GA4GH project, in a collaborative effort between members of the _Clinical and Phenotypic Data Capture_ ([__GA4GH::CP__](http://ga4gh-cp.github.io)) and the _Genomic Knowledge Standards_ ([__GA4GH::CP__](http://ga4gh-gks.github.io)) work streams. 

Examples for current use of the schema are e.g. in the [progenetix.org](http://progenetix.org), [arraymap.org](http://arraymap.org)) and the [Beacon+](http://beacon.progenetix.org) projects.

The primary documents are in the [yaml](./yaml/) directory, with JSON versions and examples extracted from them. The "readable" documentation is also created from the YAML files and can be accessed here:

* [common](/schemas/blob/master/main/doc/common.md) ([raw](/schemas/main/doc/common.md))
    object classes, which are used in the schemas themselves
* [variant](./doc/variant.md)
    The `variant` object includes attributes and examples for both structural (DUP, DEL, BRK) and precise genome variants.
* [callset](./doc/callset.md)
    The `callset` object is for technoical data and series information (e.g. used platform and analysis metods). It is not strictly needed for querying combined variant + biosample aspects, since in the current implementation the `variant` object contains a reference to the `biosample` it was derived from.
* [biosample](./doc/biosample.md)
    Most relevant "bio"data (such as diagnoses, phenotypes ...) is stored in the `biosample` object.
* [individual](./doc/individual.md)
    The `individual` object contains information which pertains to the whole biological entity biosamples are derived from (e.g. sex, heritable phenotypes...).
    

    
    
