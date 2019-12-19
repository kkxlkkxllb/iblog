/**
 * Welcome to your Workbox-powered service worker!
 *
 * You'll need to register this file in your web app and you should
 * disable HTTP caching for this file too.
 * See https://goo.gl/nhQhGp
 *
 * The rest of the code is auto-generated. Please don't update this file
 * directly; instead, make changes to your Workbox build configuration
 * and re-run your build process.
 * See https://goo.gl/2aRDsh
 */

importScripts("https://storage.googleapis.com/workbox-cdn/releases/3.6.3/workbox-sw.js");

importScripts(
  "/precache-manifest.c969300e32af14b7b316be4508dac200.js"
);

workbox.core.setCacheNameDetails({prefix: "up17orgs"});

workbox.skipWaiting();
workbox.clientsClaim();

/**
 * The workboxSW.precacheAndRoute() method efficiently caches and responds to
 * requests for URLs in the manifest.
 * See https://goo.gl/S9QRab
 */
self.__precacheManifest = [].concat(self.__precacheManifest || []);
workbox.precaching.suppressWarnings();
workbox.precaching.precacheAndRoute(self.__precacheManifest, {});

workbox.routing.registerRoute("index.html", workbox.strategies.networkFirst(), 'GET');
workbox.routing.registerRoute("/encoderWorker.min.js", workbox.strategies.cacheFirst(), 'GET');
workbox.routing.registerRoute(/^https:\/\/fonts.googleapis.com\//, workbox.strategies.cacheFirst(), 'GET');
workbox.routing.registerRoute(/^https:\/\/libiao.ubairn.com\//, workbox.strategies.cacheFirst(), 'GET');
