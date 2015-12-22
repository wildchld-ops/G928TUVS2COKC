.class public Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;
.super Landroid/widget/TextView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;
.implements Landroid/app/Activity$OnShowButtonBackgroundChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverflowTextMenuButton"
.end annotation


# instance fields
.field private mBackgroundResId:I

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    const v4, 0x10102f6

    invoke-direct {p0, p2, v7, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v6, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mBackgroundResId:I

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p2, v7, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0xbb

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, p2, v4}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setClickable(Z)V

    invoke-virtual {p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setFocusable(Z)V

    invoke-virtual {p0, v6}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setEnabled(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040452

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setText(Ljava/lang/CharSequence;)V

    # getter for: Landroid/widget/ActionMenuPresenter;->SHOW_BUTTON_BACKGROUND:Z
    invoke-static {}, Landroid/widget/ActionMenuPresenter;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, p2, Landroid/app/Activity;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/R$styleable;->View:[I

    const v5, 0x10102d8

    invoke-virtual {p2, v7, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v4, 0xd

    const v5, 0x1080873

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mBackgroundResId:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v1, p2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->addOnShowButtonBackgroundChangeListener(Landroid/app/Activity$OnShowButtonBackgroundChangeListener;)V

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "show_button_background"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->onShowButtonBackgroundChange(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040452

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    # getter for: Landroid/widget/ActionMenuPresenter;->SHOW_BUTTON_BACKGROUND:Z
    invoke-static {}, Landroid/widget/ActionMenuPresenter;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->removeOnShowButtonBackgroundChangeListener(Landroid/app/Activity$OnShowButtonBackgroundChangeListener;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    return-void
.end method

.method public onShowButtonBackgroundChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x10809a3

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->mBackgroundResId:I

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$400(Landroid/widget/ActionMenuPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton$1;

    invoke-direct {v1, p0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton$1;-><init>(Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method
