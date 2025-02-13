platform: Android
purpose: Publish
structureType: CustomUI
runOn: "Server"
buildPlatform:
displayName: "Distribute to Track (BETA)"
description: "Distributes the binary to the distribution track on Google Play"
marketPlace: "GooglePlayStore"
precedingComponents: "appcircle_publish_send_to_playstore"
processFilename: bash
processArguments: '%AC_STEP_TEMP%/main.sh'
inputs:
- key: "AC_STACK_TYPE"
  defaultValue: "Select"
  isRequired: true
  editorType: select
  title: Track type for submit
  description: "Select a release track to which to distribute the binary."
  options: "ServerCallRequiredToGetValues"
  helpText:
- key: "AC_RELEASE_STATUS"
  defaultValue: ""
  isRequired: true
  editorType: select
  title: Play Store App Status
  description: "Allows you to specify draft, partial, or completed app statuses on the Google Play Console. The partial app status starts the app distribution at 10% by default, which can be adjusted later."
  options: "completed,draft,partial"
  helpText:
- key: "AC_RELEASE_NOTES"
  editorType: textarea
  isRequired: false
  title: Release notes for the Submission
  description: Filling that area may effect playstore submission process.
  helpText:
files:
- "main.sh"