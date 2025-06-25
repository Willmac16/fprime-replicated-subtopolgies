module TestSubtopology {
    constant BASE_ID = 0x00000000
    module Default {
        constant QUEUE_SIZE = 100
        constant STACK_SIZE = 10000
    }
    include "./topology.fppi"
}