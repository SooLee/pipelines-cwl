{
    "steps": [
        {
            "run": "cool2mcool.2.cwl",
            "id": "#cool2mcool",
            "inputs": [
                {
                    "id": "#cool2mcool.outprefix"
                },
                {
                    "id": "#cool2mcool.ncores",
                    "source": "#ncores"
                },
                {
                    "id": "#cool2mcool.input_cool",
                    "source": "#input_cool"
                }
            ],
            "outputs": [
                {
                    "id": "#cool2mcool.output_mcool"
                }
            ]
        },
        {
            "run": "extract-mcool-normvector-for-juicebox-1.1.cwl",
            "id": "#extract_mcool_normvector_for_juicebox_1",
            "inputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.input_mcool",
                    "source": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ],
            "outputs": [
                {
                    "id": "#extract_mcool_normvector_for_juicebox_1.output_normvector"
                }
            ]
        },
        {
            "run": "add-hic-normvector-to-mcool.4.cwl",
            "id": "#add_hic_normvector_to_mcool",
            "inputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.input_hic",
                    "source": "#input_hic"
                },
                {
                    "id": "#add_hic_normvector_to_mcool.input_mcool",
                    "source": "#cool2mcool.output_mcool"
                },
                {
                    "id": "#add_hic_normvector_to_mcool.outdir"
                }
            ],
            "outputs": [
                {
                    "id": "#add_hic_normvector_to_mcool.output_mcool"
                }
            ]
        }
    ],
    "inputs": [
        {
            "id": "#input_cool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#input_hic",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "default": 4,
            "id": "#ncores",
            "type": [
                "null",
                "int"
            ]
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "outputs": [
        {
            "id": "#output_mcool",
            "source": "#add_hic_normvector_to_mcool.output_mcool",
            "type": [
                "null",
                "File"
            ]
        },
        {
            "id": "#output_normvector",
            "source": "#extract_mcool_normvector_for_juicebox_1.output_normvector",
            "type": [
                "null",
                "File"
            ]
        }
    ],
    "cwlVersion": "draft-3",
    "class": "Workflow"
}