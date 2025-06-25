module Rep2 {
    constant BASE_ID = 0x20000000
    module Default {
        constant QUEUE_SIZE = 100
        constant STACK_SIZE = 10000
    }
    include "../../../Subtopologies/TestSubtopology/topology.fppi"
}