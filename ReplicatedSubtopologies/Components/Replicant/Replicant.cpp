// ======================================================================
// \title  Replicant.cpp
// \author mstarch
// \brief  cpp file for Replicant component implementation class
// ======================================================================

#include "ReplicatedSubtopologies/Components/Replicant/Replicant.hpp"

namespace Components {

// ----------------------------------------------------------------------
// Component construction and destruction
// ----------------------------------------------------------------------

Replicant ::Replicant(const char* const compName) : ReplicantComponentBase(compName) {}

Replicant ::~Replicant() {}

// ----------------------------------------------------------------------
// Handler implementations for commands
// ----------------------------------------------------------------------

void Replicant ::TRIGGER_cmdHandler(FwOpcodeType opCode, U32 cmdSeq) {
    this->m_triggerCount++;
    this->log_ACTIVITY_HI_Triggered();
    this->tlmWrite_TriggerCount(this->m_triggerCount);
    this->signaling_out(0);
    this->cmdResponse_out(opCode, cmdSeq, Fw::CmdResponse::OK);
}

}  // namespace Components
