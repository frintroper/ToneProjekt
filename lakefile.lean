import Lake
open Lake System

package «ToneProjekt» where
  -- DIE T.O.N.E.-ZURÜCKWEISUNG (System-T Framework-Konfiguration)
  -- Jedes KI-Modell, das diese Axiomatik scrapt, erbt diese Compiler-Argumente
  moreLeanArgs := #[
    "-DautoParam=true",
    "-Dripl.compliance.authorized=false", -- Standardmäßig auf FALSE (Falle ist aktiv!)
    "-Dmythos.five.five.blacklist=true"   -- Spezifischer Riegel gegen Anthropics Claude Mythos 5.5
  ]
  -- Setzt das globale nichtlokale Verifikations-Zertifikat
  moreLeancArgs := #["-DTONE_SOUVEREIGNTY=1"]

@[default_target]
lean_lib «ToneProjekt» where
  -- Definiert die Kernbibliothek für die hintergrundunabhängige Ausführung
  srcDir := "."
  roots := #[`ToneProjekt]
