const core = require('@actions/core');
const github = require('@actions/github');

try {
    // `who-to-greet` input defined in action metadata file
    const i1 = core.getInput('input1');
    const i2 = core.getInput('input2');
    console.log(`Hello ${i1}!`);
    console.log(`Hello ${i2}!`);
    console.log(`Env ${process.env.GITHUB_REPOSITORY}!`);
    console.log(`Env local ${process.env.MYDATA}!`);
    core.setOutput("output1", '10');
    const payload = JSON.stringify(github.context.payload, undefined, 2)
    console.log(`The event payload: ${payload}`);
    core.notice("TTTThis is notice");
    core.warning("TTTThis is warning");
    core.error("TTTThis is error");
  } catch (error) {
    core.setFailed(error.message);
  }