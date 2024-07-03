/**
 * @Before(event = "READ", entity = "cdaydemoSrv.Project")
 */
module.exports = function(req) {
  req.query.where('Confidential !=', true);
}