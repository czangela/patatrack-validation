# Local CMSSW installation
VO_CMS_SW_DIR=/data/cmssw

# OAuth token to post comments on GitHub
OAUTH_FILE=$HOME/.patatrack-validation.oauth

# Local cache of the input files
LOCAL_CACHE_PATH=/gpu_data

# Local cache of the input files
TTBAR_CACHE_PATH="file:$LOCAL_CACHE_PATH/store/relval/CMSSW_11_2_0/RelValTTbar_14TeV/GEN-SIM-DIGI-RAW/PU_112X_mcRun3_2021_realistic_v14-v1/10000"
TTBAR_CACHE_FILE="076d7f2f-34f8-45fc-a8a4-d22fec3a0753.root,162715c3-e3e6-4248-b3ab-ba5c2350f994.root,23b96b34-abef-4e3b-a214-489659c9cf53.root,6e8755f6-df59-4091-99b3-a80ede032390.root,72942d51-ee09-43b6-a5f8-470ff6814088.root,93c052d0-bb96-4a0e-884d-c912da64e2af.root,96fac56d-94fb-499a-86fb-3baeb3d88804.root,9724dc29-4d38-42e4-a628-c7d61c62507e.root,a74b2d43-4220-46dc-849f-afe67bb65437.root"
ZMUMU_CACHE_PATH="file:$LOCAL_CACHE_PATH/store/relval/CMSSW_11_2_0/RelValZMM_14/GEN-SIM-DIGI-RAW/112X_mcRun3_2021_realistic_v14-v1/10000"
ZMUMU_CACHE_FILE="241d4555-04a1-4dd0-99d0-a5c99730d1b5.root,3ef4df97-2a38-4a2d-9892-6e615e75a9a9.root,493a481e-ae34-4692-ba1e-c4a5b3cf9f34.root,681b1ebb-4dad-4d95-9d51-6c2081eaa01b.root,cd00fe0a-d460-46c5-8f75-2c0349712ab3.root,deb59e4e-a090-45ff-9172-5b612e9a5f38.root,e5f1f81b-9800-4746-9564-c963e67bb319.root,ee37b124-3f1d-41da-97c0-68dba5b69a92.root"
ZEE_CACHE_PATH="file:$LOCAL_CACHE_PATH/store/relval/CMSSW_11_2_0/RelValZEE_14/GEN-SIM-DIGI-RAW/112X_mcRun3_2021_realistic_v13-v1/10000"
ZEE_CACHE_FILE="5af949ec-c6a7-4b39-9e9e-a9d533fc2f7f.root,73c5ce2a-d3c3-4134-a712-6cef9837a698.root,73ce8d26-9add-4d75-90f0-d8405e9a43c9.root,7ec71973-9139-4419-aa51-d62f981cf488.root,cc065534-d324-4a4a-833c-5bfe860156b0.root"

L1ACCEPT_CACHE_PATH="file:$LOCAL_CACHE_PATH/store/data/Run2018D/EphemeralHLTPhysics1/RAW/v1/000/323/775/00000"
L1ACCEPT_CACHE_FILE="A27DFA33-8FCB-BE42-A2D2-1A396EEE2B6E.root"

# URL and local area for uploading validation plots, profiles and logs
UPLOAD_URL="https://patatrack.web.cern.ch/patatrack/validation/pulls"
UPLOAD_DIR="/eos/home-f/fpantale/www/patatrack-website/validation/pulls"
LOCAL_DIR="/data/user/$USER/patatrack-validation/pulls"
