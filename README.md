# WTFNoPauseVMWare

![WTFNoPauseVMWare Logo](logo.png)

## Overview

Welcome to **WTFNoPauseVMWare**, the repository dedicated to addressing the frustration of unexpected shutdowns or logoffs of your VMWare Workstation VMs just fuckin your day up. 

Have you ever sighed at the absence of an automatic pause feature during these events?

## Why This Repository Exists

**"VMWare, Why You No Pause Automatically during Unexpected Events?"**

Why is such a basic feature is not included in their virtualization software. This script fixes that. 

## Getting Started

1. Clone this repository to your local machine.
2. Copy the bat script to a common location for your user/the computer
3. Follow the below instructions to set up group policy

## How to Contribute

Contributions are welcome! If you have a humorous take on VM pauses during unexpected events or an improvement to the scripts, feel free to submit a pull request.

## Handling Pause on Shutdown with Group Policy

To ensure the scripts run during unexpected shutdowns, you can utilize Group Policy. Follow these steps:

1. Open the Local Group Policy Editor.
2. Navigate to `Computer Configuration -> Windows Settings -> Scripts (Startup/Shutdown)`.
3. Double-click on "Shutdown" in the right pane.
4. Click "Add" and browse to select the appropriate script.
5. Click "OK" to apply.

## Handling Pause on Logoff with Group Policy

7. Repeat the above steps with the group policy path `User Configuration\Windows Settings\Scripts\Logoff.` if desired.

## Testing you didn't mess this up
`shutdown /s /t 120` to initiate a shutdown after 120 seconds. 

`shutdown /a` to cancel the shutdown.

Substitute `/s` for `/l` to test logoffs

## Troubleshooting

Read the errors. There's not much to this script.

Check your VMWare installation path. 

## Acknowledgments

A big shoutout to VMWare for sucking and not having a basic feature in the GUI for licensed users. Your frustration inspired this project!
