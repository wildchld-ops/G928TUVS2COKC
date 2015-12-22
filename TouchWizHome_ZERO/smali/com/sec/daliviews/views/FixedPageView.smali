.class public Lcom/sec/daliviews/views/FixedPageView;
.super Lcom/sec/daliviews/views/PageView;
.source "FixedPageView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/PageView;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/PageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private native getFirstChildItemId(J)I
.end method

.method private native setAccessibilityMode(JZ)V
.end method


# virtual methods
.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/PageView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/FixedPageView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method protected native create()J
.end method

.method public getDefaultMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/FixedPageView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ContainerViewBase;->getDefaultMode()I

    move-result v0

    return v0
.end method

.method public getFirstItem()Lcom/sec/daliviews/views/Item;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/FixedPageView;->getmNPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/daliviews/views/FixedPageView;->getFirstChildItemId(J)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    return-object v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAccessibilityMode(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/FixedPageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/FixedPageView;->setAccessibilityMode(JZ)V

    return-void
.end method
