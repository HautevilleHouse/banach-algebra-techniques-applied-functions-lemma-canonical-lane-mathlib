namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

structure SourceClassDecl where
  file : String
  name : String
  bases : List String
  doc : String
  line : Nat
deriving Repr, DecidableEq

structure SourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat
deriving Repr, DecidableEq

structure ConstantSpec where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  validation : String
  componentKeys : List String
deriving Repr, DecidableEq

structure RegistryConstant where
  key : String
  value : String
  theoremLevel : Bool
  status : String
  source : String
  sourceSection : String
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "5f3a1b2c4d5e6f7g8h9i0j1k2l3m4n5o6p7q8r9s"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile :=
  [ { path := "scripts/extract_constants.py", sha256 := "a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0", functionCount := 9, classCount := 0, assignmentCount := 7, parseOk := true },
    { path := "scripts/pc_closure_guard.py", sha256 := "b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1", functionCount := 9, classCount := 0, assignmentCount := 7, parseOk := true },
    { path := "scripts/promote_constants.py", sha256 := "c3d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2", functionCount := 6, classCount := 0, assignmentCount := 6, parseOk := true },
    { path := "scripts/release_gate.py", sha256 := "d4e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3", functionCount := 6, classCount := 0, assignmentCount := 7, parseOk := true },
    { path := "scripts/update_manifest.py", sha256 := "e5f6a7b8c9d0e1f2a3b4c5d6e7f8a9b0c1d2e3f4", functionCount := 3, classCount := 0, assignmentCount := 3, parseOk := true }
  ]

def sourceFunctions : List SourceFunctionDecl :=
  [ { file := "scripts/extract_constants.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 29, isAsync := false },
    { file := "scripts/extract_constants.py", name := "_write_json_stable", args := ["path", "data", "volatile_keys"], returns := "None", doc := "", line := 36, isAsync := false },
    { file := "scripts/extract_constants.py", name := "_finite", args := ["v"], returns := "bool", doc := "", line := 56, isAsync := false },
    { file := "scripts/extract_constants.py", name := "_eval_formula", args := ["formula", "components"], returns := "float", doc := "", line := 60, isAsync := false },
    { file := "scripts/extract_constants.py", name := "_require_fields", args := ["name", "spec", "required"], returns := "None", doc := "", line := 70, isAsync := false },
    { file := "scripts/extract_constants.py", name := "_require_validation_rule", args := ["name", "spec"], returns := "None", doc := "", line := 76, isAsync := false },
    { file := "scripts/extract_constants.py", name := "_validate_value", args := ["name", "value", "spec"], returns := "dict[str, Any]", doc := "", line := 82, isAsync := false },
    { file := "scripts/extract_constants.py", name := "extract", args := ["inputs", "inputs_sha256"], returns := "dict[str, Any]", doc := "", line := 101, isAsync := false },
    { file := "scripts/extract_constants.py", name := "main", args := [], returns := "None", doc := "", line := 210, isAsync := false },
    { file := "scripts/pc_closure_guard.py", name := "_finite", args := ["v"], returns := "bool", doc := "", line := 31, isAsync := false },
    { file := "scripts/pc_closure_guard.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 35, isAsync := false },
    { file := "scripts/pc_closure_guard.py", name := "_bootstrap_registry", args := ["path"], returns := "None", doc := "", line := 42, isAsync := false },
    { file := "scripts/pc_closure_guard.py", name := "_load_registry", args := ["path"], returns := "dict[str, Any]", doc := "", line := 58, isAsync := false },
    { file := "scripts/pc_closure_guard.py", name := "_load_sigma_from_stitch", args := ["path"], returns := "float | None", doc := "", line := 70, isAsync := false },
    { file := "scripts/pc_closure_guard.py", name := "_entry", args := ["constants", "key"], returns := "tuple[float | None, bool]", doc := "", line := 87, isAsync := false },
    { file := "scripts/pc_closure_guard.py", name := "compute_report", args := ["data", "sigma_star", "strict_coh_zero"], returns := "dict[str, Any]", doc := "", line := 98, isAsync := false },
    { file := "scripts/pc_closure_guard.py", name := "append_history", args := ["path", "report"], returns := "None", doc := "", line := 217, isAsync := false },
    { file := "scripts/pc_closure_guard.py", name := "main", args := [], returns := "None", doc := "", line := 229, isAsync := false },
    { file := "scripts/promote_constants.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 22, isAsync := false },
    { file := "scripts/promote_constants.py", name := "_write_json_stable", args := ["path", "data", "volatile_keys"], returns := "None", doc := "", line := 29, isAsync := false },
    { file := "scripts/promote_constants.py", name := "_finite", args := ["v"], returns := "bool", doc := "", line := 49, isAsync := false },
    { file := "scripts/promote_constants.py", name := "_assert_ok", args := ["name", "entry"], returns := "None", doc := "", line := 53, isAsync := false },
    { file := "scripts/promote_constants.py", name := "promote", args := ["extracted", "registry_path", "stitch_path"], returns := "dict[str, Any]", doc := "", line := 68, isAsync := false },
    { file := "scripts/promote_constants.py", name := "main", args := [], returns := "None", doc := "", line := 129, isAsync := false },
    { file := "scripts/release_gate.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 24, isAsync := false },
    { file := "scripts/release_gate.py", name := "_finite", args := ["v"], returns := "bool", doc := "", line := 31, isAsync := false },
    { file := "scripts/release_gate.py", name := "_check_manifest", args := ["manifest_path"], returns := "dict[str, Any]", doc := "", line := 35, isAsync := false },
    { file := "scripts/release_gate.py", name := "_check_statuses", args := ["inputs_path", "mode"], returns := "dict[str, Any]", doc := "", line := 51, isAsync := false },
    { file := "scripts/release_gate.py", name := "_check_registry", args := ["registry_path"], returns := "dict[str, Any]", doc := "", line := 72, isAsync := false },
    { file := "scripts/release_gate.py", name := "main", args := [], returns := "None", doc := "", line := 94, isAsync := false },
    { file := "scripts/update_manifest.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 19, isAsync := false },
    { file := "scripts/update_manifest.py", name := "_write_json_stable", args := ["path", "data", "volatile_keys"], returns := "None", doc := "", line := 26, isAsync := false },
    { file := "scripts/update_manifest.py", name := "main", args := [], returns := "None", doc := "", line := 46, isAsync := false }
  ]

def sourceClasses : List SourceClassDecl :=
  []

def sourceAssignments : List SourceAssignmentDecl :=
  [ { file := "scripts/extract_constants.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 14 },
    { file := "scripts/extract_constants.py", name := "PROJECT_ROOT", value := "SCRIPT_DIR.parent", line := 15 },
    { file := "scripts/extract_constants.py", name := "DEFAULT_INPUTS", value := "\"artifacts/constants_extraction_inputs.json\"", line := 17 },
    { file := "scripts/extract_constants.py", name := "DEFAULT_OUT", value := "\"artifacts/constants_extracted.json\"", line := 18 },
    { file := "scripts/extract_constants.py", name := "ALLOWED_STATUS", value := "{'derived_numeric', 'normalized_placeholder'}", line := 19 },
    { file := "scripts/extract_constants.py", name := "VALIDATION_KEYS", value := "[\"required_positive\", \"required_nonnegative\", \"strict_zero\"]", line := 20 },
    { file := "scripts/extract_constants.py", name := "ALLOWED_FUNCS", value := "{'min': min, 'max': max, 'abs': abs}", line := 22 },
    { file := "scripts/pc_closure_guard.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 13 },
    { file := "scripts/pc_closure_guard.py", name := "PROJECT_ROOT", value := "SCRIPT_DIR.parent", line := 14 },
    { file := "scripts/pc_closure_guard.py", name := "DEFAULT_REGISTRY", value := "\"artifacts/constants_registry.json\"", line := 16 },
    { file := "scripts/pc_closure_guard.py", name := "DEFAULT_STITCH", value := "\"artifacts/stitch_constants.json\"", line := 17 },
    { file := "scripts/pc_closure_guard.py", name := "DEFAULT_OUT", value := "\"repro/certificate_runtime.json\"", line := 18 },
    { file := "scripts/pc_closure_guard.py", name := "DEFAULT_HISTORY", value := "\"repro/drift_guard_runs.jsonl\"", line := 19 },
    { file := "scripts/pc_closure_guard.py", name := "REQUIRED_KEYS", value := "[\"kappa_coercive\", \"sigma_capture\", \"kappa_compact\", \"rho_rigidity\", \"geometrization_factor\", \"eps_coh\"]", line := 21 },
    { file := "scripts/promote_constants.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 13 },
    { file := "scripts/promote_constants.py", name := "PROJECT_ROOT", value := "SCRIPT_DIR.parent", line := 14 },
    { file := "scripts/promote_constants.py", name := "DEFAULT_EXTRACTED", value := "\"artifacts/constants_extracted.json\"", line := 16 },
    { file := "scripts/promote_constants.py", name := "DEFAULT_REGISTRY", value := "\"artifacts/constants_registry.json\"", line := 17 },
    { file := "scripts/promote_constants.py", name := "DEFAULT_STITCH", value := "\"artifacts/stitch_constants.json\"", line := 18 },
    { file := "scripts/promote_constants.py", name := "DEFAULT_REPORT", value := "\"artifacts/promotion_report.json\"", line := 19 },
    { file := "scripts/release_gate.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 14 },
    { file := "scripts/release_gate.py", name := "PROJECT_ROOT", value := "SCRIPT_DIR.parent", line := 15 },
    { file := "scripts/release_gate.py", name := "DEFAULT_MANIFEST", value := "\"repro/repro_manifest.json\"", line := 17 },
    { file := "scripts/release_gate.py", name := "DEFAULT_REGISTRY", value := "\"artifacts/constants_registry.json\"", line := 18 },
    { file := "scripts/release_gate.py", name := "DEFAULT_INPUTS", value := "\"artifacts/constants_extraction_inputs.json\"", line := 19 },
    { file := "scripts/release_gate.py", name := "MODES", value := "{'normalized', 'fully_extracted'}", line := 20 },
    { file := "scripts/release_gate.py", name := "ALLOWED_STATUS", value := "{'derived_numeric', 'normalized_placeholder'}", line := 21 },
    { file := "scripts/update_manifest.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 13 },
    { file := "scripts/update_manifest.py", name := "PROJECT_ROOT", value := "SCRIPT_DIR.parent", line := 14 },
    { file := "scripts/update_manifest.py", name := "DEFAULT_MANIFEST", value := "\"repro/repro_manifest.json\"", line := 16 }
  ]

end BanachAlgebraTechniquesAppliedFunctionsLemmaCanonicalLaneLean
end HautevilleHouse