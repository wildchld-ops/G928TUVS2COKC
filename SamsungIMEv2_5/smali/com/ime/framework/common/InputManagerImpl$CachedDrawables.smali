.class final Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;
.super Ljava/lang/Object;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CachedDrawables"
.end annotation


# static fields
.field private static final CHAR_DELIMITER:Ljava/lang/String; = "_"

.field private static final MAX_CACHE_SIZE:I = 0x5


# instance fields
.field private final mLruDrawables:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->orientation:I

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->mLruDrawables:Landroid/util/LruCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ime/framework/common/InputManagerImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;-><init>()V

    return-void
.end method

.method private static generateKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->mLruDrawables:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public getCachedDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->mLruDrawables:Landroid/util/LruCache;

    invoke-static {p1, p2}, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->generateKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->orientation:I

    return v0
.end method

.method public putCacheDrawable(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putCacheDrawable inputModule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->mLruDrawables:Landroid/util/LruCache;

    invoke-static {p1, p2}, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->generateKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeCachedItem(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->mLruDrawables:Landroid/util/LruCache;

    invoke-static {p1, p2}, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->generateKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->orientation:I

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->mLruDrawables:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method
