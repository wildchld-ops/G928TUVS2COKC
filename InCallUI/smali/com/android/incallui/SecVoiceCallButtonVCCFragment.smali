.class public Lcom/android/incallui/SecVoiceCallButtonVCCFragment;
.super Lcom/android/incallui/SecCallButtonFragment;
.source "SecVoiceCallButtonVCCFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;,
        Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallPagerAdapter;,
        Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;
    }
.end annotation


# static fields
.field private static mCurrentPageScrollState:I

.field private static mVCCCurrentPageScrollState:I


# instance fields
.field private VCCPagerAdapter:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;

.field private adapter:Lcom/android/incallui/LowerMenuAdapter;

.field private bFirstDisplayIvr:Z

.field private bReadytoMoveIvrPage:Z

.field private callPath:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private mAddCallButton:Landroid/widget/Button;

.field private mCameraButton:Landroid/widget/Button;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContactButton:Landroid/widget/Button;

.field private mDialpadButton:Landroid/widget/Button;

.field mDtmfHandler:Landroid/os/Handler;

.field private mEmailButton:Landroid/widget/Button;

.field private mExtraVolumeButton:Landroid/widget/ToggleButton;

.field private mHandler:Landroid/os/Handler;

.field private mInCallButtonLayout:Landroid/view/ViewGroup;

.field private mInCallButtons:Landroid/view/View;

.field private mInCallButtonsUpper:Landroid/view/View;

.field private mInternetButton:Landroid/widget/Button;

.field private mIsEnabled:Z

.field private mIsSprWFCRegistered:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLastestPagePosition:I

.field private mLastestPagePositionIVR:I

.field private mLegalAgreementDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mMemoButton:Landroid/widget/Button;

.field private mMessageButton:Landroid/widget/Button;

.field private mModifyErrorDialog:Landroid/app/AlertDialog;

.field private mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mOneWayCameraButton:Landroid/widget/Button;

.field private mOneWayCameraButtonStub:Landroid/view/ViewStub;

.field private mOutgoingButtonLayout:Landroid/view/ViewGroup;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

.field private mPagerAdapter:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallPagerAdapter;

.field private mPagerIndicator:Landroid/view/View;

.field private mPagerIndicator3:Landroid/view/View;

.field private mPagerIndicatorLeft:Landroid/view/View;

.field private mPagerIndicatorRight:Landroid/view/View;

.field private mParentView:Landroid/view/View;

.field private mPlannerButton:Landroid/widget/Button;

.field private mPrevAudioMode:I

.field private mPromotedButton:Landroid/widget/Button;

.field private mRunning:Z

.field private mSendNumber:I

.field private mShareButton:Landroid/widget/Button;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSwisButton:Landroid/widget/Button;

.field private mSwisButtonStub:Landroid/view/ViewStub;

.field private mVCCInCallButtonLayout:Landroid/view/ViewGroup;

.field private mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

.field private mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

.field private mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

.field private mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

.field private mWfcHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    sput v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecCallButtonFragment;-><init>()V

    iput v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPrevAudioMode:I

    iput v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePosition:I

    iput v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    const-string v0, "xml"

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->format:Ljava/lang/String;

    iput v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I

    iput-boolean v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRunning:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    iput-boolean v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mIsSprWFCRegistered:Z

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$2;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$3;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mWfcHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$6;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$14;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$14;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDtmfHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateExtraButtons(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->checkThenModify(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->recordClicked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->swisButtonClicked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->emailClicked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mWfcHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I

    return p1
.end method

.method static synthetic access$2008(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRunning:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRunning:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->format:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateIVRList(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->saveAgreementFlag(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->process(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mIsSprWFCRegistered:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mIsSprWFCRegistered:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateEndCallButton(Z)V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0

    sput p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    return p0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0

    sput p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    return-void
.end method

.method private changePageExtraToInCall()V
    .locals 4

    const/16 v1, 0x65

    const-string v0, "changePageExtraToInCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private changePageIncallToIVR()V
    .locals 4

    const/16 v1, 0x3e9

    const-string v0, "changePageIncallToIVR"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private checkThenModify(I)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoLTESettingsEnabled()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v6, 0x40000

    invoke-virtual {v0, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isHoldStateOfTheOtherParty(Lcom/android/incallui/Call;)Z

    move-result v6

    if-nez v6, :cond_2

    move v2, v4

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkThenModify, enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", modifyPossible: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "volteSettingErrorShowNeverAgain"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->showVoLTESettingErrorDialog(I)V

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->showModifyErrorDialog()V

    goto :goto_0

    :cond_4
    const v5, 0x7f100256

    if-ne p1, v5, :cond_5

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_0

    :cond_5
    const v5, 0x7f100241

    if-ne p1, v5, :cond_0

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_0
.end method

.method private create_visual_call_pager_container()V
    .locals 4

    const v3, 0x7f100253

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "create_visual_call_pager_container: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "not_support_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    const-string v1, "create_visual_call_pager_container: mOutgoingButtonLayout"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iput v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCOutgoingButtonLayout:Landroid/view/ViewGroup;

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-nez v1, :cond_0

    const-string v1, "mViewPager == null: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100254

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->VCCPagerAdapter:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->VCCPagerAdapter:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const-string v1, "create_visual_call_pager_container: inCallButtonsPager"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private dismissUSAVoLTEDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method private emailClicked()V
    .locals 14

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emailClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    throw v0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_3
    :goto_2
    invoke-static {v6}, Lcom/android/incallui/PackageHelpers;->launchEmail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private enableVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 14

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/16 v13, 0x9

    if-eq v12, v13, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_3

    :cond_2
    const/4 v8, 0x0

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "enableVoiceCallButtons - disable buttons becauase conference call is under disconnecting"

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/4 v13, 0x6

    if-ne v12, v13, :cond_18

    :cond_5
    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_19

    const/4 v9, 0x1

    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHasBeenVideoCall()Z

    move-result v12

    if-nez v12, :cond_1a

    const/4 v0, 0x1

    :goto_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v12

    if-eqz v12, :cond_1b

    if-nez v7, :cond_1b

    if-eqz v0, :cond_1b

    const/4 v2, 0x1

    :goto_4
    const/4 v12, 0x4

    invoke-static {v12}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v2, 0x0

    :cond_6
    const/16 v12, 0x40

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v12

    if-eqz v12, :cond_1c

    if-nez v7, :cond_1c

    if-nez v9, :cond_1c

    const/4 v4, 0x1

    :goto_5
    const/16 v12, 0x10

    invoke-static {v12}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v4, 0x0

    :cond_7
    if-nez v7, :cond_1d

    const/4 v3, 0x1

    :goto_6
    const/4 v12, 0x2

    invoke-static {v12}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    const/4 v3, 0x0

    :cond_9
    const/4 v10, 0x1

    const/16 v12, 0x8

    invoke-static {v12}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v10, 0x0

    :cond_a
    const/4 v1, 0x1

    const/16 v12, 0x20

    invoke-static {v12}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v1, 0x0

    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    :cond_c
    if-nez v9, :cond_1e

    const/4 v5, 0x1

    :goto_7
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_d

    iget-object v13, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v8, :cond_1f

    if-eqz v2, :cond_1f

    const/4 v12, 0x1

    :goto_8
    invoke-virtual {v13, v12}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_d
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_e

    iget-object v13, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_20

    if-eqz v3, :cond_20

    iget-boolean v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mIsSprWFCRegistered:Z

    if-nez v12, :cond_20

    const/4 v12, 0x1

    :goto_9
    invoke-virtual {v13, v12}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_e
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_f

    iget-object v13, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_21

    if-eqz v1, :cond_21

    const/4 v12, 0x1

    :goto_a
    invoke-virtual {v13, v12}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_f
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_10

    iget-object v13, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_22

    if-eqz v10, :cond_22

    const/4 v12, 0x1

    :goto_b
    invoke-virtual {v13, v12}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_10
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v12, :cond_11

    iget-object v13, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v8, :cond_23

    if-eqz v5, :cond_23

    const/4 v12, 0x1

    :goto_c
    invoke-virtual {v13, v12}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_11
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_12

    iget-object v13, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v8, :cond_24

    if-eqz v4, :cond_24

    const/4 v12, 0x1

    :goto_d
    invoke-virtual {v13, v12}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_12
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v12, :cond_13

    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_13
    const-string v12, "ims_rcs"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v12

    if-eqz v12, :cond_25

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isRcsServiceAvailable : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_14

    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_14
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v12, :cond_15

    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mShareButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_15
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_16

    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_16
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v12, :cond_17

    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPromotedButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_17
    :goto_e
    const-string v12, "support_swis"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSwisButton:Landroid/widget/Button;

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v12

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/SwisHelper;->needToEnable(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v11

    iget-object v13, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSwisButton:Landroid/widget/Button;

    if-eqz v8, :cond_29

    if-eqz v11, :cond_29

    const/4 v12, 0x1

    :goto_f
    invoke-virtual {v13, v12}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_1f
    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_20
    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_21
    const/4 v12, 0x0

    goto/16 :goto_a

    :cond_22
    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_23
    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_24
    const/4 v12, 0x0

    goto/16 :goto_d

    :cond_25
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v12, :cond_26

    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_26
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v12, :cond_27

    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mShareButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_27
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v12, :cond_28

    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPromotedButton:Landroid/widget/Button;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    :cond_28
    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v12, :cond_17

    iget-object v12, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_e

    :cond_29
    const/4 v12, 0x0

    goto :goto_f
.end method

.method private getAgreementFlag()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "show_user_agreement_shared"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_user_agreement"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    return-object v0
.end method

.method private inflateExtraButtons(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f10025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEmailButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEmailButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10025e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInternetButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInternetButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPlannerButton:Landroid/widget/Button;

    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPlannerButton:Landroid/widget/Button;

    const v1, 0x7f0d01a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPlannerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMemoButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMemoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->showLatestPageIVR()V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePosition:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->changePageExtraToInCall()V

    :cond_1
    return-void
.end method

.method private declared-synchronized inflateIVRList(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    const v0, 0x7f1000ad

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/VisualCallCenter;->VCC_getAdapter(Landroid/content/Context;)Lcom/android/incallui/LowerMenuAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->adapter:Lcom/android/incallui/LowerMenuAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getIvrList()V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->adapter:Lcom/android/incallui/LowerMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized inflateInCallButtons(Landroid/view/View;)V
    .locals 6

    monitor-enter p0

    const v3, 0x7f100255

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtons:Landroid/view/View;

    const v3, 0x7f100248

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtonsUpper:Landroid/view/View;

    const v3, 0x7f100257

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getExtraVolumeLocation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const v3, 0x7f10024a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    const-string v3, "disable_button_sound_effects"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_0
    const v3, 0x7f10024b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "disable_button_sound_effects"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_1
    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "voice_call_recording_menu"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const v3, 0x7f100249

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f100245

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    :cond_4
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f100256

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCameraButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCameraButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCameraButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    const v3, 0x7f10025b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f100241

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    const-string v3, "support_swis"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/incallui/SwisHelper;->needToShow()Z

    move-result v3

    if-eqz v3, :cond_a

    const v3, 0x7f100259

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSwisButtonStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSwisButtonStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSwisButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f10028b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSwisButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSwisButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSwisButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_a
    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const v3, 0x7f100258

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPromotedButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$7;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$7;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const v3, 0x7f10025a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mShareButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mShareButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$8;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$8;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const v3, 0x7f10024d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "disable_button_sound_effects"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_d
    const v3, 0x7f10002f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f10002e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->returnButtonsForDialpad(Z)V

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    :cond_e
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->showFirstTimePageIVR(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->showLatestPageIVR()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized inflatePagerContainer()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "inflatePagerContainer: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "not_support_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100253

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100253

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V

    const-string v1, "inflatePagerContainer: mOutgoingButtonLayout"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePosition:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-nez v1, :cond_0

    const-string v1, "mPager == null: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100254

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v1, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallPagerAdapter;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerAdapter:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerAdapter:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const-string v1, "inflatePagerContainer: inCallButtonsPager"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private process(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->showFirstTimePageIVR(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/VisualCallCenter;->setDisplayIVRPager(Z)V

    goto :goto_0
.end method

.method private recordClicked()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->toggleRecord()V

    :cond_0
    return-void
.end method

.method private removePagerInstance()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_0

    const-string v0, "removePagerInstance"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_1

    const-string v0, "removePagerInstance mViewPager"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    :cond_1
    return-void
.end method

.method private saveAgreementFlag(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "show_user_agreement_shared"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "show_user_agreement"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showFirstTimePageIVR(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->changePageIncallToIVR()V

    iput-boolean v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    iput-boolean v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->bReadytoMoveIvrPage:Z

    iput-boolean v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->bFirstDisplayIvr:Z

    goto :goto_0
.end method

.method private showLatestPageIVR()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->changePageExtraToInCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->changePageExtraToInCall()V

    goto :goto_0
.end method

.method private showModifyErrorDialog()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Other party"

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$10;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$10;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showUserAgreementDialog()V
    .locals 13

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v10, 0x7f040146

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f100343

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v10, 0x7f0d0383

    invoke-virtual {p0, v10}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v10, 0x7f0d0385

    invoke-virtual {p0, v10}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/text/style/URLSpan;

    const-string v11, "http://m.dianhua.cn/ivr_termofservice"

    invoke-direct {v10, v11}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v4

    const/16 v12, 0x21

    invoke-virtual {v5, v10, v4, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v10, 0x7f100345

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v10, 0x7f100344

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v10, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$16;

    invoke-direct {v10, p0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$16;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0d0382

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0d0384

    new-instance v11, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$17;

    invoke-direct {v11, p0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$17;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$18;

    invoke-direct {v11, p0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$18;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$19;

    invoke-direct {v10, p0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$19;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showVoLTESettingErrorDialog(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f04014a

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x1020001

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    const v5, 0x7f100352

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$11;

    invoke-direct {v7, p0, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$11;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/widget/Checkable;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private swisButtonClicked()V
    .locals 1

    const-string v0, "swisButtonClicked()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPrimaryPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/SwisHelper;->startSwis(Ljava/lang/String;)V

    return-void
.end method

.method private updateAudioButtons(I)V
    .locals 4

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->isAudio(I)Z

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->isAudio(I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetoothEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speakerEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateMuteButton()V

    return-void
.end method

.method private updateEndCallButton(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->setEndCallButtonIcon(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMuteButton()V
    .locals 3

    const-string v1, "updateMuteButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isMuted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updatePagerDescription(I)V
    .locals 7

    const/4 v6, 0x2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updatePagerDescriptionIVR(I)V
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updatePagerIndicator(I)V
    .locals 4

    const v1, 0x7f0201c4

    const v0, 0x7f0201c3

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->changePageExtraToInCall()V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updatePagerIndicatorIVR(I)V
    .locals 3

    const v1, 0x7f0201c4

    const v0, 0x7f0201c3

    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->changePageExtraToInCall()V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updatePagerState(Lcom/android/incallui/Call;)V
    .locals 11

    const/16 v10, 0x9

    const/16 v9, 0x8

    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    if-ne v3, v9, :cond_12

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    :cond_3
    const-string v6, "emergency_find_lost_phone"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x0

    :cond_6
    const-string v6, "not_support_extra_view_page"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x0

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKioskMode()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    const/4 v2, 0x0

    :cond_9
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v6, :cond_a

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_13

    move v6, v4

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v6, :cond_e

    const-string v6, "support_safetycare"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    if-eq v3, v10, :cond_c

    const/16 v6, 0xa

    if-ne v3, v6, :cond_14

    :cond_c
    move v1, v5

    :goto_3
    if-eqz v1, :cond_15

    :cond_d
    :goto_4
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v6, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setScrollable(Z)V

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v6}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updatePagerIndicator(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updatePagerDescription(I)V

    :cond_e
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v6, :cond_0

    if-eq v3, v10, :cond_f

    const/16 v6, 0xa

    if-ne v3, v6, :cond_16

    :cond_f
    move v1, v5

    :goto_5
    if-eqz v1, :cond_17

    :cond_10
    :goto_6
    if-eqz v2, :cond_11

    invoke-direct {p0, v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->showFirstTimePageIVR(Z)V

    :cond_11
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v4, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setScrollable(Z)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updatePagerIndicatorIVR(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updatePagerDescriptionIVR(I)V

    const-string v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_12
    move v2, v4

    goto/16 :goto_1

    :cond_13
    move v6, v7

    goto/16 :goto_2

    :cond_14
    move v1, v4

    goto :goto_3

    :cond_15
    if-nez v2, :cond_d

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v6, v4, v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    iput v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePosition:I

    goto :goto_4

    :cond_16
    move v1, v4

    goto :goto_5

    :cond_17
    if-nez v2, :cond_10

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v6, v5, v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    iput v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    goto :goto_6

    :cond_18
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v5, v4, v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    iput v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    goto :goto_6

    :cond_19
    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updatePagerIndicator(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updatePagerDescription(I)V

    goto/16 :goto_0
.end method

.method private updateVideoBtnImage(I)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateVoiceCallButtons()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private updateVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateAudioButtons(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateExtraVolumeButton()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateDiapadButton()V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateVolteButton(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private updateVolteButton(Lcom/android/incallui/Call;)V
    .locals 12

    const/16 v11, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    if-ne v9, v11, :cond_5

    move v2, v7

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/secui/SecUiAdapter;->isSwapProcessing()Z

    move-result v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoLTESettingsEnabled()I

    move-result v4

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/secservice/SecVideoCallManager;->isLTEVideoCallMenuShow()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    invoke-static {v9}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v9

    if-nez v9, :cond_6

    if-nez v2, :cond_6

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getSuppService()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v4, :cond_6

    :cond_2
    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v9

    if-nez v9, :cond_6

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/secservice/SecVideoCallManager;->getHandoverPending()Z

    move-result v9

    if-nez v9, :cond_6

    move v0, v7

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateVolteButton() IsDialing:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    invoke-static {v10}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isOnHold:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isConference:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " SystemDBInterface.getSuppService():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getSuppService()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IsEmergencyMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IsUltraPowerSavingMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IsPSDomain:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " VOLTE_SETTING_ENABLED:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " swapProcessing:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IsTTyOff:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v9

    if-nez v9, :cond_7

    move v9, v7

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IsHandoverPending:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/secservice/SecVideoCallManager;->getHandoverPending()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v9, :cond_4

    if-eqz v5, :cond_8

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v9, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_3
    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v0, :cond_4

    invoke-direct {p0, v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateVideoBtnImage(I)V

    :cond_4
    :goto_4
    const-string v9, "vzw_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v3

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    if-nez v3, :cond_b

    :goto_5
    invoke-virtual {v9, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    move v2, v8

    goto/16 :goto_1

    :cond_6
    move v0, v8

    goto/16 :goto_2

    :cond_7
    move v9, v8

    goto :goto_3

    :cond_8
    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v9, v11}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_9
    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v9, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_a
    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v9, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_4

    :cond_b
    move v7, v8

    goto :goto_5
.end method


# virtual methods
.method public animateForMoveDialpad(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz p1, :cond_4

    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0189

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a018a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtons:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v10, [F

    if-eqz p1, :cond_5

    :goto_2
    aput v2, v9, v6

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v10, [F

    if-eqz p1, :cond_6

    :goto_3
    aput v1, v9, v6

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v6}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    :cond_5
    move v2, v7

    goto :goto_2

    :cond_6
    move v1, v7

    goto :goto_3
.end method

.method public animateForRevealEndCallButton()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$9;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$9;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public animateForRevealViews()V
    .locals 7

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtons:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtons:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$12;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$12;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public extraVolumeClicked()V
    .locals 0

    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleExtraVolume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateExtraVolumeButton()V

    return-void
.end method

.method protected getIvrList()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v1, "getIvrList()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$15;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$15;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const v3, 0x7f040131

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v4, 0x7f100247

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtonContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v4, 0x7f10024e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v4, 0x7f10024f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {v5}, Lcom/android/incallui/VisualCallCenter;->setDisplayIVRPager(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "visual_call_update_type"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vCallNetSelect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/android/incallui/VisualCallCenter;->VCC_setUpdateIVRLimit(I)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->VCC_getUpdateIVRLimit()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdateIVRlimit()1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v4, 0x7f100250

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v4, 0x7f100251

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorLeft:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v4, 0x7f100252

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicatorRight:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    const v4, 0x7f100318

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator3:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$4;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$4;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    invoke-virtual {v3, v4}, Lcom/android/incallui/VisualCallCenter;->setOnIVRScreenRemovedListener(Lcom/android/incallui/VisualCallCenter$OnIVRScreenRemovedListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getAgreementFlag()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->showUserAgreementDialog()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.incallui"

    const-string v5, "VCCS"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mParentView:Landroid/view/View;

    return-object v3

    :cond_1
    if-ne v2, v5, :cond_2

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/incallui/VisualCallCenter;->VCC_setUpdateIVRLimit(I)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/incallui/VisualCallCenter;->VCC_setUpdateIVRLimit(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x3e9

    const/16 v2, 0x65

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sput v1, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCurrentPageScrollState:I

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->removePagerInstance()V

    sput v1, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->releaseDisplayIVRPager()V

    iput-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLegalAgreementDialog:Landroid/app/AlertDialog;

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->dismissUSAVoLTEDialogs()V

    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onPause()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VoWifiStateTracker;->unregisterForWfcRegistrationStatus()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onResume:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/VoWifiStateTracker;->registerForWfcRegistrationStatus(Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateEndCallButton(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mIsSprWFCRegistered:Z

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflatePagerContainer()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->isPenMultiWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePosition:I

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->removePagerInstance()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePosition:I

    goto :goto_0
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz p1, :cond_4

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0189

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a018a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtons:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_3
.end method

.method public setAudio(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPrevAudioMode:I

    if-eq v2, p1, :cond_2

    iget v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPrevAudioMode:I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateAudioButtons(I)V

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPrevAudioMode:I

    if-ne v2, v3, :cond_3

    if-ne p1, v5, :cond_3

    move v2, v3

    :goto_0
    or-int/2addr v0, v2

    iget v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPrevAudioMode:I

    if-ne v2, v5, :cond_4

    if-ne p1, v3, :cond_4

    :goto_1
    or-int/2addr v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateExtraVolumeButton()V

    :cond_1
    iput p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPrevAudioMode:I

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mIsEnabled:Z

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSwisButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSwisButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPagerIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public setEndCallButtonIcon(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const v0, 0x7f020340

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void

    :cond_0
    const v0, 0x7f0202ab

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateMuteButton()V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateAudioButtons(I)V

    return-void
.end method

.method public setViewStateBeforeOutgoingAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setupRcsCallButtons()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mShareButton:Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/rcs/RcsShareUI;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/widget/Button;Landroid/widget/Button;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mShareButton:Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/rcs/RcsShareUI;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/widget/Button;Landroid/widget/Button;)V

    goto :goto_0
.end method

.method public showAddCallButton(Z)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "updateCallButtons:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->create_visual_call_pager_container()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflatePagerContainer()V

    goto :goto_0
.end method

.method public updateDiapadButton()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDiapadButton..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0d0192

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0d0191

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateExtraVolumeButton()V
    .locals 3

    const-string v1, "updateExtraVolumeButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/SoundEffect;->isExtraVolOn()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isExtraVolOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
