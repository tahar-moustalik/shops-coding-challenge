function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        console.log("Geolocation is not supported by this browser.");
    }
}

function showPosition(position) {
    if (position.coords.latitude != null) {
        let user_lat = position.coords.latitude;
        let user_lng = position.coords.longitude;
        document.getElementById('user_lat').value = user_lat;
        document.getElementById('user_lng').value = user_lng;
    }
}
