CREATE TABLE IF NOT EXISTS news (id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT NOT NULL,summary TEXT,source TEXT NOT NULL,url TEXT NOT NULL UNIQUE,category TEXT NOT NULL DEFAULT 'general',category_label TEXT NOT NULL DEFAULT 'أخبار عامة',image TEXT,published_at TEXT NOT NULL);
CREATE INDEX IF NOT EXISTS idx_news_published ON news(published_at DESC);
CREATE INDEX IF NOT EXISTS idx_news_category ON news(category);
