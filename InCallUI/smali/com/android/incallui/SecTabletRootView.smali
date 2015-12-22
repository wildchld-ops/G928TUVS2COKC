.class public Lcom/android/incallui/SecTabletRootView;
.super Landroid/widget/FrameLayout;
.source "SecTabletRootView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    iput-object p1, p0, Lcom/android/incallui/SecTabletRootView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    iput-object p1, p0, Lcom/android/incallui/SecTabletRootView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    iput-object p1, p0, Lcom/android/incallui/SecTabletRootView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    if-nez v5, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOtaMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v4, v6, v6}, Lcom/android/incallui/SecTabletInCallService;->showServiceViews(ZZ)V

    goto :goto_1

    :sswitch_1
    iget-object v5, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletInCallService;->onBackPressed()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v4}, Lcom/android/incallui/SecTabletInCallService;->closeDrawer()V

    goto :goto_1

    :sswitch_2
    const-string v5, "support_bottom_menu_hw_key"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletInCallService;->getCallCardManager()Lcom/android/incallui/SecTabletCallCardViewManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletCallCardViewManager;->getView()Lcom/android/incallui/SecTabletCallCardView;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/SecTabletCallCardView;->showInCallMenu()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->sendLockScreenEvent()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletRootView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOtaMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/SecTabletInCallService;->showServiceViews(ZZ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0, v2}, Lcom/android/incallui/SecTabletInCallService;->addFlags(I)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0, v2}, Lcom/android/incallui/SecTabletInCallService;->clearFlags(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public setSecTabletInCallService(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletRootView;->mSecTabletInCallService:Lcom/android/incallui/SecTabletInCallService;

    return-void
.end method
