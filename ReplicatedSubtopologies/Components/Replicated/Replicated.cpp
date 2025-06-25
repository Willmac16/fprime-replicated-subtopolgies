// ======================================================================
// \title  Replicated.cpp
// \author mstarch
// \brief  cpp file for Replicated component implementation class
// ======================================================================

#include "ReplicatedSubtopologies/Components/Replicated/Replicated.hpp"

namespace Components {

// ----------------------------------------------------------------------
// Component construction and destruction
// ----------------------------------------------------------------------

Replicated ::Replicated(const char* const compName) : ReplicatedComponentBase(compName) {}

Replicated ::~Replicated() {}

// ----------------------------------------------------------------------
// Handler implementations for commands
// ----------------------------------------------------------------------

void Replicated ::signaled_handler(FwIndexType portNum) {
    this->log_ACTIVITY_HI_Signaled();
}


}  // namespace Components
