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
}

const handleLocation = async () => {
    const path = window.location.pathname
    console.log(path)
    const route = routes[path] || routes[404]
    console.log(route)
    const html = await fetch(route).then((data) => data.text());
    document.getElementById("main-page").innerHTML = html
    scroll(0, 0)
};

window.route = route