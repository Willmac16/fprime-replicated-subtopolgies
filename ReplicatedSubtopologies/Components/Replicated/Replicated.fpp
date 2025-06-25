module Components {
    @ A no-op component designed to be replicated
    active component Replicated {

        async input port signaled: Fw.Signal

        @ Event signaled
        event Signaled() severity activity high id 0 format "Signaled"

        ###############################################################################
        # Standard AC Ports: Required for Channels, Events, Commands, and Parameters  #
        ###############################################################################
        @ Port for requesting the current time
        time get port timeCaller

        @ Port for sending textual representation of events
        text event port logTextOut

        @ Port for sending events to downlink
        event port logOut
    }
}