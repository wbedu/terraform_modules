// src/index.ts
var index_default = {
  async fetch(request) {
    const url = new URL(request.url);
    if (url.pathname === "/hello") {
      return new Response(JSON.stringify({ message: "Hello new model" }), {
        headers: { "Content-Type": "application/json" }
      });
    }
    return new Response("Not found", { status: 404 });
  }
};
export {
  index_default as default
};
