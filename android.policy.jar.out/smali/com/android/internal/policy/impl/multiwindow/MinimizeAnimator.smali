.class public Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"


# instance fields
.field private final TOUCH_DOWN_MOVEMENT_LOOP:I

.field private final TRASH_DIRECTION_LEFT:I

.field private final TRASH_DIRECTION_NONE:I

.field private final TRASH_DIRECTION_RIGHT:I

.field private coveredTrash:Landroid/widget/ImageView;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCurrMoveDistance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field mHandler:Landroid/os/Handler;

.field private mIsLongPressed:Z

.field private mIsShowingTrash:Z

.field mIsSupportResizeVisualCue:Z

.field private mIsTouchDown:Z

.field private mMinimizeIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mMovements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mNeedAnimation:Z

.field private mOldPositionX:F

.field private mOldPositionY:F

.field private mRemoveLayoutHeight:I

.field mShiftPosition:Ljava/lang/Runnable;

.field private mShowTrashDirection:I

.field private mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

.field private mToken:Landroid/os/IBinder;

.field mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;

.field private removeLayout:Landroid/view/View;

.field private statusBarHeight:I

.field private topBgFoucsEffect:Landroid/widget/ImageView;

.field private trash:Landroid/view/View;

.field private trashBody:Landroid/widget/ImageView;

.field private trashCover:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->TOUCH_DOWN_MOVEMENT_LOOP:I

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mH:Landroid/os/Handler;

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->TRASH_DIRECTION_NONE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->TRASH_DIRECTION_LEFT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->TRASH_DIRECTION_RIGHT:I

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportResizeVisualCue(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsSupportResizeVisualCue:Z

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShowTrashDirection:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->openTrashCoverAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->shakeTrashCoverAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->closeTrashCoverAnimation()V

    return-void
.end method

.method private closeTrashCoverAnimation()V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, -0x42b33333    # -0.05f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$8;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    const/4 v4, -0x1

    sget-boolean v2, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiPhoneWindow"

    const-string v3, "MinimizeAnimator::createLayoutParams"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1000578

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v2, v2, 0x209

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v0
.end method

.method private getDisplaySize(Landroid/graphics/Point;Z)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private getMinimizedDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;Landroid/content/ComponentName;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .locals 13

    const v12, 0x105022c

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-boolean v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v5, :cond_0

    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MinimizeAnimator::handleTouchDown : event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getX()F

    move-result v5

    sub-float v5, v6, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    sub-float v1, v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getY()F

    move-result v5

    sub-float v5, v6, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    sub-float v2, v5, v6

    div-float v3, v1, v11

    div-float v4, v2, v11

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v6, v3, v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(FF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .locals 11

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getX()F

    move-result v8

    sub-float v8, v9, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105022c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float v2, v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getY()F

    move-result v8

    sub-float v8, v9, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105022c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float v3, v8, v9

    const/high16 v8, 0x40400000    # 3.0f

    div-float v4, v2, v8

    const/high16 v8, 0x40400000    # 3.0f

    div-float v5, v3, v8

    const/4 v1, 0x0

    :goto_1
    const/4 v8, 0x3

    if-ge v1, v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v9, v4, v5}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(FF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setAppVisibility(Landroid/os/IBinder;Z)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    sub-float v6, v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    sub-float v7, v8, v9

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v9, v6, v7}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(FF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    iget v10, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_8

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->coveredTrash:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashBody:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsSupportResizeVisualCue:Z

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    const/4 v0, 0x1

    :goto_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    const v9, 0x3fe66666    # 1.8f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    const v9, 0x3fe66666    # 1.8f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShowTrashDirection:I

    if-eq v8, v0, :cond_4

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShowTrashDirection:I

    :cond_4
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsSupportResizeVisualCue:Z

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShowTrashDirection:I

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShowTrashDirection:I

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->openRedCircleTrashCoverAnimation(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getX()F

    move-result v9

    add-float/2addr v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setX(F)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getY()F

    move-result v9

    add-float/2addr v9, v7

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_2

    :cond_6
    const/4 v0, 0x2

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->scaleTrashAnimation()V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->coveredTrash:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashBody:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->clearAnimation()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    goto/16 :goto_0
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MinimizeAnimator::handleTouchUp : event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->hide()V

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->removeAllTasks(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->hideTrash()V

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private hide()V
    .locals 2

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    const-string v1, "MinimizeAnimator::hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private openRedCircleTrashCoverAnimation(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->shakeRedCircleTrashCoverAnimation(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->scaleRedCircleTrashCoverAnimation()V

    return-void
.end method

.method private openTrashCoverAnimation()V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, -0x42b33333    # -0.05f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$6;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private scaleRedCircleTrashCoverAnimation()V
    .locals 9

    const v2, 0x3fa66666    # 1.3f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$4;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private scaleTrashAnimation()V
    .locals 9

    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private shakeRedCircleTrashCoverAnimation(I)V
    .locals 8

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/16 v7, 0xf

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    mul-int/lit8 v7, v7, -0x1

    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v7

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x10a

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$3;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;Landroid/view/animation/RotateAnimation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private shakeTrashCoverAnimation()V
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f600000    # -5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const v6, 0x3f4ccccd    # 0.8f

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v4, 0x3c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$7;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private show()V
    .locals 2

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    const-string v1, "MinimizeAnimator::show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addWindow()Landroid/view/Window;
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v4, :cond_0

    const-string v4, "MultiPhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MinimizeAnimator::addWindow(), token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v4, v5, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    :cond_2
    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_3
    sget-boolean v4, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v4, :cond_2

    const-string v4, "MultiPhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MinimizeAnimator::addWindow(), MinimizeAnimator already has mWindow, failed addWindow(), token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleLongClick()V
    .locals 2

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    const-string v1, "MinimizeAnimator::handleLongClick"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideTrash()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initialize(II)V
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105022c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105022d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    int-to-float v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v3, v8, v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->resetResolvedLayoutDirection()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->show()V

    return-void
.end method

.method public isShowingTrash()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    return v0
.end method

.method public makeMinimizeIcons(Z)Landroid/widget/ImageView;
    .locals 8

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getTabs()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getTabs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->getMinimizedDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v5, :cond_0

    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeMinimizeIcons componentName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    :cond_2
    new-instance v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->isUsedTheme()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v5, :cond_5

    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeMinimizeIcons componentName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    return-object v5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->handleTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeWindow()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    const-string v1, "MinimizeAnimator::removeWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    :cond_2
    return-void
.end method

.method public showTrash()V
    .locals 14

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v3, 0x1090080

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->coveredTrash:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashBody:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsSupportResizeVisualCue:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    :goto_0
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v9, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;Z)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, v9, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v3, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    new-instance v11, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    iput v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method
