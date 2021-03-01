# Default global tag and number of events
GLOBALTAG="112X_mcRun3_2021_realistic_v14"
NUMEVENTS=200

# Datasets used as input for the matrix-like tests
SAMPLES="TTBAR ZMUMU ZEE"

# Data samples
DATA_SAMPLES="L1ACCEPT"

# TTbar sample, with 2021 "realistic" conditions and pileup
TTBAR="/RelValTTbar_14TeV/CMSSW_11_2_0-PU_112X_mcRun3_2021_realistic_v14-v1/GEN-SIM-DIGI-RAW"
TTBAR_NUMEVENTS=100

# Z -> mumu sample, with 2021 "realistic" conditions, no pileup
ZMUMU="/RelValZMM_14/CMSSW_11_2_0-112X_mcRun3_2021_realistic_v14-v1/GEN-SIM-DIGI-RAW"
ZMUMU_NUMEVENTS=200

# Z -> ee sample, with 2021 "realistic" conditions, no pileup
ZEE="/RelValZEE_14/CMSSW_11_2_0-112X_mcRun3_2021_realistic_v13-v1/GEN-SIM-DIGI-RAW"
ZEE_NUMEVENTS=200

# Level-1 Trigger selected events, from Run2018D data taking era, pileup 50
L1ACCEPT="/EphemeralHLTPhysics1/Run2018D-v1/RAW run=323775 lumi=53"
L1ACCEPT_NUMEVENTS=200
L1ACCEPT_GLOBALTAG="auto:run2_hlt_relval"
