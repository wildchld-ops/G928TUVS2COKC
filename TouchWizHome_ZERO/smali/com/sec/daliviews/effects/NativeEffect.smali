.class public abstract Lcom/sec/daliviews/effects/NativeEffect;
.super Lcom/sec/daliviews/views/PeerBase;
.source "NativeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/effects/NativeEffect$NativeEffectListener;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/effects/NativeEffect$NativeEffectListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/effects/NativeEffect;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/effects/NativeEffect;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected OnEffectFinished(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/daliviews/effects/NativeEffect;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/daliviews/effects/NativeEffect;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/effects/NativeEffect$NativeEffectListener;

    invoke-interface {v1, p1}, Lcom/sec/daliviews/effects/NativeEffect$NativeEffectListener;->onNativeEffectFinished(Lcom/sec/daliviews/views/NativeViewBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addListener(Lcom/sec/daliviews/effects/NativeEffect$NativeEffectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/effects/NativeEffect;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/effects/NativeEffect;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/sec/daliviews/effects/NativeEffect$NativeEffectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/effects/NativeEffect;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
