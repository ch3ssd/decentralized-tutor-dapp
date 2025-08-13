    const hre = require("hardhat");

    async function main() {
      console.log("Deploying contracts...");

      // 1. Deploy the StudyToken contract first.
      const StudyToken = await hre.ethers.getContractFactory("StudyToken");
      const studyToken = await StudyToken.deploy();
      await studyToken.waitForDeployment();
      const studyTokenAddress = await studyToken.getAddress();
      console.log(`✅ StudyToken deployed to: ${studyTokenAddress}`);

      // 2. Deploy the PeerTutor contract, providing the StudyToken address to its constructor.
      const PeerTutor = await hre.ethers.getContractFactory("PeerTutor");
      const peerTutor = await PeerTutor.deploy(studyTokenAddress);
      await peerTutor.waitForDeployment();
      const peerTutorAddress = await peerTutor.getAddress();
      console.log(`✅ PeerTutor deployed to: ${peerTutorAddress}`);
    }

    main().catch((error) => {
      console.error(error);
      process.exitCode = 1;
    });
