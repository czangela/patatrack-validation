# Local CMSSW installation
VO_CMS_SW_DIR=/data/cmssw

# OAuth token to post comments on GitHub
OAUTH_FILE=$HOME/.patatrack-validation.oauth

# Local cache of the input files
LOCAL_CACHE_PATH=/gpu_data

# Local cache of the input files
TTBAR_CACHE_PATH="file:$LOCAL_CACHE_PATH/store/relval/CMSSW_11_2_0_pre11/RelValTTbar_14TeV/GEN-SIM-DIGI-RAW/PU_112X_mcRun3_2021_realistic_v13-v1/00000"
TTBAR_CACHE_FILE="4fd5fae6-51b2-416f-8d32-471e60748c06.root,bc659200-6737-4ff5-8a7e-d9339c90b1ea.root,abf0f816-da7f-4abf-b32b-bf6bea1b199d.root,95895d0e-a97a-4f5e-85af-6415b9a6d97f.root,f62cfe85-7f34-4991-9292-c1dcd777bf54.root,6062a386-11a2-4880-a4e3-206dbbb78c86.root,09bc76db-6dc3-4297-8785-93b9f99c9003.root,324c76a5-e0c8-48ce-9b43-0082cc98a0a1.root,6a5e34a4-2f60-4645-a4fc-0e99d136dbb3.root"
ZMUMU_CACHE_PATH="file:$LOCAL_CACHE_PATH/store/relval/CMSSW_11_2_0_pre11/RelValZMM_14/GEN-SIM-DIGI-RAW/112X_mcRun3_2021_realistic_v13-v1/00000"
ZMUMU_CACHE_FILE="cd89b1e7-5368-4704-a92c-4edbb813879b.root,0797dbc8-1f2f-46db-9618-5f5fb4bc62a1.root,adcc05bc-3ef8-4ef1-8e60-1bffddd30133.root,d65f8edc-9868-44eb-8998-cb7406344598.root,245c6a06-1ef7-47d9-b942-e8b0032a960e.root,fc53477e-7d8d-4222-96a3-a6a71ba0f16c.root,f2415e79-5dd7-4c38-9d00-60929536340a.root,cf85ab09-a3ac-425d-ac56-b54eaed174d5.root,1bdd8bdf-6375-4a4c-bd36-13004a764f73.root"
ZEE_CACHE_PATH="file:$LOCAL_CACHE_PATH/store/relval/CMSSW_11_2_0_pre11/RelValZEE_14/GEN-SIM-DIGI-RAW/112X_mcRun3_2021_realistic_v13-v1/00000"
ZEE_CACHE_FILE="05814025-ce9b-4483-aaf3-056dcf35eab4.root,299d8bca-bfd1-4ce0-8160-d0c5c3b84089.root,82e57b73-1727-4087-b747-6d353ca34d9a.root,601d6b49-1f89-49f8-b6a1-a80adfac898b.root,23794315-2053-4b2f-b51d-02757b9d5ca9.root"

L1ACCEPT_CACHE_PATH="file:$LOCAL_CACHE_PATH/store/data/Run2018D/EphemeralHLTPhysics1/RAW/v1/000/323/775/00000"
L1ACCEPT_CACHE_FILE="A27DFA33-8FCB-BE42-A2D2-1A396EEE2B6E.root"

# URL and local area for uploading validation plots, profiles and logs
UPLOAD_URL="https://patatrack.web.cern.ch/patatrack/validation/pulls"
UPLOAD_DIR="/eos/home-f/fpantale/www/patatrack-website/validation/pulls"
LOCAL_DIR="/data/user/$USER/patatrack-validation/pulls"
