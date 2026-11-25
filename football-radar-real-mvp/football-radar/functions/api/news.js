export async function onRequestGet({ env }) {
  try {
    const { results } = await env.DB.prepare(`SELECT id,title,summary,source,url,category,category_label,image,published_at FROM news ORDER BY published_at DESC LIMIT 100`).all();
    return Response.json({ news: results || [] }, { headers: { "Cache-Control": "public, max-age=60" } });
  } catch (error) { return Response.json({ error: "Database is not configured", detail: error.message }, { status: 503 }); }
}
