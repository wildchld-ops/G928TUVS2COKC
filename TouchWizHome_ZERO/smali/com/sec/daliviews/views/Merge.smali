.class public Lcom/sec/daliviews/views/Merge;
.super Lcom/sec/daliviews/views/ContainerView;
.source "Merge.java"


# instance fields
.field private mMergeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/views/NativeViewBase;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Lcom/sec/daliviews/views/ContainerViewBase;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerView;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Merge;->mMergeViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerView;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Merge;->mMergeViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Merge;->mMergeViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/daliviews/views/Merge;->mParent:Lcom/sec/daliviews/views/ContainerViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/Merge;->mParent:Lcom/sec/daliviews/views/ContainerViewBase;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public addViews([Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/daliviews/views/Merge;->mMergeViews:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/daliviews/views/Merge;->mParent:Lcom/sec/daliviews/views/ContainerViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/daliviews/views/Merge;->mParent:Lcom/sec/daliviews/views/ContainerViewBase;

    invoke-virtual {v1, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->addViews([Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    return-void
.end method

.method protected final create()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMergeViews()[Lcom/sec/daliviews/views/NativeViewBase;
    .locals 3

    iget-object v2, p0, Lcom/sec/daliviews/views/Merge;->mMergeViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/daliviews/views/Merge;->mMergeViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/daliviews/views/Merge;->mMergeViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/NativeViewBase;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getParentView()Lcom/sec/daliviews/views/ContainerViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Merge;->mParent:Lcom/sec/daliviews/views/ContainerViewBase;

    return-object v0
.end method

.method public insertView(ILcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Merge;->mMergeViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/daliviews/views/Merge;->mParent:Lcom/sec/daliviews/views/ContainerViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/Merge;->mParent:Lcom/sec/daliviews/views/ContainerViewBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase;->insertView(ILcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    return-void
.end method

.method public final isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setParentView(Lcom/sec/daliviews/views/ContainerViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/Merge;->mParent:Lcom/sec/daliviews/views/ContainerViewBase;

    return-void
.end method
