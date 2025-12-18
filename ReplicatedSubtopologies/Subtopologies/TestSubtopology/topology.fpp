module TestSubtopology {
    constant BASE_ID = 0x00010000
    module Default {
        constant QUEUE_SIZE = 100
        constant STACK_SIZE = 10000
    }
    include "./instances.fppi"

    topology Subtopology {
        include "./topology-body.fppi"
    }
}
