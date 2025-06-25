module Components {
    @ A no-op component designed to be replicated
    active component Replicant {

        @ Send signal to buddy
        output port signaling: Fw.Signal

        @ Triggers the instance
        async command TRIGGER opcode 0

        @ Triggered event
        event Triggered() severity activity high id 0 format "Component was triggered"

        @ Number of times the instance has been triggered
        telemetry TriggerCount: U32


        ###############################################################################
        # Standard AC Ports: Required for Channels, Events, Commands, and Parameters  #
        ###############################################################################
        @ Port for requesting the current time
        time get port timeCaller

        @ Port for sending command registrations
        command reg port cmdRegOut

        @ Port for receiving commands
        command recv port cmdIn

        @ Port for sending command responses
        command resp port cmdResponseOut

        @ Port for sending textual representation of events
        text event port logTextOut

        @ Port for sending events to downlink
        event port logOut

        @ Port for sending telemetry channels to downlink
        telemetry port tlmOut

        @ Port to return the value of a parameter
        param get port prmGetOut

        @Port to set the value of a parameter
        param set port prmSetOut

    }
}