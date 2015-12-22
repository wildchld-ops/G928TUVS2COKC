.class public Lcom/sec/android/app/launcher/views/WidgetListItemView;
.super Lcom/sec/daliviews/views/IconView;
.source "WidgetListItemView.java"


# instance fields
.field private mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

.field private mClickAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

.field private mImageOffsetX:I

.field private mImageOffsetY:I

.field private mImageView:Lcom/sec/daliviews/views/ImageView;

.field private mIsJumping:Z

.field private mJumpHeight:F

.field private mRemovedShadowConstraints:Z

.field private mShadowsVisible:Z

.field private mSpanView:Lcom/sec/daliviews/views/TextView;

.field private mTitleView:Lcom/sec/daliviews/views/TextView;

.field private mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

.field private mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

.field private mUninstallImageView:Lcom/sec/daliviews/views/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/IconView;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mShadowsVisible:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mRemovedShadowConstraints:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mIsJumping:Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mJumpHeight:F

    iput v2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetX:I

    iput v2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetY:I

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    iput-boolean v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mShadowsVisible:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mRemovedShadowConstraints:Z

    iput-boolean v4, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mIsJumping:Z

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    const/high16 v2, 0x42480000    # 50.0f

    iput v2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mJumpHeight:F

    iput v4, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetX:I

    iput v4, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetY:I

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iput-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f0a02a9

    invoke-virtual {v0, v2, v1, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mJumpHeight:F

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/launcher/views/WidgetListItemView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mIsJumping:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/views/WidgetListItemView;)Lcom/sec/daliviews/views/FixedContainer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/views/WidgetListItemView;)Lcom/sec/daliviews/views/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method private getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getShadowEffect(I)Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    return-object v0
.end method

.method private setUninstallView(ZZ)V
    .locals 5

    const/4 v4, 0x0

    const/16 v2, 0x8

    const v3, 0x7f0b0092

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    const v1, 0x7f03002f

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/FixedContainer;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->updateMode()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    const v2, 0x7f04003e

    invoke-static {v1, v2}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v1

    const v2, 0x7f04003d

    invoke-static {v1, v2}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v2, Lcom/sec/android/app/launcher/views/WidgetListItemView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView$2;-><init>(Lcom/sec/android/app/launcher/views/WidgetListItemView;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    new-instance v2, Lcom/sec/android/app/launcher/views/WidgetListItemView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView$3;-><init>(Lcom/sec/android/app/launcher/views/WidgetListItemView;)V

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setFocusableInTouchMode(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation;->start(Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v3}, Lcom/sec/daliviews/views/FixedContainer;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/NativeViewBase;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/FixedContainer;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected applyShadow()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, p0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->apply(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mShadowsVisible:Z

    invoke-virtual {v0, p0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisibleOnView(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_0
    return-void
.end method

.method public calculateImageOffset(Landroid/graphics/Bitmap;)V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    if-nez v6, :cond_0

    const v6, 0x7f0b0135

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v6

    check-cast v6, Lcom/sec/daliviews/views/ImageView;

    iput-object v6, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ImageView;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getScreenBoundingRect()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    :goto_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int v0, v2, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int v1, v3, v6

    iput v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetX:I

    iput v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetY:I

    return-void

    :cond_1
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/ImageView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/ImageView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    goto :goto_0
.end method

.method public changeMode(I)V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->NORMAL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v4}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setUninstallView(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->UNINSTALL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getItemId()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->canUninstall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v4, v4}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setUninstallView(ZZ)V

    goto :goto_0
.end method

.method public clickAnimation()V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mIsJumping:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mRemovedShadowConstraints:Z

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, p0}, Lcom/sec/daliviews/effects/ShadowEffect;->removeConstraints(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_2
    iput-boolean v6, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mRemovedShadowConstraints:Z

    :cond_3
    iput-boolean v6, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mIsJumping:Z

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->stop()V

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_5
    new-instance v5, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    add-float v6, v1, v0

    invoke-direct {v5, v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;-><init>(F)V

    iput-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v5, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-direct {v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    new-instance v3, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mJumpHeight:F

    invoke-direct {v3, v7, v5, v7}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>(FFF)V

    new-instance v2, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;

    const/16 v5, 0x14

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;-><init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v5, v2}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    iget-object v7, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v5, v6, v7}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->add(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/uiAnimations/UIAnimationSet;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    new-instance v6, Lcom/sec/android/app/launcher/views/WidgetListItemView$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView$1;-><init>(Lcom/sec/android/app/launcher/views/WidgetListItemView;)V

    invoke-virtual {v5, v6}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->connectToUIAnimationSignal(Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v5}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->start()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimPlayer:Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationPlayer;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mClickAnimSet:Lcom/sec/daliviews/uiAnimations/UIAnimationSet;

    invoke-virtual {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/FixedContainer;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconShowAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallIconHideAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    :cond_4
    invoke-super {p0}, Lcom/sec/daliviews/views/IconView;->destroy()V

    return-void
.end method

.method public getImageOffset()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetX:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetY:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getImageView()Lcom/sec/daliviews/views/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0b0135

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method public getModedViewType()I
    .locals 1

    const v0, 0x7f0b0008

    return v0
.end method

.method public getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/daliviews/views/IconView;->getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getTitleView()Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method public getUninstallView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mUninstallButton:Lcom/sec/daliviews/views/FixedContainer;

    return-object v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->canUninstall()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getWidgetScreenMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    const v5, 0x7f0d0057

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v3, p1}, Lcom/sec/daliviews/views/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v3, p1}, Lcom/sec/daliviews/views/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getImageView()Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/ImageView;->setSize(II)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->calculateImageOffset(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->applyShadow()V

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getImageView()Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageView:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/ImageView;->setImagePath(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->applyShadow()V

    goto :goto_0
.end method

.method public setImageOffset(II)V
    .locals 3

    iput p1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetX:I

    iput p2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetY:I

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetX:I

    iget v2, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mImageOffsetY:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/dragAndDrop/DragState;->setInternalImageOffset(II)V

    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->getShadowEffect()Lcom/sec/daliviews/effects/ShadowEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mShadowsVisible:Z

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mShadowsVisible:Z

    invoke-virtual {v0, p0, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisibleOnView(Lcom/sec/daliviews/views/NativeViewBase;Z)V

    :cond_0
    return-void
.end method

.method public setSpanDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setSpanText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mSpanView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->setTitle(Ljava/lang/String;Lcom/sec/daliviews/views/TextView$ColourMap;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;Lcom/sec/daliviews/views/TextView$ColourMap;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/WidgetListItemView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p2}, Lcom/sec/daliviews/views/TextView;->addTitleColourMap(Lcom/sec/daliviews/views/TextView$ColourMap;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isRTLLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetListItemView;->mTitleView:Lcom/sec/daliviews/views/TextView;

    const v1, 0x10101ad

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setGravity(I)V

    :cond_2
    return-void
.end method
