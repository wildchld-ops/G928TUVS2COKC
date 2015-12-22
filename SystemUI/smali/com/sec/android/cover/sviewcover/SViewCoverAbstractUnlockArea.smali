.class public abstract Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
.super Landroid/widget/LinearLayout;
.source "SViewCoverAbstractUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract handleHide()V
.end method

.method public abstract handleShow()V
.end method

.method public abstract initMultiTouched()V
.end method

.method public abstract setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
.end method

.method public abstract setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
.end method

.method public abstract setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
.end method

.method public abstract setPageNavigationVisibility(I)V
.end method

.method public abstract setPagerNavigation(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;)V
.end method

.method public setPreviewRootView(Landroid/widget/FrameLayout;)V
    .locals 0

    return-void
.end method

.method public abstract updateNotiArea(II)V
.end method

.method public abstract updateNotiPageButton(II)V
.end method
