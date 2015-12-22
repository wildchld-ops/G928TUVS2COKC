.class public Lcom/android/incallui/SecVideoPopupService;
.super Lcom/android/incallui/MiniModeCallService;
.source "SecVideoPopupService.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/widget/Chronometer$OnChronometerTickListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# instance fields
.field private mCallEndBlinkCnt:I

.field private mCallIconView:Landroid/widget/ImageView;

.field private mCallStatusText:Landroid/widget/TextView;

.field private mCallTimeContainer:Landroid/view/View;

.field private mCallTimeText:Landroid/widget/Chronometer;

.field private mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mDeletePopup:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mOverlayCall:Landroid/widget/RelativeLayout;

.field private mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

.field private mOverlayCallVideo:Landroid/view/TextureView;

.field private mOverlayCallVideoContainter:Landroid/view/ViewGroup;

.field private mShowingCallEndBlink:Z

.field private mState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/MiniModeCallService;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallEndBlinkCnt:I

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoPopupService;->mShowingCallEndBlink:Z

    iput-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecVideoPopupService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/SecVideoPopupService;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/SecVideoPopupService;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;
    .locals 1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhotoDrawable(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private goInCallScreen()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoPopupService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoPopupService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static isConference(Lcom/android/incallui/Call;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "SecVideoPopupService"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setCallPhoto()V
    .locals 7

    const v6, 0x7f020071

    iget-object v3, p0, Lcom/android/incallui/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVideoPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v0

    const-string v3, "SecVideoPopupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isConference(call) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/incallui/SecVideoPopupService;->isConference(Lcom/android/incallui/Call;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/incallui/SecVideoPopupService;->isConference(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoPopupService;->getPhotoDrawable(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setCallTime()V
    .locals 12

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v8, 0x2

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    :cond_0
    if-eqz v5, :cond_2

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v6

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v0, v10, v2

    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-lez v9, :cond_3

    iget-object v9, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v9, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v9, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v9, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget-object v9, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->start()V

    :cond_1
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/incallui/SecVideoPopupService;->checkCallStatus(I)V

    return-void

    :cond_2
    const-wide/16 v6, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->stopSelf()V

    goto :goto_1
.end method

.method private setPopupVisibility()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->showPopup()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->hidePopup()V

    goto :goto_0
.end method

.method private shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/incallui/SecVideoPopupService;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showGreenBar()V
    .locals 4

    const-string v0, "not_show_call_view_statusbar"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "showGreenBar: "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public checkCallStatus(I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020200

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020201

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public controlOverlayCallLayout(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method protected getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method public hidePopup()V
    .locals 2

    const-string v0, "SecVideoPopupService"

    const-string v1, "hidePopup "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SecVideoPopupService"

    const-string v1, "popup is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initCustomLayout(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v1, "SecVideoPopupService"

    const-string v2, "initCustomLayout "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040111

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f1002cd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f1002d2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f1002ce

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f1002d3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f1002d4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f1002d1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f1002d0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const v2, 0x7f1002cf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    const v2, 0x3f800054    # 1.00001f

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const-string v1, "SecVideoPopupService"

    const-string v2, "add setSurfaceTextureListener"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->showOrHideOverlayCallVideo()V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoPopupService;->setCallTime()V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoPopupService;->setPopupVisibility()V

    return-void
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 8

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/32 v6, 0x36ee80

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/SecVideoPopupService;->setTTS(J)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    iput-object p0, p0, Lcom/android/incallui/SecVideoPopupService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setVideoPopup(Lcom/android/incallui/SecVideoPopupService;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoPopupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    new-instance v0, Lcom/android/incallui/SecVideoPopupService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVideoPopupService$1;-><init>(Lcom/android/incallui/SecVideoPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/incallui/SecVideoPopupService;->showGreenBar()V

    invoke-super {p0}, Lcom/android/incallui/MiniModeCallService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/16 v3, 0x65

    const/16 v2, 0x64

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setVideoPopup(Lcom/android/incallui/SecVideoPopupService;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallIconView:Landroid/widget/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    :cond_5
    invoke-super {p0}, Lcom/android/incallui/MiniModeCallService;->onDestroy()V

    return-void
.end method

.method protected onLongTouchEvent()V
    .locals 7

    const v2, 0x7f0d0129

    const v1, 0x7f0d01fb

    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/incallui/SecVideoPopupService;->mContext:Landroid/content/Context;

    const v6, 0x7f0b005b

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/incallui/SecVideoPopupService$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecVideoPopupService$3;-><init>(Lcom/android/incallui/SecVideoPopupService;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/SecVideoPopupService$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecVideoPopupService$2;-><init>(Lcom/android/incallui/SecVideoPopupService;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d01d0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d01d1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/incallui/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoPopupService;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4

    const-string v1, "SecVideoPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange... oldState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/incallui/SecVideoPopupService;->mState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->showOrHideOverlayCallVideo()V

    invoke-direct {p0, p2, p3}, Lcom/android/incallui/SecVideoPopupService;->shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/incallui/SecVideoPopupService;->mShowingCallEndBlink:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoPopupService;->mShowingCallEndBlink:Z

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallLinearLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0201ff

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->showCallEndBlink()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/SecVideoPopupService;->setCallTime()V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/SecVideoPopupService;->setCallPhoto()V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "onSurfaceTextureAvailable..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "onSurfaceTextureDestroyed..."

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->getFarEndSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)Landroid/view/Surface;

    :cond_0
    return v4
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "onSurfaceTextureSizeChanged..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecVideoPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method protected onTouchEvent()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoPopupService;->goInCallScreen()V

    return-void
.end method

.method public setLandscapeOverlayCallVideoLayout()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0341

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0340

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setQCIFOverlayCallVideoLayout()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0342

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0343

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setQVGAOverlayCallVideoLayout()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0344

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0345

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method setTTS(J)V
    .locals 19

    const-wide/32 v14, 0x36ee80

    div-long v14, p1, v14

    long-to-int v6, v14

    const-wide/32 v14, 0x36ee80

    rem-long v14, p1, v14

    const-wide/32 v16, 0xea60

    div-long v14, v14, v16

    long-to-int v7, v14

    const-wide/32 v14, 0xea60

    rem-long v14, p1, v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v9, v14

    if-eqz v6, :cond_1

    const/4 v13, 0x1

    :goto_0
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "%d"

    aput-object v15, v2, v14

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    const v14, 0x7f0d01c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecVideoPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v11}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const v14, 0x7f0d01c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecVideoPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v13, :cond_0

    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    const v14, 0x7f0d01c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecVideoPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecVideoPopupService;->mCallTimeText:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/Chronometer;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public showCallEndBlink()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallEndBlinkCnt:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->stopSelf()V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallEndBlinkCnt:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallEndBlinkCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallEndBlinkCnt:I

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mCallStatusText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showOrHideOverlayCallVideo()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isActiveVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "SecVideoPopupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showOrHideOverlayCallVideo showVideo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideo:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoPopupService;->controlOverlayCallLayout(Z)V

    if-eqz v0, :cond_6

    const-string v1, "QCIF"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->setQCIFOverlayCallVideoLayout()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v1, "QVGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "QVGALAND"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->setQVGAOverlayCallVideoLayout()V

    goto :goto_0

    :cond_5
    const-string v1, "VGALAND"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoPopupService;->setLandscapeOverlayCallVideoLayout()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCallVideoContainter:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public showPopup()V
    .locals 2

    const-string v0, "SecVideoPopupService"

    const-string v1, "showPopup "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoPopupService;->mOverlayCall:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SecVideoPopupService"

    const-string v1, "popup is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected supportEntireScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected supportScreenOutSide()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
