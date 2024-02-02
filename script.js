const headerTemplate = document.createElement('template');

headerTemplate.innerHTML = 
`
    <div class="Header" style="height: 60px;">
    <div style="height: 100%; position: relative; left: 0%; width: 20%;">
        <a href="../index.html"><img class = "imgButton"; src = "../Images/SiteIconsWhite/Icon.png" style="height: 100%;"></a>
    </div>
    <div style="height: 100%; text-align: right; left: 20%; width: 80%; overflow: hidden;" >
        <a href="../Pages/nightmarearts.html"><img class = "imgButton"; src = "../Images/SiteIconsWhite/NightmareArts.png" style="height: 100%;"></a>
        <a href="../Pages/games.html"><img class = "imgButton"; src = "../Images/SiteIconsWhite/Games.png" style="height: 100%;"></a>
        <a href="../Pages/pixelart.html"><img class = "imgButton"; src = "../Images/SiteIconsWhite/PixelArt.png" style="height: 100%;"></a>
        <a href="../Pages/programming.html"><img class = "imgButton"; src = "../Images/SiteIconsWhite/Programming.png" style="height: 100%;"></a>
        <a href="../Pages/tools.html"><img class = "imgButton"; src = "../Images/SiteIconsWhite/Tools.png" style="height: 100%;"></a>
    </div>
    </div>
`;

document.body.prepend(headerTemplate.content);