var exec = require('cordova/exec');

module.exports = {

    getVersionName: function (success, error) {
        exec(success, error, 'VersionName', 'getVersionName', []);
    }

};
