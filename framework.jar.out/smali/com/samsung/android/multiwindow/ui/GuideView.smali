.class public Lcom/samsung/android/multiwindow/ui/GuideView;
.super Landroid/widget/FrameLayout;
.source "GuideView.java"


# static fields
.field public static final DOCKING:I = 0x2

.field public static final MOVE:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GuideView"

.field public static final WARNING:I = 0x1

.field public static final WARNING_NOT_SUPPORT:I = 0x4


# instance fields
.field private mAttached:Z

.field private mBorderView:Landroid/view/View;

.field private mDimAmount:F

.field mDisplay:Landroid/view/Display;

.field mDockingHightlightColor:I

.field private mFakeHeaderView:Landroid/widget/ImageView;

.field private mGuideDrawable:Landroid/graphics/drawable/Drawable;

.field private mGuidePaddingBottom:I

.field private mGuidePaddingLeft:I

.field private mGuidePaddingRight:I

.field private mGuidePaddingTop:I

.field private mGuideState:I

.field private mHeaderViewVisibility:Z

.field private mIsSupportWindowController:Z

.field private mLastRect:Landroid/graphics/Rect;

.field private mMultiWindowFlags:I

.field private mShowing:Z

.field private mToken:Landroid/os/IBinder;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;ILandroid/view/Display;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;ILandroid/view/Display;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    iput v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mHeaderViewVisibility:Z

    const/16 v0, 0x8d4

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowType:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    iput v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDisplay:Landroid/view/Display;

    iput-object p2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mToken:Landroid/os/IBinder;

    iput p3, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowType:I

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportOpenTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, -0x67000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v1, "MultiWindow GuideView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mMultiWindowFlags:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v0
.end method

.method private refreshBackground()V
    .locals 5

    const v1, 0x10805c3

    const v4, 0x108059b

    const v3, 0x1080584

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x10805c1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const v1, 0x1080583

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x10805ba

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDockingHightlightColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->removeAllViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGuideState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    return v0
.end method

.method public getGuideViewAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    return v0
.end method

.method public getLastBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 8

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    if-nez v5, :cond_0

    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-nez v5, :cond_1

    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->refreshBackground()V

    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->resetResolvedLayoutDirection()V

    invoke-virtual {p0, v7}, Lcom/samsung/android/multiwindow/ui/GuideView;->setLayoutDirection(I)V

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5, p0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v7, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mAttached:Z

    :cond_3
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    return-void
.end method

.method public setDimAmount(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mDimAmount:F

    return-void
.end method

.method public setFakeHeaderVisibility(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mHeaderViewVisibility:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setGuideBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->refreshBackground()V

    return-void
.end method

.method public setGuidePadding(IIII)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    iput p2, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    iput p3, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingRight:I

    iput p4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingBottom:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGuideState(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/GuideView;->refreshBackground()V

    goto :goto_0
.end method

.method public setMultiWindowFlags(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mMultiWindowFlags:I

    return-void
.end method

.method public show(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIIIZ)V

    return-void
.end method

.method public show(IIIIZ)V
    .locals 7

    const/4 v6, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "GuideView"

    const-string/jumbo v5, "mBorder or mFakeHeaderView is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    add-int/2addr v4, p3

    iget v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingRight:I

    add-int v2, v4, v5

    iget v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    add-int/2addr v4, p4

    iget v5, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingBottom:I

    add-int v1, v4, v5

    iget v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingLeft:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuidePaddingTop:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz p5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_6

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v4, p3, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mIsSupportWindowController:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mGuideState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V

    :cond_4
    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mShowing:Z

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    iget-object v4, p0, Lcom/samsung/android/multiwindow/ui/GuideView;->mLastRect:Landroid/graphics/Rect;

    add-int v5, p1, p3

    add-int v6, p2, p4

    invoke-virtual {v4, p1, p2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_6
    const/4 v4, -0x1

    :try_start_1
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setFakeHeaderVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
