// ======================================================================
// \title  Replicated.hpp
// \author mstarch
// \brief  hpp file for Replicated component implementation class
// ======================================================================

#ifndef Components_Replicated_HPP
#define Components_Replicated_HPP

#include "ReplicatedSubtopologies/Components/Replicated/ReplicatedComponentAc.hpp"

namespace Components {

class Replicated final : public ReplicatedComponentBase {
  public:
    // ----------------------------------------------------------------------
    // Component construction and destruction
    // ----------------------------------------------------------------------

    //! Construct Replicated object
    Replicated(const char* const compName  //!< The component name
    );

    //! Destroy Replicated object
    ~Replicated();

  private:
    //! Handler implementation for signaled
    void signaled_handler(FwIndexType portNum  //!< The port number
    ) override;
};

}  // namespace Components

#endif
