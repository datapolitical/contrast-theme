Crittr({
    urls: ['https://www.chrisfnicholson.com'],
    device: {
        width: 600,
        height: 1000,
    },
})
    .then(({ critical, rest }) => {
        console.log(critical);
    })
    .catch(err => {
        console.error(err);
    });