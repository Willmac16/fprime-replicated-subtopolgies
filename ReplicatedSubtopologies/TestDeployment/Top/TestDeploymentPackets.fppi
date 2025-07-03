telemetry packets TestDeploymentPackets {

  packet CDH id 1 group 1 {
    TestDeployment.cmdDisp.CommandsDispatched
    TestDeployment.rateGroup1.RgMaxTime
    TestDeployment.rateGroup2.RgMaxTime
    TestDeployment.rateGroup3.RgMaxTime
    TestDeployment.cmdSeq.CS_LoadCommands
    TestDeployment.cmdSeq.CS_CancelCommands
    TestDeployment.cmdSeq.CS_CommandsExecuted
    TestDeployment.cmdSeq.CS_SequencesCompleted
    TestDeployment.fileUplink.FilesReceived
    TestDeployment.fileUplink.PacketsReceived
    TestDeployment.bufferManager.TotalBuffs
    TestDeployment.bufferManager.CurrBuffs
    TestDeployment.bufferManager.HiBuffs
    TestDeployment.fileDownlink.FilesSent
    TestDeployment.fileDownlink.PacketsSent
    TestDeployment.fileManager.CommandsExecuted
    TestDeployment.comQueue.comQueueDepth
    TestDeployment.comQueue.buffQueueDepth
    # Note: Uncomment when using Svc:TlmPacketizer
    # TestDeployment.tlmSend.SendLevel
  }

  packet CDHErrors id 2 group 1 {
    TestDeployment.rateGroup1.RgCycleSlips
    TestDeployment.rateGroup2.RgCycleSlips
    TestDeployment.rateGroup3.RgCycleSlips
    TestDeployment.cmdSeq.CS_Errors
    TestDeployment.fileUplink.Warnings
    TestDeployment.fileDownlink.Warnings
    TestDeployment.$health.PingLateWarnings
    TestDeployment.fileManager.Errors
    TestDeployment.bufferManager.NoBuffs
    TestDeployment.bufferManager.EmptyBuffs
    TestDeployment.fileManager.Errors
  }

  packet SystemRes1 id 4 group 2 {
    TestDeployment.systemResources.MEMORY_TOTAL
    TestDeployment.systemResources.MEMORY_USED
    TestDeployment.systemResources.NON_VOLATILE_TOTAL
    TestDeployment.systemResources.NON_VOLATILE_FREE
  }

  packet SystemRes3 id 5 group 2 {
    TestDeployment.systemResources.CPU
    TestDeployment.systemResources.CPU_00
    TestDeployment.systemResources.CPU_01
    TestDeployment.systemResources.CPU_02
    TestDeployment.systemResources.CPU_03
    TestDeployment.systemResources.CPU_04
    TestDeployment.systemResources.CPU_05
    TestDeployment.systemResources.CPU_06
    TestDeployment.systemResources.CPU_07
    TestDeployment.systemResources.CPU_08
    TestDeployment.systemResources.CPU_09
    TestDeployment.systemResources.CPU_10
    TestDeployment.systemResources.CPU_11
    TestDeployment.systemResources.CPU_12
    TestDeployment.systemResources.CPU_13
    TestDeployment.systemResources.CPU_14
    TestDeployment.systemResources.CPU_15
  }

  packet Version1 id 6 group 2 {
    TestDeployment.version.FrameworkVersion
    TestDeployment.version.ProjectVersion
  }

  packet Version_Library1 id 7 group 2 {
    TestDeployment.version.LibraryVersion01
    TestDeployment.version.LibraryVersion02
  }

  packet Version_Library2 id 8 group 2 {
    TestDeployment.version.LibraryVersion03
    TestDeployment.version.LibraryVersion04
  }

  packet Version_Library3 id 9 group 2 {
    TestDeployment.version.LibraryVersion05
    TestDeployment.version.LibraryVersion06
  }

  packet Version_Library4 id 10 group 2 {
    TestDeployment.version.LibraryVersion07
    TestDeployment.version.LibraryVersion08
  }

  packet Version_Library5 id 11 group 2 {
    TestDeployment.version.LibraryVersion09
    TestDeployment.version.LibraryVersion10
  }

  packet Version_Custom1 id 12 group 2 {
    TestDeployment.version.CustomVersion01
  }

  packet Version_Custom2 id 13 group 2 {
    TestDeployment.version.CustomVersion02
  }

  packet Version_Custom3 id 14 group 2 {
    TestDeployment.version.CustomVersion03
  }

  packet Version_Custom4 id 15 group 2 {
    TestDeployment.version.CustomVersion04
  }

  packet Version_Custom5 id 16 group 2 {
    TestDeployment.version.CustomVersion05
  }

  packet Version_Custom6 id 17 group 2 {
    TestDeployment.version.CustomVersion06
  }

  packet Version_Custom7 id 18 group 2 {
    TestDeployment.version.CustomVersion07
  }

  packet Version_Custom8 id 19 group 2 {
    TestDeployment.version.CustomVersion08
  }

  packet Version_Custom9 id 20 group 2 {
    TestDeployment.version.CustomVersion09
  }

  packet Version_Custom10 id 21 group 2 {
    TestDeployment.version.CustomVersion10
  }

} omit {
  Rep1.replicant.TriggerCount
  Rep2.replicant.TriggerCount
  Rep3.replicant.TriggerCount
  Rep4.replicant.TriggerCount
  TestDeployment.cmdDisp.CommandErrors
}
