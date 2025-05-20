const request = require('supertest');
const app = require('./index');

describe('API Tests', () => {
    it('responds with "Hello World!"', (done) => {
        request(app.server).get('/').expect('Hello World!', done);
    });

    afterAll(() => {
        app.server.close();
    }
    );
});