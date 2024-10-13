'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "a8fa22727137286d3553a01909088416",
"version.json": "8f5cf3b0f48fbc2d0d5b1799740aa1ea",
"index.html": "a4a024a01728d834bb74db7734e3fbed",
"/": "a4a024a01728d834bb74db7734e3fbed",
"main.dart.js": "d56701cb674ac040fa4f588c0acb4ee9",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"assets/AssetManifest.json": "9a4ed490b9168bdcdae742f724156b41",
"assets/NOTICES": "4a378b7255994c3de8475b0761b4f8ba",
"assets/FontManifest.json": "6d7bf0d7c489d6724ff0c728629cbd1b",
"assets/AssetManifest.bin.json": "0c977a46a88c509d7cbab6b4bc215c2a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a4152f3cdbc41b71ffd1193998a26ddc",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "b5ccecc94516ddc8c07b60203a2e777c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "105d71a0b58e7c12439b5cefb87ddc7f",
"assets/fonts/agustina/agustina.otf": "7b9833076716a8d14eec0cf885a3153c",
"assets/fonts/montserrat/montserrat.ttf": "ee6539921d713482b8ccd4d0d23961bb",
"assets/fonts/MaterialIcons-Regular.otf": "a50f0955a932b0a6959ac5b2c13d6e1e",
"assets/fonts/poppins/Poppins-Light.ttf": "f6ea751e936ade6edcd03a26b8153b4a",
"assets/fonts/poppins/Poppins-Medium.ttf": "f61a4eb27371b7453bf5b12ab3648b9e",
"assets/fonts/poppins/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/fonts/poppins/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/fonts/poppins/Poppins-SemiBold.ttf": "4cdacb8f89d588d69e8570edcbe49507",
"assets/fonts/poppins/Poppins-Italic.ttf": "5e956c44060a7b3c0e39819ae390ab15",
"assets/assets/images/developer.png": "a1b30fb010a3d15e0dfc916fb6034beb",
"assets/assets/images/pardeep4.jfif": "7dba87ea7d83352725311aaa52ba73bb",
"assets/assets/images/pardeep5.JPG": "991b19c1532321d552743b1fb000c799",
"assets/assets/images/pardeep.png": "44fd5e8addfd5f21dcb2fe0d5411ecf9",
"assets/assets/images/pardeep2.jfif": "291dbd63eb9855d9778df8138aa2a146",
"assets/assets/images/pardeep3.jfif": "866ad9400ddc5bd3b1c003bfdc9d8393",
"assets/assets/images/g.png": "877fee72718e7cb27556054d66255b12",
"assets/assets/logo/instagram.png": "e5093f23dd7a8186fe5d3131477575b3",
"assets/assets/logo/github.png": "142f99d431654ebe582a636d720d3b5f",
"assets/assets/logo/twitter.png": "d329ea55154f3a2f7e449a8486adc726",
"assets/assets/logo/linkedin.png": "c54b5a6d947077e4151ea658fe90c648",
"assets/assets/logo/github-black.png": "47afb6a7dda23324825f4908d57ca360",
"assets/assets/logo/facebook.png": "3137757a08b3c6d5fbf023c4e8ab644d",
"assets/assets/icons/bootstrap.svg": "c76fa2ef8bce9784bd01defdaca2c725",
"assets/assets/icons/figma.svg": "3b4c426dbbcc25a0095228af9e328322",
"assets/assets/icons/mongo.svg": "06dd048e873d49932aa9d0a94b79c972",
"assets/assets/icons/js.svg": "9abf1dd81e0bc48d9c77f840e3410dfb",
"assets/assets/icons/express.svg": "ebd3647e8a8ede235a1a55be4ce72743",
"assets/assets/icons/firebase.svg": "1e6703b786837f2d5b80d7a7bc3dbb84",
"assets/assets/icons/github.svg": "326e390c9c9c9461b44230fd561ce6ae",
"assets/assets/icons/sql.svg": "5433d59214a5d8c71ca6cd96e74eec04",
"assets/assets/icons/postgres.svg": "e98dedb84201406879a9b764fe922e11",
"assets/assets/icons/flutter.svg": "3093fb700a6cb4bcd6e2db3a1ea136bb",
"assets/assets/icons/adobexd.svg": "b8da2ed8570c5aa71d61402e90954300",
"assets/assets/icons/github.png": "ce3b4eb69ebfc35b42c34041024ba781",
"assets/assets/icons/git.svg": "631bfee78570c6e6931d654cc76b89c8",
"assets/assets/icons/notion.svg": "949de186f3eae5ebe208f7f52fa4e55e",
"assets/assets/icons/flask.svg": "e6867ecd77262949f3c22d44c02c46c8",
"assets/assets/icons/jira.svg": "5e9f8380013984d99f07cf3bceba42d3",
"assets/assets/icons/dart.svg": "cb365d2438413170998483cf8785e182",
"assets/assets/icons/css.svg": "ada650097f50fd5c8d21fe6beee3ae9f",
"assets/assets/icons/google_play.svg": "fd5488da1f69d97a6cceab0e97b5f455",
"assets/assets/icons/api.svg": "65c19716cde7fd4c78d62fcb533574de",
"assets/assets/icons/web.svg": "e07725251bf3df3b788a6ace26d0b0da",
"assets/assets/icons/trello.svg": "b2c1c2dd285ee2c88cb1e502e547b8f5",
"assets/assets/icons/dart_frog.svg": "1f51ec4251bb4acb1d5f9df21590cecd",
"assets/assets/icons/html.svg": "9eb69e3b5b90a2b8e93494c2a464200f",
"assets/assets/icons/node.svg": "2308cb2159cc6e88cd9750c6e1daa734",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
