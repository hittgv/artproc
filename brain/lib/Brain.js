function Brain() {
    const ExternalHttpGateway = require("external-http-gateway");
    const gateway = new ExternalHttpGateway();

    return this;
}

module.exports = Brain;
