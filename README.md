# AVPlayerBackgroundMode
Just a simple example of how to run the AVPlayer when the app enters background mode.

If the player’s current item is displaying video on the device, playback of the AVPlayer instance is automatically paused when the app is sent to the background. If you want to continue playing audio, you disconnect the AVPlayer instance from the presentation when entering the background and reconnect it when returning to the foreground.
