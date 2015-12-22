.class public Lcom/sec/daliviews/views/PageView$DynamicPageItem;
.super Lcom/sec/daliviews/views/Item;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicPageItem"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/sec/daliviews/views/Item;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;->setCellY(I)V

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;->setSpanX(I)V

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;->setSpanY(I)V

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;->setCellX(I)V

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;->setPos(I)V

    return-void
.end method


# virtual methods
.method public containsKeyword(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method init(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;->setCellX(I)V

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;->setPos(I)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PageView$DynamicPageItem;->initParams()V

    return-void
.end method

.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    return-void
.end method
