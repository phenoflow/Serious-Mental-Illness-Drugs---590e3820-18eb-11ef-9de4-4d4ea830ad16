cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  serious-mental-illness-smi-drugs-400mg---primary:
    run: serious-mental-illness-smi-drugs-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  serious-mental-illness-smi-drugs-200mg---primary:
    run: serious-mental-illness-smi-drugs-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-400mg---primary/output
  serious-mental-illness-smi-drugs-509mg---primary:
    run: serious-mental-illness-smi-drugs-509mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-200mg---primary/output
  serious-mental-illness-smi-drugs-lithium---primary:
    run: serious-mental-illness-smi-drugs-lithium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-509mg---primary/output
  serious-mental-illness-smi-drugs-520mg---primary:
    run: serious-mental-illness-smi-drugs-520mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-lithium---primary/output
  serious-mental-illness-smi-drugs-1018g---primary:
    run: serious-mental-illness-smi-drugs-1018g---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-520mg---primary/output
  serious-mental-illness-smi-drugs-carbonate---primary:
    run: serious-mental-illness-smi-drugs-carbonate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-1018g---primary/output
  serious-mental-illness-smi-drugs-camcolit---primary:
    run: serious-mental-illness-smi-drugs-camcolit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-carbonate---primary/output
  serious-mental-illness-smi-drugs-564mg---primary:
    run: serious-mental-illness-smi-drugs-564mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-camcolit---primary/output
  serious-mental-illness-smi-drugs-450mg---primary:
    run: serious-mental-illness-smi-drugs-450mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-564mg---primary/output
  serious-mental-illness-smi-drugs-300mg---primary:
    run: serious-mental-illness-smi-drugs-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-450mg---primary/output
  serious-mental-illness-smi-drugs-priadel---primary:
    run: serious-mental-illness-smi-drugs-priadel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-300mg---primary/output
  serious-mental-illness-smi-drugs-liliquid---primary:
    run: serious-mental-illness-smi-drugs-liliquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-priadel---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: serious-mental-illness-smi-drugs-liliquid---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
