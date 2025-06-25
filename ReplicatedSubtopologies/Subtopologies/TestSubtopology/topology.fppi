instance replicant: Components.Replicant base id BASE_ID + 0x00000000 \
    queue size Default.QUEUE_SIZE \
    stack size Default.STACK_SIZE \
    priority 90

instance replicated: Components.Replicated base id BASE_ID + 0x00001000 \
    queue size Default.QUEUE_SIZE \
    stack size Default.STACK_SIZE \
    priority 90

topology Subtopology {
    instance replicant
    instance replicated

    connections ReplicantConnection {
        replicant.signaling -> replicated.signaled
    }
}