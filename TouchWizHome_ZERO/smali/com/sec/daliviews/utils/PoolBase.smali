.class public abstract Lcom/sec/daliviews/utils/PoolBase;
.super Ljava/lang/Object;
.source "PoolBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract Alloc()Lcom/sec/daliviews/utils/IPoolable;
.end method

.method protected abstract Dealloc(Lcom/sec/daliviews/utils/IPoolable;)V
.end method

.method protected abstract Mark()V
.end method

.method protected abstract Reset()V
.end method

.method protected abstract Rollback()V
.end method
