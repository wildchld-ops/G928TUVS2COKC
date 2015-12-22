.class public Lcom/android/systemui/statusbar/NotificationCustomViewWrapper;
.super Lcom/android/systemui/statusbar/NotificationViewWrapper;
.source "NotificationCustomViewWrapper.java"


# instance fields
.field private final mInvertHelper:Lcom/android/systemui/ViewInvertHelper;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationViewWrapper;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, p1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    return-void
.end method


# virtual methods
.method public setDark(ZZJ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0
.end method
