instance replicant
instance replicated

connections ReplicantConnection {
    replicant.signaling -> replicated.signaled
}