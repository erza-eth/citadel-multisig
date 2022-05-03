// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

interface ICitadelMinter {
    event CitadelDistribution(
        uint256 fundingAmount,
        uint256 stakingAmount,
        uint256 lockingAmount
    );
    event CitadelDistributionSplitSet(
        uint256 fundingBps,
        uint256 stakingBps,
        uint256 lockingBps
    );
    event CitadelDistributionToFunding(
        uint256 startTime,
        uint256 endTime,
        uint256 citadelAmount
    );
    event CitadelDistributionToFundingPool(
        uint256 startTime,
        uint256 endTime,
        address pool,
        uint256 citadelAmount
    );
    event CitadelDistributionToLocking(
        uint256 startTime,
        uint256 endTime,
        uint256 citadelAmount,
        uint256 xCitadelAmount
    );
    event CitadelDistributionToStaking(
        uint256 startTime,
        uint256 endTime,
        uint256 citadelAmount
    );
    event FundingPoolWeightSet(
        address pool,
        uint256 weight,
        uint256 totalFundingPoolWeight
    );
    event Paused(address account);
    event Unpaused(address account);

    function CONTRACT_GOVERNANCE_ROLE() external view returns (bytes32);

    function PAUSER_ROLE() external view returns (bytes32);

    function POLICY_OPERATIONS_ROLE() external view returns (bytes32);

    function UNPAUSER_ROLE() external view returns (bytes32);

    function __GlobalAccessControlManaged_init(address _globalAccessControl)
        external;

    function citadelToken() external view returns (address);

    function fundingBps() external view returns (uint256);

    function fundingPoolWeights(address) external view returns (uint256);

    function gac() external view returns (address);

    function getFundingPoolWeights()
        external
        view
        returns (address[] memory pools, uint256[] memory weights);

    function initialize(
        address _gac,
        address _citadelToken,
        address _xCitadel,
        address _xCitadelLocker,
        address _supplySchedule
    ) external;

    function initializeLastMintTimestamp() external;

    function lastMintTimestamp() external view returns (uint256);

    function lockingBps() external view returns (uint256);

    function mintAndDistribute() external;

    function pause() external;

    function paused() external view returns (bool);

    function setCitadelDistributionSplit(
        uint256 _fundingBps,
        uint256 _stakingBps,
        uint256 _lockingBps
    ) external;

    function setFundingPoolWeight(address _pool, uint256 _weight) external;

    function stakingBps() external view returns (uint256);

    function supplySchedule() external view returns (address);

    function totalFundingPoolWeight() external view returns (uint256);

    function unpause() external;

    function xCitadel() external view returns (address);

    function xCitadelLocker() external view returns (address);
}

// THIS FILE WAS AUTOGENERATED FROM THE FOLLOWING ABI JSON:
/*
[{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"fundingAmount","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"stakingAmount","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"lockingAmount","type":"uint256"}],"name":"CitadelDistribution","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"fundingBps","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"stakingBps","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"lockingBps","type":"uint256"}],"name":"CitadelDistributionSplitSet","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"startTime","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"endTime","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"citadelAmount","type":"uint256"}],"name":"CitadelDistributionToFunding","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"startTime","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"endTime","type":"uint256"},{"indexed":false,"internalType":"address","name":"pool","type":"address"},{"indexed":false,"internalType":"uint256","name":"citadelAmount","type":"uint256"}],"name":"CitadelDistributionToFundingPool","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"startTime","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"endTime","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"citadelAmount","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"xCitadelAmount","type":"uint256"}],"name":"CitadelDistributionToLocking","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"startTime","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"endTime","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"citadelAmount","type":"uint256"}],"name":"CitadelDistributionToStaking","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"pool","type":"address"},{"indexed":false,"internalType":"uint256","name":"weight","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"totalFundingPoolWeight","type":"uint256"}],"name":"FundingPoolWeightSet","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"Paused","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"Unpaused","type":"event"},{"inputs":[],"name":"CONTRACT_GOVERNANCE_ROLE","outputs":[{"internalType":"bytes32","name":"","type":"bytes32"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"PAUSER_ROLE","outputs":[{"internalType":"bytes32","name":"","type":"bytes32"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"POLICY_OPERATIONS_ROLE","outputs":[{"internalType":"bytes32","name":"","type":"bytes32"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"UNPAUSER_ROLE","outputs":[{"internalType":"bytes32","name":"","type":"bytes32"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"_globalAccessControl","type":"address"}],"name":"__GlobalAccessControlManaged_init","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"citadelToken","outputs":[{"internalType":"contract ICitadelToken","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"fundingBps","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"fundingPoolWeights","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"gac","outputs":[{"internalType":"contract IGac","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getFundingPoolWeights","outputs":[{"internalType":"address[]","name":"pools","type":"address[]"},{"internalType":"uint256[]","name":"weights","type":"uint256[]"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"_gac","type":"address"},{"internalType":"address","name":"_citadelToken","type":"address"},{"internalType":"address","name":"_xCitadel","type":"address"},{"internalType":"address","name":"_xCitadelLocker","type":"address"},{"internalType":"address","name":"_supplySchedule","type":"address"}],"name":"initialize","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"initializeLastMintTimestamp","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"lastMintTimestamp","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"lockingBps","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"mintAndDistribute","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"pause","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"paused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"_fundingBps","type":"uint256"},{"internalType":"uint256","name":"_stakingBps","type":"uint256"},{"internalType":"uint256","name":"_lockingBps","type":"uint256"}],"name":"setCitadelDistributionSplit","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"_pool","type":"address"},{"internalType":"uint256","name":"_weight","type":"uint256"}],"name":"setFundingPoolWeight","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"stakingBps","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"supplySchedule","outputs":[{"internalType":"contract ISupplySchedule","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"totalFundingPoolWeight","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"unpause","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"xCitadel","outputs":[{"internalType":"contract IVault","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"xCitadelLocker","outputs":[{"internalType":"contract IStakedCitadelLocker","name":"","type":"address"}],"stateMutability":"view","type":"function"}]
*/