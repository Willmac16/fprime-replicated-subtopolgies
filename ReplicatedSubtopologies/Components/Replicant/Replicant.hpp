// ======================================================================
// \title  Replicant.hpp
// \author mstarch
// \brief  hpp file for Replicant component implementation class
// ======================================================================

#ifndef Components_Replicant_HPP
#define Components_Replicant_HPP

#include "ReplicatedSubtopologies/Components/Replicant/ReplicantComponentAc.hpp"

namespace Components {

class Replicant final : public ReplicantComponentBase {
  public:
    // ----------------------------------------------------------------------
    // Component construction and destruction
    // ----------------------------------------------------------------------

    //! Construct Replicant object
    Replicant(const char* const compName  //!< The component name
    );

    //! Destroy Replicant object
    ~Replicant();

  PRIVATE:
    // ----------------------------------------------------------------------
    // Handler implementations for commands
    // ----------------------------------------------------------------------

    //! Handler implementation for command TRIGGER
    //!
    //! Triggers the instance
    void TRIGGER_cmdHandler(FwOpcodeType opCode,  //!< The opcode
                            U32 cmdSeq            //!< The command sequence number
                            ) override;
    U32 m_triggerCount;
};

}  // namespace Components

#endif
