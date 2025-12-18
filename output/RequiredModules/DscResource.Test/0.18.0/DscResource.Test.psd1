@{

    # Script module or binary module file associated with this manifest.
    RootModule        = 'DscResource.Test.psm1'

    # Version number of this module.
    ModuleVersion     = '0.18.0'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID              = '036f67a1-21a3-43b6-95a0-73d5549e854e'

    # Author of this module
    Author            = 'DSC Community'

    # Company or vendor of this module
    CompanyName       = 'DSC Community'

    # Copyright statement for this module
    Copyright         = '(c) dsccommunity. All rights reserved.'

    # Description of the functionality provided by this module
    Description       = 'Testing DSC Resources against HQRM guidelines'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '5.0'

    # Name of the PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules   = @()

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @('Clear-DscLcmConfiguration','Get-DscResourceTestContainer','Get-InvalidArgumentRecord','Get-InvalidOperationRecord','Get-InvalidResultRecord','Get-ObjectNotFoundRecord','Initialize-TestEnvironment','Invoke-DscResourceTest','New-DscSelfSignedCertificate','Restore-TestEnvironment','Task.Fail_Build_If_HQRM_Tests_Failed','Task.Invoke_HQRM_Tests_Stop_On_Fail','Task.Invoke_HQRM_Tests','Wait-ForIdleLcm')

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = @()

    # Variables to export from this module
    VariablesToExport = @()

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = @('Task.Fail_Build_If_HQRM_Tests_Failed','Task.Invoke_HQRM_Tests_Stop_On_Fail','Task.Invoke_HQRM_Tests')

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags                       = @('DesiredStateConfiguration', 'DSC', 'DSCResourceKit', 'DSCResource')

            # A URL to the license for this module.
            LicenseUri                 = 'https://github.com/dsccommunity/DscResource.Test/blob/main/LICENSE'

            # A URL to the main website for this project.
            ProjectUri                 = 'https://github.com/dsccommunity/DscResource.Test'

            ExternalModuleDependencies = @('DscResource.AnalyzerRules', 'Pester', 'xDSCResourceDesigner', 'PSPKI')

            # A URL to an icon representing this module.
            IconUri                    = 'https://dsccommunity.org/images/DSC_Logo_300p.png'

            Prerelease                 = ''

            # ReleaseNotes of this module
            ReleaseNotes               = '## [0.18.0] - 2025-09-01

### Added

- Add workflow for GitHub Copilot Agent.
- `ModuleManifest.common.v5.Tests`
  - Added compatibility test for `CmdletsToExport` in modules with class-based DSC resources. The test validates that when a module contains class-based resources and has `CmdletsToExport` specified in the manifest, it must be set to ''*'' for compatibility with PSDesiredStateConfiguration 2.0.7. [#165](https://github.com/dsccommunity/DscResource.Test/issues/165)
  - Updated the test that verifies that resources are exported in the module manifest to work cross-platform.
  - Added a test to verify that the module manifest is valid.

### Fixed

- Add ability to filter out files in `ExampleFiles.common.v4` [#120](https://github.com/dsccommunity/DscResource.Test/issues/120).
- Private function `Test-FileContainsClassResource`
  - Refactored to correctly find class-based resources (including parameterized attributes) and to throw detailed parse errors with file and position information.
- `ExampleFiles.common.*` skip if on PowerShell 6+ [#169](https://github.com/dsccommunity/DscResource.Test/issues/169).

### Removed

- Remove ModuleBuilder patch.

### Changed

- `Changelog.common.v5.Tests`
  - Suppress ''PSUseDeclaredVarsMoreThanAssignments'' ScriptAnalyzer rule.
- `ExampleFiles.common.v5.Tests`
  - Suppress ''PSUseDeclaredVarsMoreThanAssignments'' ScriptAnalyzer rule.
  - Suppress ''PSAvoidUsingConvertToSecureStringWithPlainText'' ScriptAnalyzer rule.
  - Remove array addition.
- `FileFormatting.common.v5.Tests`
  - Suppress ''PSUseDeclaredVarsMoreThanAssignments'' ScriptAnalyzer rule.
  - Remove array addition.
  - Remove single use variable.
- `MarkdownLinks.common.v5.Tests`
  - Suppress ''PSUseDeclaredVarsMoreThanAssignments'' ScriptAnalyzer rule.
  - Remove array addition.
  - Remove single use variable.
- `ModuleScriptFiles.common.v5.Tests`
  - Suppress ''PSUseDeclaredVarsMoreThanAssignments'' ScriptAnalyzer rule.
  - Remove array addition.
  - Remove single use variable.
- `PSSAResource.common.v5.Tests`
  - Suppress ''PSUseDeclaredVarsMoreThanAssignments'' ScriptAnalyzer rule.
  - Remove array addition.
  - Remove single use variable.
  - Target all source files [#163](https://github.com/dsccommunity/DscResource.Test/issues/163).
- `PublishExampleFiles.common.v5.Tests`
  - Suppress ''PSUseDeclaredVarsMoreThanAssignments'' ScriptAnalyzer rule.
  - Remove array addition.
  - Remove single use variable.
- `RelativePathLength.common.v5.Tests`
  - Suppress ''PSUseDeclaredVarsMoreThanAssignments'' ScriptAnalyzer rule.
  - Remove array addition.
  - Remove single use variable.
- `ResourceSchema.common.v5.Tests`
  - Suppress ''PSUseDeclaredVarsMoreThanAssignments'' ScriptAnalyzer rule.
- Remove array addition in following Public/Private functions.
  - `Get-ClassResourceNameFromFile`
  - `Get-ModuleScriptResourceName`
  - `Get-SuppressedPSSARuleNameList`
  - `Invoke-DscResourceTest`
  - `Invoke_HQRM_Tests.build`

'

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI = ''

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
}
