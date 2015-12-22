.class Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;
.super Lcom/sec/daliviews/utils/IPoolable;
.source "BitmapText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/BitmapText$TextCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheEntry"
.end annotation


# instance fields
.field mHashValue:I

.field mNeedRehashing:Z

.field mPaint:Landroid/graphics/Paint;

.field mString:Ljava/lang/String;

.field final synthetic this$1:Lcom/sec/daliviews/views/BitmapText$TextCache;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/views/BitmapText$TextCache;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->this$1:Lcom/sec/daliviews/views/BitmapText$TextCache;

    invoke-direct {p0}, Lcom/sec/daliviews/utils/IPoolable;-><init>()V

    iput-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mString:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mNeedRehashing:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mHashValue:I

    invoke-virtual {p0, v1, v1}, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->init(Ljava/lang/String;Landroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/daliviews/views/BitmapText$TextCache;Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->this$1:Lcom/sec/daliviews/views/BitmapText$TextCache;

    invoke-direct {p0}, Lcom/sec/daliviews/utils/IPoolable;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mString:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mNeedRehashing:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mHashValue:I

    invoke-virtual {p0, p2, p3}, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->init(Ljava/lang/String;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    iget-object v0, p1, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mNeedRehashing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->this$1:Lcom/sec/daliviews/views/BitmapText$TextCache;

    iget-object v0, v0, Lcom/sec/daliviews/views/BitmapText$TextCache;->this$0:Lcom/sec/daliviews/views/BitmapText;

    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mString:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/BitmapText;->GetTextAndPaintHash(Ljava/lang/String;Landroid/graphics/Paint;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mHashValue:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mNeedRehashing:Z

    :cond_0
    iget v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mHashValue:I

    return v0
.end method

.method public init(Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mNeedRehashing:Z

    iput-object p1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mString:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public onAlloc()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->init(Ljava/lang/String;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onDealloc()V
    .locals 0

    return-void
.end method

.method public onReset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->init(Ljava/lang/String;Landroid/graphics/Paint;)V

    return-void
.end method
