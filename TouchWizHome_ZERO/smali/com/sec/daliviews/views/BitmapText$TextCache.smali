.class public Lcom/sec/daliviews/views/BitmapText$TextCache;
.super Ljava/lang/Object;
.source "BitmapText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/BitmapText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;,
        Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;
    }
.end annotation


# instance fields
.field private debugCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBackBufferIndex:I

.field mCacheData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mCacheDataBuffers:[Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;

.field mCurrentBufferIndex:I

.field mTempEntry:Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

.field final sPool:Lcom/sec/daliviews/utils/SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/daliviews/utils/SynchronizedPool",
            "<",
            "Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/daliviews/views/BitmapText;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/views/BitmapText;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->this$0:Lcom/sec/daliviews/views/BitmapText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/sec/daliviews/utils/SynchronizedPool;

    const-class v2, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    const/16 v3, 0x1000

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/daliviews/utils/SynchronizedPool;-><init>(Ljava/lang/Object;Ljava/lang/Class;I)V

    iput-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->sPool:Lcom/sec/daliviews/utils/SynchronizedPool;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;

    iput-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheDataBuffers:[Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;

    iput v5, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCurrentBufferIndex:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mBackBufferIndex:I

    iput-object v4, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheData:Ljava/util/HashMap;

    new-instance v1, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    invoke-direct {v1, p0, v4, v4}, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;-><init>(Lcom/sec/daliviews/views/BitmapText$TextCache;Ljava/lang/String;Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mTempEntry:Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->debugCache:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheDataBuffers:[Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheDataBuffers:[Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;

    new-instance v2, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;

    invoke-direct {v2, p0}, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;-><init>(Lcom/sec/daliviews/views/BitmapText$TextCache;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheDataBuffers:[Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;->data:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheData:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getBitmapNativeHandle(Ljava/lang/String;Landroid/graphics/Paint;)J
    .locals 4

    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mTempEntry:Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    iput-object p2, v1, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mTempEntry:Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    iput-object p1, v1, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mTempEntry:Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->mNeedRehashing:Z

    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheDataBuffers:[Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;

    iget v2, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mBackBufferIndex:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;->data:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mTempEntry:Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheData:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mTempEntry:Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getRedundantBitmapHandles(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheDataBuffers:[Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;

    iget v8, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mBackBufferIndex:I

    aget-object v7, v7, v8

    iget-object v0, v7, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;->data:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheDataBuffers:[Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;

    iget v8, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCurrentBufferIndex:I

    aget-object v7, v7, v8

    iget-object v2, v7, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-interface {v3, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public putBitmapNativeHandle(Ljava/lang/String;Landroid/graphics/Paint;J)V
    .locals 3

    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheData:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->sPool:Lcom/sec/daliviews/utils/SynchronizedPool;

    invoke-virtual {v1}, Lcom/sec/daliviews/utils/SynchronizedPool;->Alloc()Lcom/sec/daliviews/utils/IPoolable;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    invoke-virtual {v0, p1, p2}, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->init(Ljava/lang/String;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheData:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public swapBuffers()V
    .locals 5

    iget v3, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCurrentBufferIndex:I

    iput v3, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mBackBufferIndex:I

    iget v3, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCurrentBufferIndex:I

    xor-int/lit8 v3, v3, -0x1

    and-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCurrentBufferIndex:I

    iget-object v3, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheDataBuffers:[Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;

    iget v4, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCurrentBufferIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheBuffer;->data:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheData:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/BitmapText$TextCache$CacheEntry;->Release()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/daliviews/views/BitmapText$TextCache;->mCacheData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    return-void
.end method
