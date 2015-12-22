.class public Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
.super Landroid/widget/FrameLayout;
.source "FloatingBackKeyLayout.java"


# static fields
.field public static final POSITION_LEFT_BOTTOM:I = 0x1

.field public static final POSITION_LEFT_TOP:I = 0x0

.field public static final POSITION_RIGHT_BOTTOM:I = 0x3

.field public static final POSITION_RIGHT_TOP:I = 0x2

.field public static final STATE_DISAPPEAR:I = 0x4

.field public static final STATE_EXPAND:I = 0x3

.field public static final STATE_HIDE:I = 0x0

.field public static final STATE_MOVE:I = 0x2

.field public static final STATE_OPEN:I = 0x1


# instance fields
.field private isDimmed:Z

.field private mDimmedTimeOut:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mExpandX:I

.field private mExpandY:I

.field private mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

.field private mFloatingBackLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mFloatingBackTouchListener:Landroid/view/View$OnTouchListener;

.field private mHandler:Landroid/os/Handler;

.field private mInitX:I

.field private mInitY:I

.field private mPosition:I

.field private mState:I

.field private mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackTouchListener:Landroid/view/View$OnTouchListener;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$6;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->expand()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->dimmedAnim()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->die()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitX:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitY:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitY:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->open()V

    return-void
.end method

.method private addExpandedWindow()V
    .locals 6

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setKeysPosition(III)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const/16 v4, 0x328

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "Floating Back Expanded"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private appearAnim()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    const v6, 0x7f0c04f0

    const/4 v1, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const/16 v4, 0x328

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v1, "Floating Back Key"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private die()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->die()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->setFloatingKeyVisible(Z)V

    :cond_1
    return-void
.end method

.method private dimmedAnim()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method private expand()V
    .locals 4

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandX:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mExpandY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->addExpandedWindow()V

    return-void
.end method

.method private hide()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->hideAnim()V

    return-void
.end method

.method private hideAnim()V
    .locals 6

    const v5, 0x7f0c04f0

    const/4 v4, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(IIZZ)V

    :goto_0
    iput v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, v1, v0, v4, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(IIZZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    goto :goto_1
.end method

.method private isLeft()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToPositionAnim(IIZZ)V
    .locals 10

    move v4, p1

    move v2, p4

    sub-int v5, p2, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_2

    mul-int/lit8 v3, v1, 0x2

    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;

    invoke-direct {v6, p0, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$3;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;ZII)V

    int-to-long v8, v1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;

    invoke-direct {v6, p0, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$4;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;ZII)V

    int-to-long v8, v1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;

    invoke-direct {v6, p0, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$5;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;ZII)V

    int-to-long v8, v1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private moveToPositionAnim(Landroid/view/MotionEvent;)V
    .locals 10

    const v7, 0x7f0c04f1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v9, 0x7f0c04f0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v1, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    sub-int/2addr v5, v2

    if-le v1, v5, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v6, v2

    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v3, v4

    :cond_0
    invoke-direct {p0, v5, v0, v4, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(IIZZ)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    :goto_1
    invoke-direct {p0, v5, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(IIZZ)V

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    sub-int/2addr v6, v2

    if-le v5, v6, :cond_5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v6, v2

    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    move v3, v4

    :cond_4
    invoke-direct {p0, v5, v0, v4, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(IIZZ)V

    goto/16 :goto_0

    :cond_5
    iget v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v1

    iget v7, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    :goto_2
    invoke-direct {p0, v5, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(IIZZ)V

    goto/16 :goto_0

    :cond_6
    move v4, v3

    goto :goto_2
.end method

.method private open()V
    .locals 6

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->appearAnim()V

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    goto :goto_0
.end method

.method private openAnim()V
    .locals 4

    const v3, 0x7f0c04f0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method private updateWindowParams()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public collapseAndRemoveExpandedWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->open()V

    return-void
.end method

.method public disappear()V
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$7;-><init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    return-void
.end method

.method public hideAndRemoveExpandedWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->hide()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->open()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->setFloatingKeyVisible(Z)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const v7, 0x7f0c04f0

    const/4 v6, 0x1

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c04f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setKeysPosition(III)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->die()V

    iput v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v3, 0x7f0e00f6

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04001a

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setFloatingBackKeyLayout(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerImpl;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v3, v0}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I

    return-void
.end method

.method public setMenuVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBackExpanded:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->setMenuVisible(Z)V

    :cond_0
    return-void
.end method

.method public setSubBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    return-void
.end method
