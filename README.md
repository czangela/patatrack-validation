# patatrack-validation
Scripts and tools for the validation of the Patatrack developments

## `validate`
The `validate` script is used to
  - create working areas for a reference release (e.g. `CMSSW_11_3_0_pre`), and a development release or branch (e.g. `CMSSW_11_3_X_Patatrack`);
  - if one ore more PRs are specified, create a working area based on the development release, merge them and build;
  - run various cmsDriver.py workflows on existing RelVals;
  - profile the "step3" with `nvprof`, including the `NVProfilerService`
  - upload the resulting DQM plots to the development GUI;
  - upload the results of `makeTrackValidationPlots.py`, the `nvprof` profiles, and the log files to a web area on EOS;
  - produce a markdown report with the relevant links.

Note: this script relies on `visDQMUpload` and `visDQMUtils.py` being available in the same directory.
If they are missing they are automatically downloaded from https://github.com/rovere/dqmgui/ .

## Configure scripts

### Configure local machine settings in `local.sh`

By default, the `local.sh` file contains settings for the online machines in the .CMS network.

For more information and how to connect to the network, see the [.CMS Cluster user's guide](https://twiki.cern.ch/twiki/bin/viewauth/CMS/ClusterUsersGuide ".CMS Cluster user's guide") TWiki page.

There's also a TWiki page for [HLT and online reconstruction developments on GPUs](https://twiki.cern.ch/twiki/bin/viewauth/CMS/TriggerDevelopmentWithGPUs "HLT and online reconstruction developments on GPUs"), which lists dedicated GPU development machines within the .CMS network and includes a guide on how to connect and develop on these machines.

##### 1. Set `VO_CMS_SW_DIR` to local CMSSW installation

The `cmssw.sh` will look for the `cmsset_default.sh` in the specified directory:
```sh
source $VO_CMS_SW_DIR/cmsset_default.sh
```
On the online machines this is set to the `/data/cmssw` directory, but for example on *lxplus* it would be `/cvmfs/cms.cern.ch`.

##### 2. Set `LOCAL_CACHE_PATH` to directory containing the local copy of the datasets

The relval samples should automatically be read via xrootd (from EOS if they are avaibale at CERN).
However, if EOS is not accessible from the machine, they should have a local version under `LOCAL_CACHE_PATH`.

It may also be wise to cache them on the local machine for faster access.

##### 3. Add **Github** OAuth token for automatic commenting on PR threads

```sh
# OAuth token to post comments on GitHub
OAUTH_FILE=$HOME/.patatrack-validation.oauth
```
Currently, this will post comments to the appropriate *issue or pull request* on the `cms-patatrack` **fork** of the `cms-sw` repository.
See the `github.sh` file for more information.
On [Creating a personal access token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token "Creating a personal access token"), see the official **Github** guide.

##### 4. Configure upload URL and directory, local directory
```sh
# URL and local area for uploading validation plots, profiles and logs
UPLOAD_URL="https://<username>.web.cern.ch/<username>/validation/pulls"
UPLOAD_DIR="/eos/user/<initials>/<username>/www/validation/pulls"
LOCAL_DIR="/data/user/$USER/patatrack-validation/pulls"
```
The format of the UPLOAD_URL and UPLOAD_DIR or LOCAL_DIR can be changed freely.

Note, that some services e.g. **eos** and **afs** might not be accessible from your machine (which is the case for .CMS network machines). In this case, you would have to manually copy the *validation plots* to your `www` area. An appropriate tool for this might be `rsync` which can be run from *lxplus* nodes.

In case you don't yet have a website, you can follow the guide on how to [Create web content folder for personal website](https://cernbox-manual.web.cern.ch/cernbox-manual/en/web/personal_website_content.html#create-personal-website-via-web-services "Create web content folder for personal website").

### Configure release and branch settings in `cmssw.sh`

You might need to set the **reference release** and **development release** as well as **branches** in the `cmssw.sh` file, if they differ from the default settings (which might be outdated). 

```sh
# Reference release
REFERENCE_RELEASE=CMSSW_11_3_0_pre3

# Development branch and latest release
DEVELOPMENT_RELEASE=$REFERENCE_RELEASE
DEVELOPMENT_BRANCH=CMSSW_11_3_X_Patatrack
TESTING_RELEASE=$DEVELOPMENT_RELEASE
TESTING_BRANCH=$DEVELOPMENT_BRANCH
```

### Configure the samples being used in `input.sh`

The file `input.sh` describes the datasets used for the validation.

To change the number of events, set the variables `TTBAR_NUMEVENTS`, `ZMUMU_NUMEVENTS`, `ZEE_NUMEVENTS` to the desired values.

To change the dataset being used (for example, to pick a more recent set of relvals), update the dataset names in the variables `TTBAR`, `ZMUMU` and `ZEE`.

The relval samples should automatically be read via xrootd (from EOS if they are avaibale at CERN); they can also be cached on the local machine for faster access.

## How to `validate` a pull request

From the `patatrack-validation` directory

```bash
. validate <number_of_pull_request>
```

As mentioned eariler, this *number* corresponds to an **issue or pull request** (e.g. #560) on the `cms-patatrack` **fork** of the `cms-sw` repository. 

#### Logs and output

For every **run** a new folder (in the format `run_<num>.XXXXXXXXXX`) is created with the outputs of the script, for example (but not limited to):
- *logs* 
- *report.md*
- plots

#### View results - report.md

### `validate` locally

The script `validate_local` for local validations is available on a separate branch called `local_val`.

## More information
For more information about the validation, see [the wiki page on patatrack.web.cern.ch](https://patatrack.web.cern.ch/patatrack/wiki/PatatrackValidation/). (might be outdated)

For more information on Patatrack, see https://patatrack.web.cern.ch/patatrack/ .  

For more insormation on CMSSW, see https://cms-sw.github.io/ .
