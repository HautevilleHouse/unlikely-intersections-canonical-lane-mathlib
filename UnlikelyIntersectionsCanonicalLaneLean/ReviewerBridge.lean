import UnlikelyIntersectionsCanonicalLaneLean.Formalization
import UnlikelyIntersectionsCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace UnlikelyIntersectionsCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "bff7a2f9417d4832c61f0670755359f90365a7f4923c9d7e657505a97300aee1", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "af7881ed0109888e251e2e152c34befabec9693492a384a4f1c64a72aeb4d6f8", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "b751e26a09219e97e54dd60993082887794a81eb781b7a551e20405b3d4753a5", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "3d40c92f965b0051121e1321cb58b60323fc74f13df22364c903171524ab787e", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "539e7e98fbf23baddb1174c6b72c33d688793e99b7cc0cd2f71949cf02dcd6f1", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "4e550625fc0e749e9a109861f92b100e229e8c3c2c8a6f076dd4b46007e74844", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "9d22ea2b4fd6043aab0d02ba5290d77bd353e026b74f3aed75136991d7a74cbd", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "dddabd0522866f0aadccac0e4777b081a1e2ae58f13acacf8e5cc50d2f890cac", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "0b425baae48af24f4935d786b42e6946cdca106d9bf507bc6dcf3325967aa54c", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 0

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "README.md", sha256 := "a875f8b35c24c6119f36e46ea69f6b8e690b4c5dc535dc76b6b53c37d30d221e" },
  { path := "CITATION.cff", sha256 := "86aea107a9b249b0b49b50f545e0241c52b3c3ae3c611b599bf2609b69463f4b" },
  { path := "REVIEWER_MAP.md", sha256 := "bff7a2f9417d4832c61f0670755359f90365a7f4923c9d7e657505a97300aee1" },
  { path := "paper/UNLIKELY_INTERSECTIONS_PREPRINT.md", sha256 := "818b42431bf6edd921fe25745dfdf6e3694047e6a375474de209de6b05ed62d9" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "fe01212e0126d948d60769c5b5d192361dab1da2dec8eeab0d80d624808f08cc" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "7a09ea1e852c48033f5a28289ee8866ba0ef3be361000b7c01382ed6633ea80e" },
  { path := "notes/EG1_public.md", sha256 := "791f121abaedb675bf1f1b07e01d4979b03f9e3a4646bb4a29a037b0f634b7cf" },
  { path := "notes/EG2_public.md", sha256 := "e7f7279c60a8df3d12d6cda74c6a58550106d064e0b4b1573e72e3353c955b57" },
  { path := "notes/EG3_public.md", sha256 := "35c7d179b731e81152eaeadae23090d67cc9fb2a7197f359a0de62af6889c02e" },
  { path := "notes/EG4_public.md", sha256 := "08b34ebd27195ba764e997159e97d0ac7f94b64c88a7cc387366063ca5baaac8" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "af7881ed0109888e251e2e152c34befabec9693492a384a4f1c64a72aeb4d6f8" },
  { path := "scripts/uin_closure_guard.py", sha256 := "bc28da13fef5417eec4202614aeca83e56b90e6ee35299d8ebf02174954257e2" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "repro/run_repro.sh", sha256 := "e2f8ddfa4d273480d798d82237f592b58626793581e5600d8aec929933d5bd6c" },
  { path := "repro/REPRO_PACK.md", sha256 := "fdb539adaf5366caa214fd366a3be921bba73000afd54cab1818980fe58f2542" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "5deb6cad666a2284e5fc0aeb7ff110e380bad8230a2b829254c5319cce51f88c" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "b751e26a09219e97e54dd60993082887794a81eb781b7a551e20405b3d4753a5" },
  { path := "artifacts/constants_extracted.json", sha256 := "3d40c92f965b0051121e1321cb58b60323fc74f13df22364c903171524ab787e" },
  { path := "artifacts/constants_registry.json", sha256 := "539e7e98fbf23baddb1174c6b72c33d688793e99b7cc0cd2f71949cf02dcd6f1" },
  { path := "artifacts/stitch_constants.json", sha256 := "4e550625fc0e749e9a109861f92b100e229e8c3c2c8a6f076dd4b46007e74844" },
  { path := "artifacts/promotion_report.json", sha256 := "9d22ea2b4fd6043aab0d02ba5290d77bd353e026b74f3aed75136991d7a74cbd" },
  { path := "repro/certificate_baseline.json", sha256 := "0b425baae48af24f4935d786b42e6946cdca106d9bf507bc6dcf3325967aa54c" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "UIN_G1", status := "PASS" },
  { gate := "UIN_G2", status := "PASS" },
  { gate := "UIN_G3", status := "PASS" },
  { gate := "UIN_G4", status := "PASS" },
  { gate := "UIN_G5", status := "PASS" },
  { gate := "UIN_G6", status := "PASS" },
  { gate := "UIN_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "intersection_lock", value := "1.02951" },
  { key := "kappa_atypical", value := "1.091838" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_counting", value := "1.075" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "intersection_lock",
  "kappa_atypical",
  "kappa_compact",
  "rho_rigidity",
  "sigma_counting",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 0 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 0 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end UnlikelyIntersectionsCanonicalLaneLean
end HautevilleHouse
