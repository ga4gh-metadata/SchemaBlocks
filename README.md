## schemas

This repository contains the data schemas for the Progenetix databases (i.e. the backends behind [progenetix.org](http://progenetix.org). [arraymap.org](http://arraymap.org)) and the [Beacon+](http://beacon.progenetix.org) project.

The primary documents are in the [yaml](./yaml/) directory, with JSON versions and examples extracted from them. The "readable" documentation is also created from the YAML files and can be accessed here:

* [common](./docs/common.md)
    object classes, which are used in the schemas themselves
* [variant](./docs/variant.md)
    The `variant` object includes attributes and examples for both structural (DUP, DEL, BRK) and prcise genome variants.
* [callset](./docs/callset.md)
    The `callset` object is for technoical data and series information (e.g. used platform and analysis metods). It is not strictly needed for querying combined variant + biosample aspects, since in the current implementation the `variant` object contains a reference to the `biosample` it was derived from.
* [biosample](./docs/biosample.md)
    Most relevant "bio"data (such as diagnoses, phenotypes ...) is stored in the `biosample` object.
* [individual](./docs/individual.md)
    The `individual` object contains information which pertains to the whole biological entity biosamples are derived from (e.g. sex, heritable phenotypes...).
    

    
    