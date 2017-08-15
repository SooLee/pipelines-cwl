{
    "inputs": [
        {
            "sbg:x": 14,
            "type": [
                "File"
            ],
            "id": "#input_fastq",
            "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
            "sbg:y": 206,
            "label": "input_fastq"
        },
        {
            "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
            "sbg:suggestedValue": null,
            "sbg:toolDefaultValue": "1",
            "id": "#threads",
            "type": [
                "null",
                "int"
            ],
            "sbg:includeInPorts": false,
            "label": "Threads",
            "required": false,
            "sbg:category": "Options"
        }
    ],
    "hints": [],
    "sbg:revisionsInfo": [
        {
            "sbg:modifiedOn": 1475785156,
            "sbg:revisionNotes": null,
            "sbg:revision": 0,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1475785232,
            "sbg:revisionNotes": null,
            "sbg:revision": 1,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1494861916,
            "sbg:revisionNotes": "scattered across input_fastq, nthread exposed",
            "sbg:revision": 2,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1494861985,
            "sbg:revisionNotes": "scattered across input_fastq",
            "sbg:revision": 3,
            "sbg:modifiedBy": "duplexa"
        },
        {
            "sbg:modifiedOn": 1502312053,
            "sbg:revisionNotes": "removed scatter across input_fastq",
            "sbg:revision": 4,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1502312569,
            "sbg:revisionNotes": "simplified arguments",
            "sbg:revision": 5,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1502313267,
            "sbg:revisionNotes": "removed expression requirement",
            "sbg:revision": 6,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1502314283,
            "sbg:revisionNotes": "updated input_fastq, no longer an array.",
            "sbg:revision": 7,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1502318802,
            "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 for output directory control",
            "sbg:revision": 8,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1502373121,
            "sbg:revisionNotes": null,
            "sbg:revision": 9,
            "sbg:modifiedBy": "4dn-dcic"
        },
        {
            "sbg:modifiedOn": 1502390177,
            "sbg:revisionNotes": null,
            "sbg:revision": 10,
            "sbg:modifiedBy": "4dn-dcic"
        }
    ],
    "sbg:validationErrors": [],
    "sbg:latestRevision": 10,
    "sbg:canvas_x": 40,
    "sbg:canvas_y": 13,
    "sbg:image_url": "https://brood.sbgenomics.com/static/4dn-dcic/dev/fastqc-0-11-4-1/9.png",
    "id": "https://api.sbgenomics.com/v2/apps/4dn-dcic/dev/fastqc-0-11-4-1/9/raw/",
    "sbg:projectName": "Dev",
    "sbg:project": "4dn-dcic/dev",
    "sbg:canvas_zoom": 1,
    "label": "fastqc-0.11.4",
    "sbg:revision": 9,
    "requirements": [],
    "sbg:modifiedBy": "4dn-dcic",
    "sbg:id": "4dn-dcic/dev/fastqc-0-11-4-1/9",
    "sbg:sbgMaintained": false,
    "cwlVersion": "sbg:draft-2",
    "sbg:appVersion": [
        "sbg:draft-2"
    ],
    "sbg:modifiedOn": 1502373121,
    "sbg:contributors": [
        "4dn-dcic",
        "duplexa"
    ],
    "class": "Workflow",
    "description": "",
    "outputs": [
        {
            "sbg:x": 870,
            "required": false,
            "source": [
                "#FastQC.report_zip"
            ],
            "type": [
                "null",
                "File"
            ],
            "id": "#report_zip",
            "sbg:includeInPorts": true,
            "sbg:fileTypes": "ZIP",
            "sbg:y": 170,
            "label": "report_zip"
        }
    ],
    "sbg:createdBy": "duplexa",
    "sbg:createdOn": 1475785156,
    "steps": [
        {
            "sbg:x": 455,
            "inputs": [
                {
                    "id": "#FastQC.threads",
                    "source": [
                        "#threads"
                    ]
                },
                {
                    "id": "#FastQC.outdir",
                    "default": "."
                },
                {
                    "id": "#FastQC.input_fastq",
                    "source": [
                        "#input_fastq"
                    ]
                }
            ],
            "id": "#FastQC",
            "outputs": [
                {
                    "id": "#FastQC.report_zip"
                }
            ],
            "run": {
                "inputs": [
                    {
                        "description": "Specifies the number of files which can be processed simultaneously.  Each thread will be allocated 250MB of memory so you shouldn't run more threads than your available memory will cope with, and not more than 6 threads on a 32 bit machine.",
                        "sbg:toolDefaultValue": "1",
                        "id": "#threads",
                        "label": "Threads",
                        "type": [
                            "null",
                            "int"
                        ],
                        "sbg:includeInPorts": false,
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 2
                        },
                        "required": false,
                        "sbg:category": "Options"
                    },
                    {
                        "id": "#outdir",
                        "required": false,
                        "sbg:toolDefaultValue": ".",
                        "inputBinding": {
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 3
                        },
                        "type": [
                            "null",
                            "string"
                        ]
                    },
                    {
                        "type": [
                            "File"
                        ],
                        "required": true,
                        "sbg:fileTypes": "FASTQ, FQ, FASTQ.GZ, FQ.GZ",
                        "id": "#input_fastq",
                        "label": "Input file",
                        "description": "Input file.",
                        "sbg:category": "File inputs",
                        "inputBinding": {
                            "itemSeparator": null,
                            "sbg:cmdInclude": true,
                            "separate": true,
                            "position": 1
                        }
                    }
                ],
                "hints": [
                    {
                        "class": "DockerRequirement",
                        "dockerPull": "duplexa/4dn-hic:v32",
                        "dockerImageId": "759c4c8fbafd"
                    },
                    {
                        "class": "sbg:CPURequirement",
                        "value": ""
                    },
                    {
                        "class": "sbg:MemRequirement",
                        "value": ""
                    }
                ],
                "sbg:revisionsInfo": [
                    {
                        "sbg:modifiedOn": 1475785113,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/12",
                        "sbg:revision": 0,
                        "sbg:modifiedBy": "duplexa"
                    },
                    {
                        "sbg:modifiedOn": 1502312296,
                        "sbg:revisionNotes": "Copy of admin/sbg-public-data/fastqc-0-11-4/18",
                        "sbg:revision": 1,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1502312495,
                        "sbg:revisionNotes": "simplified arguments",
                        "sbg:revision": 2,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1502312518,
                        "sbg:revisionNotes": "simplified output",
                        "sbg:revision": 3,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1502313093,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 4,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1502318718,
                        "sbg:revisionNotes": "now using duplexa/4dn-hic:v32 instead of the original SBG version, for output directory control.",
                        "sbg:revision": 5,
                        "sbg:modifiedBy": "4dn-dcic"
                    },
                    {
                        "sbg:modifiedOn": 1502318741,
                        "sbg:revisionNotes": null,
                        "sbg:revision": 6,
                        "sbg:modifiedBy": "4dn-dcic"
                    }
                ],
                "appUrl": "/u/4dn-dcic/dev/apps/#4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:modifiedOn": 1502318741,
                "sbg:job": {
                    "allocatedResources": {
                        "cpu": "",
                        "mem": ""
                    },
                    "inputs": {
                        "threads": null,
                        "input_fastq": {
                            "class": "File",
                            "path": "/path/to/input_fastq.ext",
                            "secondaryFiles": [],
                            "size": 0
                        },
                        "outdir": "outdir-string-value"
                    }
                },
                "sbg:cmdPreview": "run-fastqc.sh  /path/to/input_fastq.ext",
                "successCodes": [],
                "requirements": [],
                "stdin": "",
                "label": "FastQC",
                "x": 455,
                "id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:toolAuthor": "Babraham Institute",
                "sbg:toolkit": "FastQC",
                "stdout": "",
                "sbg:projectName": "Dev",
                "sbg:project": "4dn-dcic/dev",
                "sbg:revision": 6,
                "y": 166,
                "sbg:modifiedBy": "4dn-dcic",
                "sbg:id": "4dn-dcic/dev/fastqc-0-11-4/6",
                "sbg:image_url": null,
                "baseCommand": [
                    "run-fastqc.sh"
                ],
                "sbg:categories": [
                    "FASTQ-Processing",
                    "Quality-Control",
                    "Quantification"
                ],
                "sbg:sbgMaintained": false,
                "sbg:latestRevision": 6,
                "class": "CommandLineTool",
                "sbg:links": [
                    {
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/",
                        "label": "Homepage"
                    },
                    {
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4_source.zip",
                        "label": "Source Code"
                    },
                    {
                        "id": "https://wiki.hpcc.msu.edu/display/Bioinfo/FastQC+Tutorial",
                        "label": "Wiki"
                    },
                    {
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.4.zip",
                        "label": "Download"
                    },
                    {
                        "id": "http://www.bioinformatics.babraham.ac.uk/projects/fastqc",
                        "label": "Publication"
                    }
                ],
                "cwlVersion": "sbg:draft-2",
                "sbg:appVersion": [
                    "sbg:draft-2"
                ],
                "sbg:license": "GNU General Public License v3.0 only",
                "sbg:validationErrors": [],
                "sbg:contributors": [
                    "duplexa",
                    "4dn-dcic"
                ],
                "sbg:toolkitVersion": "0.11.5",
                "temporaryFailCodes": [],
                "description": "FastQC reads a set of sequence files and produces a quality control (QC) report from each one. These reports consist of a number of different modules, each of which will help identify a different type of potential problem in your data. \n\nSince it's necessary to convert the tool report in order to show them on Seven Bridges platform, it's recommended to use [FastQC Analysis workflow instead](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/). \n\nFastQC is a tool which takes a FASTQ file and runs a series of tests on it to generate a comprehensive QC report.  This report will tell you if there is anything unusual about your sequence.  Each test is flagged as a pass, warning, or fail depending on how far it departs from what you would expect from a normal large dataset with no significant biases.  It is important to stress that warnings or even failures do not necessarily mean that there is a problem with your data, only that it is unusual.  It is possible that the biological nature of your sample means that you would expect this particular bias in your results.\n\n### Common Issues:\n\nOutput of the tool is ZIP archive. In order to view report on Seven Bridges platform, you can use SBG Html2b64 tool. It is advised to scatter SBG Html2b64 so it would be able to process an array of files. The example can be seen in [FastQC Analysis workflow](https://igor.sbgenomics.com/public/apps#admin/sbg-public-data/fastqc-analysis/) which you can also use instead of this tool.",
                "outputs": [
                    {
                        "description": "Zip archive of the report.",
                        "id": "#report_zip",
                        "type": [
                            "null",
                            "File"
                        ],
                        "outputBinding": {
                            "sbg:metadata": {
                                "__inherit__": "input_fastq"
                            },
                            "sbg:inheritMetadataFrom": "#input_fastq",
                            "glob": "*_fastqc.zip"
                        },
                        "sbg:fileTypes": "ZIP",
                        "label": "Report zip"
                    }
                ],
                "sbg:createdBy": "duplexa",
                "sbg:createdOn": 1475785113,
                "arguments": []
            },
            "sbg:y": 166
        }
    ]
}