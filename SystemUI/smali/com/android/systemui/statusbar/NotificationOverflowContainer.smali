.class public Lcom/android/systemui/statusbar/NotificationOverflowContainer;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "NotificationOverflowContainer.java"


# instance fields
.field private mDark:Z

.field private mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

.field private mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    const v0, 0x7f0e03de

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    const v0, 0x7f0e03dc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->setMoreText(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    const v1, 0x7f0e03dd

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->setOverflowIndicator(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    const v1, 0x7f0e03db

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setNotificationContainer(Z)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mDark:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mDark:Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0
.end method
