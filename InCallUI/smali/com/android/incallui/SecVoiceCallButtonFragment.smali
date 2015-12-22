.class public Lcom/android/incallui/SecVoiceCallButtonFragment;
.super Lcom/android/incallui/SecCallButtonFragment;
.source "SecVoiceCallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;,
        Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;
    }
.end annotation


# static fields
.field protected static mCurrentPageScrollState:I


# instance fields
.field private mAddCallButton:Landroid/widget/Button;

.field protected mCallButtonContainer:Landroid/view/View;

.field private mCameraButton:Landroid/widget/Button;

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field private mContactButton:Landroid/widget/Button;

.field protected mDialpadButton:Landroid/widget/Button;

.field private mEmailButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallStateChangeReceiver:Lcom/android/incallui/IMSCallStateChangeReceiver;

.field private mImsCallStateTracker:Lcom/android/incallui/IMSCallStateTracker;

.field private mInCallButtonLayout:Landroid/view/ViewGroup;

.field protected mInCallButtons:Landroid/view/View;

.field protected mInCallButtonsUpper:Landroid/view/View;

.field private mInternetButton:Landroid/widget/Button;

.field protected mIsEnabled:Z

.field protected mIsSprWFCRegistered:Z

.field private mIsVoWifiEndButton:Z

.field protected mLastestPagePosition:I

.field private mMemoButton:Landroid/widget/Button;

.field private mMessageButton:Landroid/widget/Button;

.field private mModifyErrorDialog:Landroid/app/AlertDialog;

.field protected mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

.field private mOneWayCameraButton:Landroid/widget/Button;

.field private mOneWayCameraButtonStub:Landroid/view/ViewStub;

.field protected mOutgoingButtonLayout:Landroid/view/ViewGroup;

.field protected mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field protected mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

.field private mPagerAdapter:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;

.field protected mPagerIndicator:Landroid/view/View;

.field protected mPagerIndicatorLeft:Landroid/view/View;

.field protected mPagerIndicatorLeftWrapper:Landroid/view/View;

.field protected mPagerIndicatorRight:Landroid/view/View;

.field protected mPagerIndicatorRightWrapper:Landroid/view/View;

.field protected mParentView:Landroid/view/View;

.field private mPlannerButton:Landroid/widget/Button;

.field protected mPrevAudioMode:I

.field private mPromotedButton:Landroid/widget/Button;

.field private mShareButton:Landroid/widget/Button;

.field protected mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSupportVoWifi:Z

.field private mSwisButton:Landroid/widget/Button;

.field private mSwisButtonStub:Landroid/view/ViewStub;

.field private mSwitchCallButton:Landroid/widget/Button;

.field private mSwitchCallButtonStub:Landroid/view/ViewStub;

.field private mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

.field protected mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

.field protected mWfcHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCurrentPageScrollState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecCallButtonFragment;-><init>()V

    iput v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPrevAudioMode:I

    iput v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mLastestPagePosition:I

    iput-boolean v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSupportVoWifi:Z

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$1;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$2;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$3;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mWfcHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonFragment$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$5;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonFragment$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$6;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecVoiceCallButtonFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/SecVoiceCallButtonFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->checkThenModify(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/SecVoiceCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->switchToVideoCallClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/SecVoiceCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->swisButtonClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/SecVoiceCallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->emailClicked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/SecVoiceCallButtonFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/SecVoiceCallButtonFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private changePageExtraToInCall()V
    .locals 4

    const/16 v1, 0x65

    const-string v0, "changePageExtraToInCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "volteSettingErrorShowNeverAgain"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->showVoLTESettingErrorDialog(I)V

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->showModifyErrorDialog()V

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

.method private dismissUSAVoLTEDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

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
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

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
    .locals 19

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v11, 0x0

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v17, "enableVoiceCallButtons - disable buttons becauase conference call is under disconnecting"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    :cond_5
    const/4 v10, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    const/4 v12, 0x1

    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHasBeenVideoCall()Z

    move-result v17

    if-nez v17, :cond_22

    const/4 v2, 0x1

    :goto_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v17

    if-eqz v17, :cond_23

    if-nez v10, :cond_23

    if-eqz v2, :cond_23

    const/4 v4, 0x1

    :goto_4
    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v4, 0x0

    :cond_6
    const-string v17, "not_support_addcall_button"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v4, 0x0

    :cond_7
    const/16 v17, 0x40

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    if-eqz v17, :cond_24

    if-nez v10, :cond_24

    if-nez v12, :cond_24

    const/4 v7, 0x1

    :goto_5
    const/16 v17, 0x10

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v7, 0x0

    :cond_8
    if-nez v10, :cond_25

    const/4 v5, 0x1

    :goto_6
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->isEpdgCall()Z

    move-result v17

    if-eqz v17, :cond_a

    const-string v17, "tmo_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    :cond_9
    const/4 v5, 0x0

    :cond_a
    const/4 v15, 0x1

    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v17

    if-eqz v17, :cond_b

    const/4 v15, 0x0

    :cond_b
    const/4 v3, 0x1

    const/16 v17, 0x20

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v17

    if-nez v17, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEncryptionMode()Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_c
    const/4 v3, 0x0

    :cond_d
    const/high16 v17, 0x40000

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    if-eqz v17, :cond_26

    if-nez v10, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v17

    if-nez v17, :cond_26

    const/4 v6, 0x1

    :goto_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v17

    if-eqz v17, :cond_e

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/4 v3, 0x0

    :cond_e
    const-string v17, "support_nsri_secure"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_f
    const/4 v7, 0x0

    const/4 v15, 0x0

    const/4 v3, 0x0

    :cond_10
    if-nez v12, :cond_27

    const/4 v8, 0x1

    :goto_8
    const-string v17, "ims_voice_conference_kddi"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v14

    const/4 v13, 0x0

    if-eqz v14, :cond_11

    invoke-virtual {v14}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_28

    const/4 v13, 0x1

    :cond_11
    :goto_9
    if-nez v13, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v17

    if-eqz v17, :cond_13

    :cond_12
    const/4 v4, 0x0

    const/4 v8, 0x0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v11, :cond_29

    if-eqz v4, :cond_29

    const/16 v17, 0x1

    :goto_a
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    if-eqz v11, :cond_2a

    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    move/from16 v17, v0

    if-nez v17, :cond_2a

    const/16 v17, 0x1

    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    if-eqz v11, :cond_2b

    if-eqz v3, :cond_2b

    const/16 v17, 0x1

    :goto_c
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    if-eqz v11, :cond_2c

    if-eqz v15, :cond_2c

    const/16 v17, 0x1

    :goto_d
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v11, :cond_2d

    if-eqz v8, :cond_2d

    const/16 v17, 0x1

    :goto_e
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    if-eqz v11, :cond_2e

    if-eqz v7, :cond_2e

    const/16 v17, 0x1

    :goto_f
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwitchCallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwitchCallButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v11, :cond_2f

    if-eqz v6, :cond_2f

    const/16 v17, 0x1

    :goto_10
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1b
    const-string v17, "ims_rcs"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v17

    if-eqz v17, :cond_30

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isRcsServiceAvailable : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1f
    :goto_11
    const-string v17, "support_swis"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwisButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/SwisHelper;->needToEnable(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwisButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v11, :cond_34

    if-eqz v16, :cond_34

    const/16 v17, 0x1

    :goto_12
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_20
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_21
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_24
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_25
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_26
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_27
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_28
    const/4 v13, 0x0

    goto/16 :goto_9

    :cond_29
    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_2a
    const/16 v17, 0x0

    goto/16 :goto_b

    :cond_2b
    const/16 v17, 0x0

    goto/16 :goto_c

    :cond_2c
    const/16 v17, 0x0

    goto/16 :goto_d

    :cond_2d
    const/16 v17, 0x0

    goto/16 :goto_e

    :cond_2e
    const/16 v17, 0x0

    goto/16 :goto_f

    :cond_2f
    const/16 v17, 0x0

    goto/16 :goto_10

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    :cond_33
    const-string v17, "voice_call_recording"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_11

    :cond_34
    const/16 v17, 0x0

    goto/16 :goto_12
.end method

.method private initVoWiFi()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "show_vowifi_endcall_button"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportEpdg"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSupportVoWifi:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportVoWifi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSupportVoWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSupportVoWifi:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/incallui/IMSCallStateTracker;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/incallui/IMSCallStateTracker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateTracker:Lcom/android/incallui/IMSCallStateTracker;

    new-instance v1, Lcom/android/incallui/SecVoiceCallButtonFragment$13;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$13;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateChangeReceiver:Lcom/android/incallui/IMSCallStateChangeReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isOtherCallTTYvalue()Z
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getTtyType()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Primary call\'s TTY value is ON"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private removePagerInstance()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_0

    const-string v0, "removePagerInstance"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    :cond_0
    return-void
.end method

.method private showModifyErrorDialog()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Other party"

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

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

    new-instance v3, Lcom/android/incallui/SecVoiceCallButtonFragment$10;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$10;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mModifyErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showVoLTESettingErrorDialog(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/incallui/SecVoiceCallButtonFragment$11;

    invoke-direct {v7, p0, v0}, Lcom/android/incallui/SecVoiceCallButtonFragment$11;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;Landroid/widget/Checkable;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mVoLTESettingErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

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

.method private switchToVideoCallClicked()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_0
    return-void
.end method

.method private updateAudioButtons(I)V
    .locals 4

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVoiceCallButtonFragment;->isAudio(I)Z

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVoiceCallButtonFragment;->isAudio(I)Z

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

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateMuteButton()V

    return-void
.end method

.method private updateEndCallButton()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSupportVoWifi:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateTracker:Lcom/android/incallui/IMSCallStateTracker;

    if-eqz v0, :cond_0

    const-string v0, "updateEndCallButton"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateTracker:Lcom/android/incallui/IMSCallStateTracker;

    invoke-virtual {v0}, Lcom/android/incallui/IMSCallStateTracker;->isVoWifiRegistered()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateEndCallButton(Z)V

    goto :goto_0
.end method

.method private updateExtraVolumeButtonAboutModeChanged()V
    .locals 3

    const-string v1, "updateExtraVolumeButtonAboutModeChanged()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/SoundEffect;->isUncertainExtraVolOn()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isUncertainExtraVolOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

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

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updatePagerIndicator(I)V
    .locals 3

    const v1, 0x7f0201c4

    const v0, 0x7f0201c3

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->changePageExtraToInCall()V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateVideoBtnImage(IZ)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateAudioButtons(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateExtraVolumeButton()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateDiapadButton()V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updatePagerState(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateVolteButton(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private updateVolteButton(Lcom/android/incallui/Call;)V
    .locals 13

    const/16 v12, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    if-ne v10, v12, :cond_6

    move v3, v8

    :goto_1
    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/secui/SecUiAdapter;->isSwapProcessing()Z

    move-result v7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoLTESettingsEnabled()I

    move-result v5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVZWLTEVideoCallMenuShow()Z

    move-result v6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    invoke-static {v10}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v10

    if-nez v10, :cond_7

    if-nez v3, :cond_7

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getSuppService()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v10

    if-nez v10, :cond_2

    if-eqz v5, :cond_7

    :cond_2
    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/secservice/SecVideoCallManager;->getHandoverPending()Z

    move-result v10

    if-nez v10, :cond_7

    move v1, v8

    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateVolteButton() IsDialing:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    invoke-static {v11}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isOnHold:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isConference:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " SystemDBInterface.getSuppService():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getSuppService()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IsEmergencyMode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IsUltraPowerSavingMode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IsPSDomain:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " VOLTE_SETTING_ENABLED:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " swapProcessing:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IsTTyOff:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v10

    if-nez v10, :cond_8

    move v10, v8

    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IsHandoverPending:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/secservice/SecVideoCallManager;->getHandoverPending()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v10, :cond_4

    if-eqz v6, :cond_9

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v10, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_3
    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v1, :cond_4

    const/high16 v10, 0x40000

    invoke-virtual {p1, v10}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    invoke-direct {p0, v5, v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateVideoBtnImage(IZ)V

    :cond_4
    :goto_4
    const-string v10, "vzw_volte_ui"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v4

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-nez v4, :cond_c

    :goto_5
    invoke-virtual {v10, v8}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->isOtherCallTTYvalue()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    move v3, v9

    goto/16 :goto_1

    :cond_7
    move v1, v9

    goto/16 :goto_2

    :cond_8
    move v10, v9

    goto/16 :goto_3

    :cond_9
    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v10, v12}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_a
    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v10, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_4

    :cond_c
    move v8, v9

    goto :goto_5
.end method


# virtual methods
.method public animateForManager(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v4, "support_move_button_conference_manage"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "animateForManager...isRunning"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0018

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a011c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_1
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v10, [F

    if-eqz p1, :cond_4

    move v4, v0

    :goto_2
    aput v4, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    if-eqz p1, :cond_5

    :goto_3
    aput v0, v7, v9

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSetForManager:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a018c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    move v0, v5

    goto :goto_3
.end method

.method public animateForMoveDialpad(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz p1, :cond_4

    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0189

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a018a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v10, [F

    if-eqz p1, :cond_5

    :goto_2
    aput v2, v9, v6

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v10, [F

    if-eqz p1, :cond_6

    :goto_3
    aput v1, v9, v6

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v6}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

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

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/SecVoiceCallButtonFragment$9;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$9;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public animateForRevealViews()V
    .locals 7

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/incallui/SecVoiceCallButtonFragment$12;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$12;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public extraVolumeClicked()V
    .locals 0

    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleExtraVolume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateExtraVolumeButton()V

    return-void
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    return-object v0
.end method

.method protected inflateExtraButtons(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f0d01a6

    const/4 v2, 0x1

    const v0, 0x7f10025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEmailButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEmailButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10025e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMessageButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInternetButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInternetButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mContactButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPlannerButton:Landroid/widget/Button;

    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPlannerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPlannerButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPlannerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMemoButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMemoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mLastestPagePosition:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->changePageExtraToInCall()V

    :cond_1
    return-void
.end method

.method protected declared-synchronized inflateInCallButtons(Landroid/view/View;)V
    .locals 8

    monitor-enter p0

    const v3, 0x7f100255

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    const v3, 0x7f100248

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    const v3, 0x7f100257

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getExtraVolumeLocation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const v3, 0x7f10024a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    const-string v3, "disable_button_sound_effects"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_0
    const v3, 0x7f10024b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "disable_button_sound_effects"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

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

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f100245

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mRecordButtonStub:Landroid/view/ViewStub;

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

    const-string v3, "show_switch_icon_in_button"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailablePSVT()Z

    move-result v3

    if-eqz v3, :cond_10

    const v3, 0x7f1002a4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f10028c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwitchCallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwitchCallButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwitchCallButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_7
    :goto_0
    const-string v3, "support_swis"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/incallui/SwisHelper;->needToShow()Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x7f100259

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwisButtonStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwisButtonStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwisButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f10028b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwisButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwisButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwisButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_9
    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const v3, 0x7f100258

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    const-string v3, "ims_rcs_bb"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "feature_org"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    const/4 v4, 0x0

    const v5, 0x7f020106

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_a
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/incallui/SecVoiceCallButtonFragment$7;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$7;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const v3, 0x7f10025a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    const-string v3, "ims_rcs_bb"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "feature_org"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    const/4 v4, 0x0

    const v5, 0x7f020104

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_c
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/incallui/SecVoiceCallButtonFragment$8;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$8;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "onUiResume called"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->onUiResume()V

    :cond_e
    const v3, 0x7f10024d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const-string v4, "\u00a0"

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v3, "disable_button_sound_effects"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_f
    const v3, 0x7f10002f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f10002e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    const-string v4, "\u00a0"

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecVoiceCallButtonFragment;->returnButtonsForDialpad(Z)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecUiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecVoiceCallButtonFragment;->returnButtonsForManager(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_10
    :try_start_1
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f100256

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    const v3, 0x7f10025b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_11
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_12
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f100241

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected declared-synchronized inflatePagerContainer()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v2, "not_support_extra_view_page"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v3, 0x7f100253

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v3, 0x7f100253

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V

    const-string v2, "inflatePagerContainer: mOutgoingButtonLayout"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v3, 0x7f100254

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->setFocusable(Z)V

    :cond_5
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mLastestPagePosition:I

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v3, 0x7f100254

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v2, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerAdapter:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerAdapter:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->setFocusable(Z)V

    const-string v2, "inflatePagerContainer: inCallButtonsPager"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallButtonFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->initVoWiFi()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f04012e

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100246

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100247

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f10024e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f10024f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x5051

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->inflatePagerContainer()V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100250

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100251

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorLeft:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100314

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorLeftWrapper:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100252

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorRight:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    const v2, 0x7f100315

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicatorRightWrapper:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->isShowDialpadRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SecVoiceCallButtonFragment$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecVoiceCallButtonFragment$4;-><init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    return-object v1

    :cond_4
    const v1, 0x7f04012d

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/16 v1, 0x65

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCurrentPageScrollState:I

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->removePagerInstance()V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->dismissUSAVoLTEDialogs()V

    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateVoiceCallButtons()V

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

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VoWifiStateTracker;->unregisterForWfcRegistrationStatus()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSupportVoWifi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateTracker:Lcom/android/incallui/IMSCallStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateTracker:Lcom/android/incallui/IMSCallStateTracker;

    invoke-virtual {v0}, Lcom/android/incallui/IMSCallStateTracker;->stopTracking()V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateChangeReceiver:Lcom/android/incallui/IMSCallStateChangeReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateTracker:Lcom/android/incallui/IMSCallStateTracker;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateChangeReceiver:Lcom/android/incallui/IMSCallStateChangeReceiver;

    invoke-virtual {v0, v1}, Lcom/android/incallui/IMSCallStateTracker;->unregisterVoWifiListener(Lcom/android/incallui/IMSCallStateChangeReceiver;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->inflatePagerContainer()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/VoWifiStateTracker;->registerForWfcRegistrationStatus(Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateEndCallButton(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSupportVoWifi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateTracker:Lcom/android/incallui/IMSCallStateTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateTracker:Lcom/android/incallui/IMSCallStateTracker;

    invoke-virtual {v0}, Lcom/android/incallui/IMSCallStateTracker;->isVoWifiRegistered()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateEndCallButton(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateChangeReceiver:Lcom/android/incallui/IMSCallStateChangeReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateTracker:Lcom/android/incallui/IMSCallStateTracker;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateChangeReceiver:Lcom/android/incallui/IMSCallStateChangeReceiver;

    invoke-virtual {v0, v1}, Lcom/android/incallui/IMSCallStateTracker;->registerVoWifiListener(Lcom/android/incallui/IMSCallStateChangeReceiver;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mImsCallStateTracker:Lcom/android/incallui/IMSCallStateTracker;

    invoke-virtual {v0}, Lcom/android/incallui/IMSCallStateTracker;->startTracking()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecCallButtonFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->isPenMultiWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mLastestPagePosition:I

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->removePagerInstance()V

    :cond_1
    return-void
.end method

.method protected recordClicked()V
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

.method public returnButtonsForDialpad(Z)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz p1, :cond_4

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0189

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a018a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

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

.method public returnButtonsForManager(Z)V
    .locals 0

    return-void
.end method

.method public setAudio(I)V
    .locals 2

    iget v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPrevAudioMode:I

    if-eq v1, p1, :cond_2

    iget v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPrevAudioMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateAudioButtons(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateExtraVolumeButtonAboutModeChanged()V

    iput p1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPrevAudioMode:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFolerClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateAudioButtons(I)V

    goto :goto_0

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

    iput-boolean p1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mIsEnabled:Z

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mOneWayCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwisButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSwisButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public setEndCallButtonIcon(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const v0, 0x7f020340

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void

    :cond_0
    const v0, 0x7f0202ab

    goto :goto_0
.end method

.method public setFocusInCallButton(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusInCallButton flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtonContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateMuteButton()V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateAudioButtons(I)V

    return-void
.end method

.method public setViewStateBeforeOutgoingAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setupRcsCallButtons()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/rcs/RcsShareUI;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;Landroid/widget/Button;Landroid/widget/Button;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mAddCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mShareButton:Landroid/widget/Button;

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

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->inflatePagerContainer()V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateEndCallButton()V

    return-void
.end method

.method public updateDiapadButton()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->isDialpadVisible()Z

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

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0d0192

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0d0191

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getResources()Landroid/content/res/Resources;

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

.method protected updateEndCallButton(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSupportVoWifi:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsEpdgIcon(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    move p1, v1

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mIsVoWifiEndButton:Z

    if-ne v3, p1, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move p1, v2

    goto :goto_0

    :cond_3
    iput-boolean p1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mIsVoWifiEndButton:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mSupportVoWifi:Z

    if-eqz v3, :cond_1

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-nez p1, :cond_6

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    instance-of v1, v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->setEndCallButtonIcon(Z)V

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
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

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected updateMuteButton()V
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

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected updatePagerState(Lcom/android/incallui/Call;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/16 v6, 0x8

    if-ne v3, v6, :cond_f

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    :cond_3
    const-string v6, "support_safetycare"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v2, 0x0

    :cond_4
    const-string v6, "emergency_find_lost_phone"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x0

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x0

    :cond_7
    const-string v6, "not_support_extra_view_page"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v2, 0x0

    :cond_8
    const-string v6, "ota_mode_disable_expand"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "true"

    const-string v7, "ril.domesticOtaStart"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v2, 0x0

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKioskMode()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    const/4 v2, 0x0

    :cond_b
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v6, :cond_c

    iget-object v7, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_10

    move v6, v4

    :goto_2
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    if-eq v3, v6, :cond_d

    const/16 v6, 0xa

    if-ne v3, v6, :cond_11

    :cond_d
    move v1, v5

    :goto_3
    if-eqz v1, :cond_12

    :cond_e
    :goto_4
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v4, v2}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->setScrollable(Z)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v4}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updatePagerIndicator(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updatePagerDescription(I)V

    goto/16 :goto_0

    :cond_f
    move v2, v4

    goto/16 :goto_1

    :cond_10
    const/4 v6, 0x4

    goto :goto_2

    :cond_11
    move v1, v4

    goto :goto_3

    :cond_12
    if-nez v2, :cond_e

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;

    invoke-virtual {v5, v4, v4}, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(IZ)V

    iput v4, p0, Lcom/android/incallui/SecVoiceCallButtonFragment;->mLastestPagePosition:I

    goto :goto_4
.end method

.method protected updateVoiceCallButtons()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method
