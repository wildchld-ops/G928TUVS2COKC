.class public Lcom/android/systemui/statusbar/MSimSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "MSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "MSim-SignalClusterView"


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mBtTetherState:Z

.field private mCurrentDataSlot:I

.field mDataSignalSpacer:Landroid/view/View;

.field private mDefaultPhoneId:I

.field private mHasService:Z

.field private mIsAirplaneMode:Z

.field mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

.field mMobile:[Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field mMobileActivity2:Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field private mMobileDataState:[I

.field private mMobileDataState1:I

.field private mMobileDataState2:I

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileFocus:[Landroid/widget/ImageView;

.field private mMobileFocusResourceId:[I

.field private mMobileFocusSub:[Z

.field mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileGroupResourceId:[I

.field private mMobileResourceId:[I

.field mMobileRoaming:[Landroid/widget/ImageView;

.field mMobileRoamingId:[I

.field private mMobileRoamingResourceId:[I

.field private mMobileRssiId:[I

.field mMobileRssiType:[Landroid/widget/ImageView;

.field private mMobileStrengthId:[I

.field mMobileType:Landroid/widget/ImageView;

.field mMobileType2:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:[I

.field private mMobileTypeResourceId:[I

.field private mMobileVisible:[Z

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

.field mNoSimSlot:Landroid/widget/ImageView;

.field private mNoSimSlotResourceId:I

.field private final mNumPhones:I

.field private mRoamingIconId:[I

.field private mRssiTypeResourceId:[I

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field mSeparateMobileGroup:Landroid/view/ViewGroup;

.field mSeparateMobileGroup2:Landroid/view/ViewGroup;

.field private mShowTwoBars:[I

.field mSimFous:[Z

.field mSimIcon:Landroid/widget/ImageView;

.field private mSimIconId:I

.field private mSimIconVisible:Z

.field private mSpacer:Landroid/view/View;

.field private mStyle:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiCaptiveNotLogin:Z

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRssiTypeResourceId:[I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    const v1, 0x7f0e01fc

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotResourceId:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingResourceId:[I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mHasService:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCurrentDataSlot:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiCaptiveNotLogin:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingIconId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusSub:[Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingIconId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusSub:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0e01eb
        0x7f0e020a
        0x7f0e01fd
    .end array-data

    :array_1
    .array-data 4
        0x7f0e01ec
        0x7f0e020c
        0x7f0e01ff
    .end array-data

    :array_2
    .array-data 4
        0x7f0e01ed
        0x7f0e020d
        0x7f0e0200
    .end array-data

    :array_3
    .array-data 4
        0x7f0e0206
        0x7f0e020f
        0x7f0e0202
    .end array-data

    :array_4
    .array-data 4
        0x7f0e0204
        0x7f0e020b
        0x7f0e01fe
    .end array-data

    :array_5
    .array-data 4
        0x7f0e0205
        0x7f0e020e
        0x7f0e0201
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/MSimSignalClusterView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    return-void
.end method

.method private apply(I)V
    .locals 8

    const v7, 0x3ecccccd    # 0.4f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_4

    :cond_2
    const-string v0, "MSim-SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v0, v0, p1

    const v1, 0x7f0204dd

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    const v1, 0x7f0204df

    aput v1, v0, p1

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aget v0, v0, p1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    if-eq v0, v6, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_10

    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_10

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-ne v0, v5, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aget-boolean v0, v0, v3

    if-ne v0, v5, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    if-ne v0, v6, :cond_11

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_11

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1a

    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1b

    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "MSim-SignalClusterView"

    const-string v1, "mMobileRssiId : 0 "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v3

    if-eq v0, v6, :cond_13

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_15

    :cond_13
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_15

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v5

    if-eq v0, v6, :cond_16

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_18

    :cond_16
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_18

    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_a

    :cond_1d
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseSimpleNWBoosterIcon:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_a

    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_a

    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiCaptiveNotLogin:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v3

    if-eq v0, v6, :cond_20

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v5

    if-ne v0, v6, :cond_23

    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_a

    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_b

    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_c

    :cond_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_a

    :cond_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_a

    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

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
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const v1, 0x7f0e01f2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0e01f3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    const v1, 0x7f0e0203

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    const v1, 0x7f0e0210

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const v1, 0x7f0e01fc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRssiTypeResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f02069c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const v1, 0x7f0e01f4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    const v1, 0x7f0e01f8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0e01fa

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    const v1, 0x7f0e01f9

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    const v1, 0x7f0e01fb

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    const v1, 0x7f0e01ee

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0e01ef

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    const v1, 0x7f0e01f0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    const v1, 0x7f0e01f1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    const v1, 0x7f0e01f5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0e01f7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0e0207

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    const v1, 0x7f0e0209

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    const v1, 0x7f0e0208

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    :cond_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    :goto_2
    return-void

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDataSignalSpacer:Landroid/view/View;

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBtTetherState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    return-void
.end method

.method public setDataState(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aput p1, v0, p2

    return-void
.end method

.method public setDataStateForSeperatedData(II)V
    .locals 0

    if-nez p2, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    goto :goto_0
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMobileActivityIcon(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput p1, v0, p2

    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aput-boolean p1, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput p2, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput p4, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v0, p7

    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aput-boolean p9, v0, p7

    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    return-void
.end method

.method public setMobileFocusIcon(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setNWBoosterIndicators(ZZI)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_0
.end method

.method public setNWBoosterIndicators(ZZIIILjava/lang/String;)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    iput p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    iput p5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_0
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    return-void
.end method

.method public setRoamingIcon(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aput p1, v0, p2

    return-void
.end method

.method public setRssiIcon(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aput p1, v0, p2

    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    return-void
.end method

.method public setSimIcon(ZI)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    return-void
.end method

.method public setWifiActivityIcon(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    return-void
.end method

.method public setWifiCaptiveNotLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiCaptiveNotLogin:Z

    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mDefaultPhoneId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_0
.end method
