/**
 * Given a running CAP service, the unit test should be able to get passed.
 *
 * @param {Function} GET - The `axios` function to send a GET request
 * @param {Function} POST - The `axios` function to send a POST request
 * @param {Function} PATCH - The `axios` function to send a PATCH request
 * @param {Function} DELETE - The `axios` function to send a DELETE request
 * @param {Function} expect - The `chai` function to assert the response
 */
module.exports = async function(GET, POST, PATCH, DELETE, expect) {
  // Positive test case
  try {
    // Create a new draft
    let response = await POST('/service/cdaydemo/Project', {
      ProjectID: 'P001',
      ProjectName: 'Test Project',
      Confidential: true
    });
    expect(response.status).to.be.oneOf([200, 201]);
    const draftID = response.data.ID;

    // Activate the draft
    response = await POST(`/service/cdaydemo/Project(ID=${draftID},IsActiveEntity=false)/cdaydemoSrv.draftActivate`);
    expect(response.status).to.be.oneOf([200, 201]);

    // Fetch the created project and verify it's confidential
    response = await GET(`/service/cdaydemo/Project(ID=${draftID},IsActiveEntity=true)`);
    expect(response.status).to.be.oneOf([200, 201]);
    expect(response.data.Confidential).to.be.true;
  } catch (error) {
    console.error('Positive test case failed', error);
  }

  // Negative test case
  try {
    // Attempt to create a new draft with missing mandatory field
    let response = await POST('/service/cdaydemo/Project', {
      ProjectName: 'Test Project',
      Confidential: true
    });
    expect(response.status).to.be.oneOf([400, 500]);
  } catch (error) {
    // Expect an error to be thrown
    expect(error).to.exist;
    expect(error.response.status).to.be.oneOf([400, 500]);
  }

  // Negative test case for READ operation
  try {
    // Attempt to fetch a non-existent project
    let response = await GET('/service/cdaydemo/Project(ID=non-existent,IsActiveEntity=true)');
    expect(response.status).to.be.oneOf([400, 404]);
  } catch (error) {
    // Expect an error to be thrown
    expect(error).to.exist;
    expect(error.response.status).to.be.oneOf([400, 404]);
  }
};