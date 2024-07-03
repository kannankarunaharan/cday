const test_project_logic = require('./code/test-project-logic');
const cds = require('@sap/cds/lib');
const {
  GET,
  POST,
  PATCH,
  DELETE,
  expect
} = cds.test(__dirname + '../../', '--with-mocks');
cds.env.requires.auth = {
  kind: "dummy"
};
describe('Service Testing', () => {
  it('test project-logic', async () => {
    await test_project_logic(GET, POST, PATCH, DELETE, expect);
  });
});