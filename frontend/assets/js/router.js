const route = (event) => {
    event = event || window.event
    event.preventDefault();
    console.log(event)
    window.history.pushState({}, "", event.target.href)
    handleLocation();
}

const routes = {
    404: "/pages/404.html",
    "/careers": "/pages/careers.html",
    "/privacy-policy": "/pages/privacy.html",
    "/terms-and-conditions": "/pages/tnc.html",
}

const handleLocation = async () => {
    const path = window.location.pathname
    const route = routes[path] || routes[404]
    const html = await fetch(route).then((data) => data.text());
    document.getElementById("main-page").innerHTML = html
    scroll(500, 500)
};

window.route = route