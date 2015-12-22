.class public Lcom/android/systemui/statusbar/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "NotificationContentView.java"


# static fields
.field private static final ANIMATION_DURATION_LENGTH:J = 0xaaL


# instance fields
.field private mActualHeight:I

.field private mAnimate:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipTopAmount:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedVisible:Z

.field private mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

.field private mDark:Z

.field private mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mExpandedChild:Landroid/view/View;

.field private final mFadePaint:Landroid/graphics/Paint;

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mSmallHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedVisible:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->reset(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/NotificationContentView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method private runSwitchAnimation(Z)V
    .locals 8

    const-wide/16 v6, 0xaa

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/NotificationContentView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method private sanitizeContractedLayoutParams(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private selectLayout(ZZ)V
    .locals 7

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->showContractedChild()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedVisible:Z

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->runSwitchAnimation(Z)V

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedVisible:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_5

    move v1, v4

    :goto_3
    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_6

    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    :goto_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v5

    goto :goto_3

    :cond_6
    move v3, v2

    goto :goto_4

    :cond_7
    move v5, v4

    goto :goto_5
.end method

.method private setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    goto :goto_0
.end method

.method private showContractedChild()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActualHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClipping()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActualHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateVisibility()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public getBackgroundForDragDown()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContractedChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method public getExpandedChild()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyContentUpdated()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->notifyContentUpdated()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    return-void
.end method

.method public reset(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeAllViews()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0305

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedVisible:Z

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActualHeight:I

    :cond_2
    return-void
.end method

.method public setActualHeight(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActualHeight:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActualHeight:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setBackgroundForDragDown(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->sanitizeContractedLayoutParams(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/statusbar/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    goto :goto_0
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    return-void
.end method
