exports.health = async function (req, res, nxt) {
    try {
        const status = {
            status: 'OK',
            uptime: process.uptime(),
            memoryUsage: process.memoryUsage(),
          };
          res.json(status);

    } catch (error) {
        addErrorLog(error.message);
        res.json({ statusCode: 500, result: null, message: error.message })
    }
}