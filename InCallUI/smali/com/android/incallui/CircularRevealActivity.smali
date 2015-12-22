.class public Lcom/android/incallui/CircularRevealActivity;
.super Landroid/app/Activity;
.source "CircularRevealActivity.java"


# instance fields
.field final mClearDisplayReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/incallui/CircularRevealActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CircularRevealActivity$1;-><init>(Lcom/android/incallui/CircularRevealActivity;)V

    iput-object v0, p0, Lcom/android/incallui/CircularRevealActivity;->mClearDisplayReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CircularRevealActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CircularRevealActivity;->clearDisplay()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CircularRevealActivity;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/CircularRevealActivity;->getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private clearDisplay()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealActivity;->finish()V

    return-void
.end method

.method private getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 9

    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v6, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v6, 0x2

    iget v6, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v6, 0x2

    if-eqz p1, :cond_0

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    :cond_0
    const/4 v6, 0x0

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v2, v3, v6, v7}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    const-wide/16 v6, 0x14d

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-object v4
.end method

.method public static sendClearDisplayBroadcast(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_clear_display"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private setupDecorView(Landroid/graphics/Point;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/CircularRevealActivity$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/CircularRevealActivity$2;-><init>(Lcom/android/incallui/CircularRevealActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    if-eqz p2, :cond_0

    const v1, 0x7f1000b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p2, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p2, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/CircularRevealActivity$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/incallui/CircularRevealActivity$3;-><init>(Lcom/android/incallui/CircularRevealActivity;Landroid/view/View;Landroid/graphics/Point;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2, v2}, Lcom/android/incallui/CircularRevealActivity;->overridePendingTransition(II)V

    const v2, 0x7f040039

    invoke-virtual {p0, v2}, Lcom/android/incallui/CircularRevealActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "touchPoint"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_theme_colors"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/CircularRevealActivity;->setupDecorView(Landroid/graphics/Point;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isServiceBound()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CircularRevealActivity;->clearDisplay()V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_clear_display"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CircularRevealActivity;->mClearDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CircularRevealActivity;->mClearDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
