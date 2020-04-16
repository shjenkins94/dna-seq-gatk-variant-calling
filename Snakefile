include: "rules/common.smk"

##### Target rules #####

rule all:
    input:
        # "dedup/A-1.bam",
        # "dedup/B-1.bam",
        # "dedup/B-2.bam"
        "annotated/all.vcf.gz",
        "annotated/all.vcf.gz",
        "qc/multiqc.html",
        "plots/depths.svg",
        "plots/allele-freqs.svg"


##### Modules #####

include: "rules/mapping.smk"
include: "rules/calling.smk"
include: "rules/filtering.smk"
include: "rules/stats.smk"
include: "rules/qc.smk"
include: "rules/annotation.smk"
