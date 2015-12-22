.class public abstract Lcom/sec/daliviews/utils/IPoolable;
.super Ljava/lang/Object;
.source "IPoolable.java"


# instance fields
.field mOwnerPool:Lcom/sec/daliviews/utils/PoolBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/utils/IPoolable;->mOwnerPool:Lcom/sec/daliviews/utils/PoolBase;

    return-void
.end method


# virtual methods
.method public final Release()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/utils/IPoolable;->mOwnerPool:Lcom/sec/daliviews/utils/PoolBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/utils/IPoolable;->mOwnerPool:Lcom/sec/daliviews/utils/PoolBase;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/utils/PoolBase;->Dealloc(Lcom/sec/daliviews/utils/IPoolable;)V

    :cond_0
    return-void
.end method

.method public abstract onAlloc()V
.end method

.method public abstract onDealloc()V
.end method

.method public abstract onReset()V
.end method
