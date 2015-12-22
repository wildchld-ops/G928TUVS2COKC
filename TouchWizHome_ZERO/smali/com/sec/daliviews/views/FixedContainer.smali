.class public Lcom/sec/daliviews/views/FixedContainer;
.super Lcom/sec/daliviews/views/ContainerView;
.source "FixedContainer.java"


# instance fields
.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/views/NativeViewBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerView;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ContainerView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/ContainerView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/FixedContainer;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/NativeViewBase;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/daliviews/views/FixedContainer;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/FixedContainer;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public detachAllViews()V
    .locals 1

    invoke-super {p0}, Lcom/sec/daliviews/views/ContainerView;->detachAllViews()V

    iget-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public detachView(I)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ContainerView;->detachView(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public detachView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ContainerView;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/views/NativeViewBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public insertView(ILcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerView;->insertView(ILcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public replaceView(Lcom/sec/daliviews/views/NativeViewBase;I)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerView;->replaceView(Lcom/sec/daliviews/views/NativeViewBase;I)V

    iget-object v2, p0, Lcom/sec/daliviews/views/FixedContainer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    const-string v4, "FixedContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replaceView called oldViewId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " peer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    :goto_1
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method
