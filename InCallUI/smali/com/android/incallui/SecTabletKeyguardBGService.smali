.class public Lcom/android/incallui/SecTabletKeyguardBGService;
.super Lcom/android/incallui/MiniModeCallService;
.source "SecTabletKeyguardBGService.java"


# static fields
.field private static sInstance:Lcom/android/incallui/SecTabletKeyguardBGService;


# instance fields
.field mSecTabletKeyguardBGService:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/SecTabletKeyguardBGService;->sInstance:Lcom/android/incallui/SecTabletKeyguardBGService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/MiniModeCallService;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/SecTabletKeyguardBGService;
    .locals 2

    const-class v0, Lcom/android/incallui/SecTabletKeyguardBGService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/incallui/SecTabletKeyguardBGService;->sInstance:Lcom/android/incallui/SecTabletKeyguardBGService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    const/4 v4, -0x1

    const/16 v2, 0x7de

    const v0, 0x1040168

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletKeyguardBGService;->supportScreenOutSide()Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit16 v0, v0, 0x200

    :cond_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    invoke-direct {v1, v2, v0, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v1, "RotationHelpService"

    const-string v2, "initCustomLayout "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletKeyguardBGService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ed

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/SecTabletKeyguardBGService;->mSecTabletKeyguardBGService:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOtaMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletKeyguardBGService;->stopSelf()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/SecTabletKeyguardBGService;->mBlockTouchEvent:Z

    invoke-super {p0}, Lcom/android/incallui/MiniModeCallService;->onCreate()V

    sput-object p0, Lcom/android/incallui/SecTabletKeyguardBGService;->sInstance:Lcom/android/incallui/SecTabletKeyguardBGService;

    return-void
.end method

.method protected onCustomCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/MiniModeCallService;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/SecTabletKeyguardBGService;->sInstance:Lcom/android/incallui/SecTabletKeyguardBGService;

    return-void
.end method

.method public showKeyguardBGService(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletKeyguardBGService;->mSecTabletKeyguardBGService:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/SecTabletKeyguardBGService;->sInstance:Lcom/android/incallui/SecTabletKeyguardBGService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletKeyguardBGService;->mSecTabletKeyguardBGService:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected supportEntireScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
