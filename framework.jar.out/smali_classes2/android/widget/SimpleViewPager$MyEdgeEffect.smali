.class public Landroid/widget/SimpleViewPager$MyEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SimpleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyEdgeEffect"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPull2(F)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public onRelease2()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SimpleViewPager$MyEdgeEffect;->onRelease()V

    invoke-super {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method
