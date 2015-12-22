.class public Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;
.super Lcom/android/incallui/SecCallButtonFragment;
.source "SecCallPlusVoiceCallButtonFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$OutgoingPagerAdapter;,
        Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallPagerAdapter;,
        Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecCallButtonFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static mCurrentPageScrollState:I


# instance fields
.field private imageLayout:Landroid/widget/LinearLayout;

.field private isCallPlus:Z

.field private isUiEntery:Z

.field private mAction:Ljava/lang/String;

.field private mAddCallButton:Landroid/widget/Button;

.field private mBackground:Ljava/lang/String;

.field private mCallPlus:Landroid/widget/Button;

.field private mCallPlusAddress:Landroid/widget/TextView;

.field private mCallPlusImageMap:Landroid/widget/ImageView;

.field private mCallPlusImportance:Landroid/widget/ImageView;

.field private mCallPlusMap:Landroid/widget/ImageView;

.field private mCallPlusStub:Landroid/view/ViewStub;

.field private mCallPlusSubject:Landroid/widget/TextView;

.field private mCameraButton:Landroid/widget/Button;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContactButton:Landroid/widget/Button;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEmailButton:Landroid/widget/Button;

.field private mExtraVolumeButton:Landroid/widget/ToggleButton;

.field private mHandler:Landroid/os/Handler;

.field private mImportance:I

.field private mInCallButtonLayout:Landroid/view/ViewGroup;

.field private mInCallButtons:Landroid/view/View;

.field private mInternetButton:Landroid/widget/Button;

.field private mIsEnabled:Z

.field private mIsSprWFCRegistered:Z

.field private mLastestPagePosition:I

.field private mLocation:Ljava/lang/String;

.field private mLocation_map:Ljava/lang/String;

.field private mMemoButton:Landroid/widget/Button;

.field private mMessageButton:Landroid/widget/Button;

.field private mModifyErrorDialog:Landroid/app/AlertDialog;

.field private mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mOneWayCameraButton:Landroid/widget/Button;

.field private mOneWayCameraButtonStub:Landroid/view/ViewStub;

.field private mOutgoingButtonLayout:Landroid/view/ViewGroup;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

.field private mPagerAdapter:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallPagerAdapter;

.field private mPagerAdapter_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$OutgoingPagerAdapter;

.field private mPagerIndicator:Landroid/view/View;

.field private mPagerIndicatorCallPlus:Landroid/view/View;

.field private mPagerIndicatorCallPlusStub:Landroid/view/ViewStub;

.field protected mPagerIndicatorCallPlusWrapper:Landroid/view/View;

.field private mPagerIndicatorLeft:Landroid/view/View;

.field protected mPagerIndicatorLeftWrapper:Landroid/view/View;

.field private mPagerIndicatorRight:Landroid/view/View;

.field protected mPagerIndicatorRightWrapper:Landroid/view/View;

.field private mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

.field private mParentView:Landroid/view/View;

.field private mPlannerButton:Landroid/widget/Button;

.field private mPrevAudioMode:I

.field private mPromotedButton:Landroid/widget/Button;

.field private mShareButton:Landroid/widget/Button;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSubject:Ljava/lang/String;

.field private mUri:Ljava/lang/String;

.field private mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

.field private mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

.field private mWfcHandler:Landroid/os/Handler;

.field private mapLayout:Landroid/widget/LinearLayout;

.field popupWindow:Landroid/widget/PopupWindow;

.field popupWindow_map:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCurrentPageScrollState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecCallButtonFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow:Landroid/widget/PopupWindow;

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    iput-boolean v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iput-boolean v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isUiEntery:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mImportance:I

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSubject:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation_map:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mUri:Ljava/lang/String;

    iput v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPrevAudioMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLastestPagePosition:I

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$1;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    new-instance v0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$2;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    new-instance v0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$3;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mWfcHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$5;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation_map:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->checkThenModify(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->recordClicked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->emailClicked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlus:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mWfcHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateEndCallButton(Z)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCurrentPageScrollState:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCurrentPageScrollState:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->inflateCallPlus(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->inflateExtraButtons(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method private changePageCallPlusToInCall()V
    .locals 4

    const/16 v1, 0x66

    const-string v0, "changePageCallPlusToInCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private changePageExtraToInCall()V
    .locals 4

    const/16 v1, 0x65

    const-string v0, "changePageExtraToInCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private checkThenModify(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoLTESettingsEnabled()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v4, 0x40000

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkThenModify, enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", modifyPossible: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "volteSettingErrorShowNeverAgain"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->showVoLTESettingErrorDialog(I)V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->showModifyErrorDialog()V

    goto :goto_0

    :cond_3
    const v4, 0x7f100256

    if-ne p1, v4, :cond_4

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_0

    :cond_4
    const v4, 0x7f100241

    if-ne p1, v4, :cond_0

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    goto :goto_0
.end method

.method private dismissUSAVoLTEDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

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
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

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
    .locals 12

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_3

    :cond_2
    const/4 v7, 0x0

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "enableVoiceCallButtons - disable buttons becauase conference call is under disconnecting"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0xd

    if-eq v10, v11, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_17

    :cond_5
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_18

    const/4 v8, 0x1

    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHasBeenVideoCall()Z

    move-result v10

    if-nez v10, :cond_19

    const/4 v0, 0x1

    :goto_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v10

    if-eqz v10, :cond_1a

    if-nez v6, :cond_1a

    if-eqz v0, :cond_1a

    const/4 v2, 0x1

    :goto_4
    if-nez v6, :cond_6

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    const/4 v10, 0x4

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v2, 0x0

    :cond_7
    const/16 v10, 0x40

    invoke-virtual {p1, v10}, Lcom/android/incallui/Call;->can(I)Z

    move-result v10

    if-eqz v10, :cond_1b

    if-nez v6, :cond_1b

    if-nez v8, :cond_1b

    const/4 v4, 0x1

    :goto_5
    const/16 v10, 0x10

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v4, 0x0

    :cond_8
    if-nez v6, :cond_1c

    const/4 v3, 0x1

    :goto_6
    const/4 v10, 0x2

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v3, 0x0

    :cond_9
    const/4 v9, 0x1

    const/16 v10, 0x8

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v9, 0x0

    :cond_a
    const/4 v1, 0x1

    const/16 v10, 0x20

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v1, 0x0

    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    :cond_c
    if-nez v8, :cond_1d

    const/4 v5, 0x1

    :goto_7
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v10, :cond_d

    iget-object v11, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_1e

    if-eqz v2, :cond_1e

    const/4 v10, 0x1

    :goto_8
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_d
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v10, :cond_e

    iget-object v11, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_1f

    if-eqz v3, :cond_1f

    iget-boolean v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    if-nez v10, :cond_1f

    const/4 v10, 0x1

    :goto_9
    invoke-virtual {v11, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_e
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v10, :cond_f

    iget-object v11, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_20

    if-eqz v1, :cond_20

    const/4 v10, 0x1

    :goto_a
    invoke-virtual {v11, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_f
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v10, :cond_10

    iget-object v11, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_21

    if-eqz v9, :cond_21

    const/4 v10, 0x1

    :goto_b
    invoke-virtual {v11, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_10
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v10, :cond_11

    iget-object v11, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v7, :cond_22

    if-eqz v5, :cond_22

    const/4 v10, 0x1

    :goto_c
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_11
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v10, :cond_12

    iget-object v11, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_23

    if-eqz v4, :cond_23

    const/4 v10, 0x1

    :goto_d
    invoke-virtual {v11, v10}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_12
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_13
    const-string v10, "ims_rcs"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v10

    if-eqz v10, :cond_24

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isRcsServiceAvailable : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_14
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    :cond_15
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    :cond_16
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_1f
    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_20
    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_21
    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_22
    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_23
    const/4 v10, 0x0

    goto/16 :goto_d

    :cond_24
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v10, :cond_25

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_25
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v10, :cond_26

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    :cond_26
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v10, :cond_27

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    :cond_27
    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized inflateCallPlus(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflateCallPlus isCallPlus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const v0, 0x7f10031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mapLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f100320

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->imageLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f10031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    const v0, 0x7f10031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusSubject:Landroid/widget/TextView;

    const v0, 0x7f10031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusAddress:Landroid/widget/TextView;

    const v0, 0x7f100321

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    const v0, 0x7f10031e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusMap:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mImportance:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusImportance(ZI)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusSubject(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation_map:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation_map:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMap(ZLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation_map:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusSubject:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusAddress:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusMap:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private inflateExtraButtons(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x2

    const v0, 0x7f10025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEmailButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEmailButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10025e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInternetButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInternetButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPlannerButton:Landroid/widget/Button;

    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPlannerButton:Landroid/widget/Button;

    const v1, 0x7f0d01a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPlannerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMemoButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMemoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLastestPagePosition:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->changePageExtraToInCall()V

    :cond_1
    return-void
.end method

.method private declared-synchronized inflateInCallButtons(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    monitor-enter p0

    const v2, 0x7f100255

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    const v2, 0x7f100257

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f100317

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f1000d9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v2, 0x7f10024a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "disable_button_sound_effects"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_1
    const v2, 0x7f10024b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "disable_button_sound_effects"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_2
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f100249

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f100245

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f100256

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    const v2, 0x7f10025b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    const v2, 0x7f100241

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f100258

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$6;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const v2, 0x7f10025a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$7;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$7;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const v2, 0x7f10024d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "disable_button_sound_effects"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_b
    const v2, 0x7f10002f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f10002e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->returnButtonsForDialpad(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableVoiceCallButtons isUiEntery "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isUiEntery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isUiEntery:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_d
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_f
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_10

    iget v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLastestPagePosition:I

    if-ne v2, v5, :cond_14

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->changePageCallPlusToInCall()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    :goto_1
    monitor-exit p0

    return-void

    :cond_11
    :try_start_1
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_12
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_13
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_14
    :try_start_2
    iget v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLastestPagePosition:I

    if-ne v2, v6, :cond_10

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->changePageExtraToInCall()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized inflatePagerContainer()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "not_support_extra_view_page"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100253

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V
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
    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100316

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v1, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$OutgoingPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$OutgoingPagerAdapter;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerAdapter_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$OutgoingPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerAdapter_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$OutgoingPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const-string v1, "inflatePagerContainer: outgoingButtonsPager Call Plus"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLastestPagePosition:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->removePagerInstance_out()V

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100316

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v1, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallPagerAdapter;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerAdapter:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallPagerAdapter;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerAdapter:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const-string v1, "inflatePagerContainer: inCallButtonsPagerCallPlus"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLastestPagePosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static final isNonSeparator(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryForCallPlus()V
    .locals 9

    const/4 v8, 0x2

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_2

    move v3, v5

    :goto_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    :cond_0
    :goto_1
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryForCallPlus number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "ARG_MSISDN"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ARG_COLUMNS"

    sget-object v7, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v6, "ARG_MSISDN"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ARG_COLUMNS"

    sget-object v7, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_SHARING_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    invoke-virtual {v6, v5, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v5, v8, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_2
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_2
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

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_0

    const-string v0, "removePagerInstance"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    :cond_0
    return-void
.end method

.method private removePagerInstance_out()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_0

    const-string v0, "removePagerInstance_out"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    :cond_0
    return-void
.end method

.method private setCallPlusAddress(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusAddress:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setCallPlusImportance(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setCallPlusMap(ZLjava/lang/String;Z)V
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallPlusMap show :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusMap:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusMap:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method private setCallPlusMapImage(ZLjava/lang/String;Z)V
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallPlusMapImage show :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->imageLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mapLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mapLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method private setCallPlusSubject(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

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

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

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

    new-instance v3, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$9;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$9;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showVoLTESettingErrorDialog(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$10;

    invoke-direct {v7, p0, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$10;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;Landroid/widget/Checkable;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

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

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "InCall"

    const-string v5, "SecCallPlusVoiceCallButtonFragment striping done...."

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateAudioButtons(I)V
    .locals 4

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isAudio(I)Z

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isAudio(I)Z

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

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateMuteButton()V

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

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setEndCallButtonIcon(Z)V

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

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updatePagerDescription(I)V
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

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updatePagerIndicator(I)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v2, 0x7f0201c4

    const v1, 0x7f0201c3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v6, :cond_0

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v6, :cond_7

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->changePageCallPlusToInCall()V

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlusWrapper:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlusWrapper:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlus:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlus:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    move v3, v4

    goto :goto_0

    :cond_8
    if-ne p1, v5, :cond_b

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlus:Landroid/view/View;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlus:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_9
    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_a
    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_b
    const/4 v4, 0x2

    if-ne p1, v4, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->changePageExtraToInCall()V

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlus:Landroid/view/View;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlus:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_c
    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_d
    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private updatePagerState(Lcom/android/incallui/Call;)V
    .locals 11

    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    const/4 v7, 0x3

    if-eq v4, v7, :cond_2

    const/16 v7, 0x8

    if-eq v4, v7, :cond_2

    const/4 v7, 0x6

    if-eq v4, v7, :cond_2

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v1, v7, :cond_2

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v7, :cond_11

    :cond_2
    move v3, v6

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x0

    :cond_3
    const-string v7, "support_safetycare"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v3, 0x0

    :cond_4
    const-string v7, "emergency_find_lost_phone"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v3, 0x0

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v3, 0x0

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v3, 0x0

    :cond_7
    const-string v7, "not_support_extra_view_page"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v3, 0x0

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKioskMode()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    const/4 v3, 0x0

    :cond_a
    iget-object v7, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v7, :cond_b

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v3, :cond_12

    move v7, v5

    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v7, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v7, :cond_e

    if-eq v4, v9, :cond_c

    if-ne v4, v10, :cond_13

    :cond_c
    move v2, v6

    :goto_3
    if-eqz v2, :cond_14

    :cond_d
    :goto_4
    iget-object v7, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v7, v3}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setScrollable(Z)V

    iget-object v7, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v7}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updatePagerIndicator(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updatePagerDescription(I)V

    :cond_e
    iget-object v7, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v7, :cond_0

    if-eq v4, v9, :cond_f

    if-ne v4, v10, :cond_15

    :cond_f
    move v2, v6

    :goto_5
    if-eqz v2, :cond_16

    :cond_10
    :goto_6
    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v5, v3}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setScrollable(Z)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v5}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updatePagerIndicator(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updatePagerDescription(I)V

    goto/16 :goto_0

    :cond_11
    move v3, v5

    goto/16 :goto_1

    :cond_12
    const/4 v7, 0x4

    goto :goto_2

    :cond_13
    move v2, v5

    goto :goto_3

    :cond_14
    if-nez v3, :cond_d

    iget-boolean v7, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v7, v6, v5}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(IZ)V

    iput v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLastestPagePosition:I

    goto :goto_4

    :cond_15
    move v2, v5

    goto :goto_5

    :cond_16
    if-nez v3, :cond_10

    iget-boolean v7, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v7, v6, v5}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(IZ)V

    iput v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLastestPagePosition:I

    goto :goto_6
.end method

.method private updateVideoBtnImage(I)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

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

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

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

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateAudioButtons(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateExtraVolumeButton()V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateDiapadButton()V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateVolteButton(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private updateVolteButton(Lcom/android/incallui/Call;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    move v2, v5

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/secui/SecUiAdapter;->isSwapProcessing()Z

    move-result v4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoLTESettingsEnabled()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getSuppService()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->getHandoverPending()Z

    move-result v7

    if-nez v7, :cond_4

    move v0, v5

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVolteButton() IsDialing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-static {v8}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isOnHold:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConference:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " SystemDBInterface.getSuppService():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getSuppService()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IsEmergencyMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IsUltraPowerSavingMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IsPSDomain:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " VOLTE_SETTING_ENABLED:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " swapProcessing:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IsTTyOff:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v8

    if-nez v8, :cond_5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " IsHandoverPending:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/secservice/SecVideoCallManager;->getHandoverPending()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateVideoBtnImage(I)V

    goto/16 :goto_0

    :cond_3
    move v2, v6

    goto/16 :goto_1

    :cond_4
    move v0, v6

    goto/16 :goto_2

    :cond_5
    move v5, v6

    goto :goto_3
.end method


# virtual methods
.method public animateForMoveDialpad(Z)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v2

    if-eqz p1, :cond_3

    cmpl-float v6, v3, v7

    if-gtz v6, :cond_0

    cmpl-float v6, v2, v7

    if-gtz v6, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0001

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a0189

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v12, [F

    if-eqz p1, :cond_4

    move v6, v0

    :goto_1
    aput v6, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v12, [F

    if-eqz p1, :cond_5

    :goto_2
    aput v0, v9, v11

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v7}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    cmpl-float v6, v3, v7

    if-eqz v6, :cond_0

    cmpl-float v6, v2, v7

    if-nez v6, :cond_2

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2
.end method

.method public animateForRevealEndCallButton()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$8;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$8;-><init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public animateForRevealViews()V
    .locals 7

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public extraVolumeClicked()V
    .locals 0

    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleExtraVolume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateExtraVolumeButton()V

    return-void
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBackPress()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setScrollable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setScrollable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setScrollable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setScrollable(Z)V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->queryForCallPlus()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "ARG_MSISDN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "ARG_COLUMNS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "onCreateLoader CALLCONTENT_LOADER :"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/incallui/UIEntryPointsContract;->UI_ENTRY_POINTS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f04012d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f10024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f10024f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->inflatePagerContainer()V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100250

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100313

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlusStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlusStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlusStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlusStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlus:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100266

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlusWrapper:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlusWrapper:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlusWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100251

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100314

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v1, 0x7f100315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const/16 v2, 0x66

    const/16 v1, 0x65

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCurrentPageScrollState:I

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->removePagerInstance()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->removePagerInstance_out()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->dismissUSAVoLTEDialogs()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onDestroyView()V

    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateVoiceCallButtons()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished CALLCONTENT_LOADER :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateUiEntryPoint(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "onLoaderReset CALLCONTENT_LOADER :"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateUiEntryPoint(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VoWifiStateTracker;->unregisterForWfcRegistrationStatus()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->inflatePagerContainer()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/VoWifiStateTracker;->registerForWfcRegistrationStatus(Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateEndCallButton(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLastestPagePosition:I

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLastestPagePosition:I

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->removePagerInstance()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->removePagerInstance_out()V

    :cond_2
    return-void
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0189

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public setAudio(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPrevAudioMode:I

    if-eq v2, p1, :cond_2

    iget v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPrevAudioMode:I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateAudioButtons(I)V

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPrevAudioMode:I

    if-ne v2, v3, :cond_3

    if-ne p1, v5, :cond_3

    move v2, v3

    :goto_0
    or-int/2addr v0, v2

    iget v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPrevAudioMode:I

    if-ne v2, v5, :cond_4

    if-ne p1, v3, :cond_4

    :goto_1
    or-int/2addr v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateExtraVolumeButton()V

    :cond_1
    iput p1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPrevAudioMode:I

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

    iput-boolean p1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mIsEnabled:Z

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public setEndCallButtonIcon(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

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

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateMuteButton()V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateAudioButtons(I)V

    return-void
.end method

.method public setViewStateBeforeOutgoingAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setupRcsCallButtons()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/rcs/RcsShareUI;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/widget/Button;Landroid/widget/Button;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

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

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->inflatePagerContainer()V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public updateDiapadButton()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isDialpadVisible()Z

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

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0d0192

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0d0191

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

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

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateUiEntryPoint(Landroid/database/Cursor;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUiEntryPoint data :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAction:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mUri:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUiEntryPoint mAction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isUiEntery:Z

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iput-boolean v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isUiEntery:Z

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlus:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateView(Landroid/database/Cursor;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView data :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mImportance:I

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSubject:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation_map:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mImportance:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusImportance(ZI)V

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusSubject(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v3}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isCallPlus:Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation_map:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusMap:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mCallPlusImageMap:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
