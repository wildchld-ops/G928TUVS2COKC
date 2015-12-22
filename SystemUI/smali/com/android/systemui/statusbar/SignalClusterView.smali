.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "SignalClusterView"


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mBtTetherState:Z

.field private mHasService:Z

.field private mIsAirplaneMode:Z

.field private mIsMobileTypeIconWide:Z

.field mMPTCPActivity:Landroid/widget/ImageView;

.field private mMPTCPActivityId:I

.field mMPTCPGiga:Landroid/widget/ImageView;

.field private mMPTCPGigaId:I

.field mMPTCPGroup:Landroid/view/ViewGroup;

.field mMPTCPType:Landroid/widget/ImageView;

.field private mMPTCPTypeId:I

.field private mMPTCPVisible:Z

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field mMobileData:Landroid/widget/ImageView;

.field mMobileDataGroup:Landroid/view/ViewGroup;

.field mMobileDataIcon:Landroid/widget/ImageView;

.field private mMobileDataState:I

.field private mMobileDescription:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingId:I

.field private mMobileStrengthId:I

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field mNWBoosterActivity:Landroid/widget/ImageView;

.field private mNWBoosterActivityId:I

.field mNWBoosterGroup:Landroid/view/ViewGroup;

.field mNWBoosterMobileType:Landroid/widget/ImageView;

.field private mNWBoosterMobileTypeId:I

.field private mNWBoosterRunning:Z

.field private mNWBoosterVisible:Z

.field mNWBoosterWifi:Landroid/widget/ImageView;

.field private mNWBoosterWifiId:I

.field private mNoSimIconId:I

.field private mRoaming:Z

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field mSeparateMobileGroup:Landroid/view/ViewGroup;

.field private mShowTwoBars:[I

.field private mStyle:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field private mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field mWifiAirplaneSpacer:Landroid/view/View;

.field private mWifiCaptiveNotLogin:Z

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiCaptiveNotLogin:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method private apply()V
    .locals 13

    const/high16 v12, 0x3f800000    # 1.0f

    const v11, 0x3ecccccd    # 0.4f

    const/4 v10, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_f

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-nez v3, :cond_f

    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMPTCP:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-nez v3, :cond_f

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    const v6, 0x7f02054a

    if-ne v3, v6, :cond_d

    const/4 v3, 0x4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_e

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eqz v3, :cond_e

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v6, "SignalClusterView"

    const-string v7, "wifi: %s sig=%d"

    new-array v8, v10, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_10

    const-string v3, "VISIBLE"

    :goto_4
    aput-object v3, v8, v4

    const/4 v3, 0x1

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v3, :cond_7

    :cond_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eqz v3, :cond_11

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v3, :cond_13

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsMobileTypeIconWide:Z

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    :goto_a
    invoke-virtual {v6, v3, v4, v4, v4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v6, "SignalClusterView"

    const-string v7, "mobile: %s sig=%d typ=%d"

    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v3, :cond_16

    const-string v3, "VISIBLE"

    :goto_b
    aput-object v3, v8, v4

    const/4 v3, 0x1

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_18

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v3, v10, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eqz v3, :cond_17

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    if-eqz v3, :cond_17

    :cond_9
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-nez v3, :cond_17

    :cond_a
    move v3, v4

    :goto_c
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_b

    const-string v3, "SignalClusterView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMobileDataState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mBtTetherState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mHasService:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_d
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMPTCP:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPType:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGiga:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivity:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    :goto_e
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    if-eqz v3, :cond_29

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-nez v3, :cond_29

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_22

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_0

    :cond_d
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_e
    move v3, v5

    goto/16 :goto_2

    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    :cond_10
    const-string v3, "GONE"

    goto/16 :goto_4

    :cond_11
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    :cond_12
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_13
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_14
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_15
    move v3, v4

    goto/16 :goto_a

    :cond_16
    const-string v3, "GONE"

    goto/16 :goto_b

    :cond_17
    move v3, v5

    goto/16 :goto_c

    :cond_18
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v3, :cond_1b

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v3, v10, :cond_19

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-nez v3, :cond_19

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eqz v3, :cond_1a

    :cond_19
    move v3, v4

    :goto_f
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "SignalClusterView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Permanent Data Icon) mSeparateMobileGroup="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_1a
    move v3, v5

    goto :goto_f

    :cond_1b
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v3, v10, :cond_1c

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eqz v3, :cond_1f

    :cond_1c
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_1d

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-nez v3, :cond_1f

    :cond_1d
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportMPTCP:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-nez v3, :cond_1f

    :cond_1e
    move v3, v4

    :goto_10
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_d

    :cond_1f
    move v3, v5

    goto :goto_10

    :cond_20
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_e

    :cond_21
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_0

    :cond_22
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v3, :cond_24

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_23
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_24
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_11
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiCaptiveNotLogin:Z

    if-nez v3, :cond_27

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_12
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v3, v10, :cond_25

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eqz v3, :cond_28

    :cond_25
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_26
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_11

    :cond_27
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_12

    :cond_28
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_29
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_6

    :catch_1
    move-exception v3

    goto/16 :goto_5
.end method

.method private getDataSignalTypeIcon(I)I
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SignalClusterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataSignalTypeIcon mMobileTypeId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const v0, 0x7f0205a6

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0205a7

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0204a3 -> :sswitch_1
        0x7f0204ae -> :sswitch_2
        0x7f0204cf -> :sswitch_0
        0x7f0204d1 -> :sswitch_0
        0x7f0204d5 -> :sswitch_1
        0x7f0204d6 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const v0, 0x7f0e01f2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0e01f3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    const v0, 0x7f0e01eb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0e01ec

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    const v0, 0x7f0e01ed

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    const v0, 0x7f0e0210

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const v0, 0x7f0e01f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    const v0, 0x7f0e01f6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0e01f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0e01fa

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    const v0, 0x7f0e01f9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    const v0, 0x7f0e0205

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    const v0, 0x7f0e01ee

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0e01ef

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    const v0, 0x7f0e01f0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    const v0, 0x7f0e01f1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportMPTCP:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e03b6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0e03b7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPType:Landroid/widget/ImageView;

    const v0, 0x7f0e03b8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGiga:Landroid/widget/ImageView;

    const v0, 0x7f0e03b9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivity:Landroid/widget/ImageView;

    :cond_0
    const v0, 0x7f0e03bf

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    const v0, 0x7f0e01f5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method public onStateChanged()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBtTetherState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_0
    return-void
.end method

.method public setDataSignalIcon(ZIIIIZ)V
    .locals 5

    const v4, 0x7f020878

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileData:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileData:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eq p2, v4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/SignalClusterView;->getDataSignalTypeIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSignalIcon iconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eq p3, v4, :cond_4

    if-eqz p3, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    const v1, 0x7f0204dd

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_1

    const v0, 0x7f0205a5

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileRoamingId = stat_sys_rssi_data_2g"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileDataGroup is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileRoamingId = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileDataGroup GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setDataState(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_0
    return-void
.end method

.method public setHasService(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_0
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_1
    return-void
.end method

.method public setMPTCPIndicators(ZIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    if-eq v0, p4, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_1
    return-void
.end method

.method public setMobileActivityIcon(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_0
    return-void
.end method

.method public setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mRoaming:Z

    if-ne v0, p6, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsMobileTypeIconWide:Z

    if-eq v0, p7, :cond_2

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mRoaming:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsMobileTypeIconWide:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_2
    return-void
.end method

.method public setNWBoosterIndicators(ZZI)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    if-eq v0, p3, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_1
    return-void
.end method

.method public setNWBoosterIndicators(ZZIIILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiId:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    if-ne v0, p5, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiId:I

    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    iput p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_1
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    return-void
.end method

.method public setRoamingIcon(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_0
    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    return-void
.end method

.method public setWifiActivityIcon(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_0
    return-void
.end method

.method public setWifiCaptiveNotLogin(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiCaptiveNotLogin:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiCaptiveNotLogin:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_0
    return-void
.end method

.method public setWifiIndicators(ZILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_1
    return-void
.end method
