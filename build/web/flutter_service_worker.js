'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/animations/animation1.riv": "63cf7192f06610fad59499e37924bef8",
"assets/animations/animation2.riv": "8a0f1a7a6a7adcfb61bead100560abed",
"assets/AssetManifest.json": "a0c9322cd6305a55edb3ecc6e10d25fb",
"assets/FontManifest.json": "aa0acc571d03d4d25850444c9067f571",
"assets/fonts/CoveredByYourGrace-Regular.ttf": "1acf9002df705e347e9f05238ce9731d",
"assets/fonts/Galdeano-Regular.ttf": "b0a0c11c41ba9b2dce56f124a365ff9b",
"assets/fonts/JosefinSans-VariableFont_wght.ttf": "c83bb729af4720b12fd8e1019f7aa6ab",
"assets/fonts/LibreBarcode128Text-Regular.ttf": "67a88d2da9fe11fddbe6996bd687be08",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/images/%25C3%25BCflemeli.png": "e65d7428ec9a8262129610426b9047b7",
"assets/images/akordiyon1.jpg": "324a90ae1105b6d185ebc5ce6561c8a1",
"assets/images/akordiyon2.jpg": "3f226d1a375ad94ffda5762a9d40cb80",
"assets/images/akordiyon3.jpg": "e2d66ebb868ee49c978a4f71466346d0",
"assets/images/bateri1.jpg": "7017b3196c47fe11e3c1a34a9ea998a9",
"assets/images/bateri2.jpg": "7e4bd22b68dadd4af4ed651e4ca47e17",
"assets/images/bateri3.jpg": "27271aaafded349772d76011c8074299",
"assets/images/contact1.jpeg": "e7bd848fd856fc07a0ac4376e30b5bd0",
"assets/images/def.png": "2d96da53febbb17e0c276ee30433ec4e",
"assets/images/elektro1.jpg": "cbefaa903e2c806f0600ac96771f12ed",
"assets/images/elektro2.jpg": "3a593af42f1b3535c6a4bbc75589f3d2",
"assets/images/elektro3.jpg": "731099b5b7d1ebe0c87f6428cfdc5148",
"assets/images/elektrogitar.png": "73f089650a598def0d9973a7e8a64318",
"assets/images/gitar.png": "b01f16f39f7ad5940c7c83a26fe76450",
"assets/images/gitar1.jpg": "f5f24f6c9d82d67fb190e6fa6517ad6c",
"assets/images/gitar2.jpg": "79e733058909be598173624f875f1440",
"assets/images/gitar3.jpg": "71d70a76dc6f05fdae7780e1720558c1",
"assets/images/home.png": "08e15c63adc775b2b90d49882109202e",
"assets/images/keman.png": "e45060dcb63da44ce295fe09efcedb99",
"assets/images/keman1.jpeg": "20caa5d866c54b719b6e66b98f0c3890",
"assets/images/keman2.jpeg": "2983be272e134f1aace625d1f52bdb66",
"assets/images/keman3.jpeg": "6fec5461cba5ac37da3277ce657d9cbb",
"assets/images/map.jpeg": "b2df9cba22c3225063d01f14cfad6e37",
"assets/images/saksafon1.jpg": "950a13f51f86e6988af871a17cdcc674",
"assets/images/saksafon2.jpeg": "4797981955abe73f4e52eb9d242332f7",
"assets/images/saksafon3.jpeg": "979b88e1525f54961ab118a47bdb5518",
"assets/images/solanahtar.png": "b8716c096e4b8ae2de836bd0a6b76737",
"assets/images/tu%25C5%259Flu.png": "e67bca019a7da3f5eeb26dc7d9d28104",
"assets/images/vurmal%25C4%25B1.png": "f126004ca52a6be73559013086047074",
"assets/music/akordiyon.mp3": "35533b104d47c6e95d0e025b11f5783a",
"assets/music/bateri.mp3": "e16fddd947ded95800eb472baa78393c",
"assets/music/elektro.mp3": "b3e49eab4eecc8e37ea01637d8fda0de",
"assets/music/gitar.mp3": "e5fb83aec07f8c6f7758faba087e0926",
"assets/music/saksafon.mp3": "f6b03c3f9cf711e72a25dc323f062061",
"assets/music/violin.mp3": "fe5ca9c47c2f22cd7b3d8614bcdd654e",
"assets/NOTICES": "0912404ecfe348aa0fe4b6352659f5e9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "96e5562946c1aa6e671720f39303394a",
"/": "96e5562946c1aa6e671720f39303394a",
"main.dart.js": "94ce8ce654cce4435ae66d1ae9ec3f69",
"manifest.json": "fd091ea5bc8f3ccc10f74bd67179fb6a",
"version.json": "15235b5108d6a877ef74fe3317a96bf7"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
