.class public Lcom/android/incallui/SecCallPopupService;
.super Lcom/android/incallui/HeadUpNotificationService;
.source "SecCallPopupService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/Chronometer$OnChronometerTickListener;
.implements Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;
.implements Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;
.implements Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/HeadUpNotificationService;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/Chronometer$OnChronometerTickListener;",
        "Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;",
        "Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;",
        "Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;"
    }
.end annotation


# instance fields
.field private final GSM_CONFERENCECALL_MAX_SIZE:I

.field private KOR_POPUP_HEIGHT:I

.field private NORMAL_POPUP_HEIGHT:I

.field private VZW_POPUP_HEIGHT:I

.field private aMRecordIcon:Landroid/widget/ImageView;

.field private aMRecordText:Landroid/widget/TextView;

.field private aMRecordTime:Landroid/widget/Chronometer;

.field private amRecordingInfoStub:Landroid/view/ViewStub;

.field private amStatusImage:Landroid/widget/ImageView;

.field private amStatusStub:Landroid/view/ViewStub;

.field private amStatusText:Landroid/widget/TextView;

.field private cityInformation:Ljava/lang/String;

.field private elapsedAMTime:I

.field private mAcceptBtn:Landroid/view/View;

.field private mAcceptRejectBtnContainer:Landroid/view/View;

.field private mAcceptRejectBtnContainerStub:Landroid/view/ViewStub;

.field private mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

.field private mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAnswerCallAfterThisDisconnect:I

.field private mAutoAnsTimer:Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;

.field private mCallMessage:Landroid/widget/TextView;

.field private mCallMessageStub:Landroid/view/ViewStub;

.field private mCallNumberAndLabel:Landroid/view/View;

.field private mCallPlusImageIcon:Landroid/widget/ImageView;

.field private mCallPlusImportance:Landroid/widget/ImageView;

.field private mCallPlusImportanceStub:Landroid/view/ViewStub;

.field private mCallPlusMapIcon:Landroid/widget/ImageView;

.field private mCallPlusSubject:Landroid/widget/TextView;

.field private mCallPlusSubjectStub:Landroid/view/ViewStub;

.field private mCallPopupInfo:Landroid/widget/RelativeLayout;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTime:Landroid/widget/Chronometer;

.field private mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCallerNameForTalkBack:Landroid/widget/TextView;

.field private mCallerNumberForTalkBack:Landroid/widget/TextView;

.field private mCardSubscriber:Landroid/widget/TextView;

.field private mCardSubscriberStub:Landroid/view/ViewStub;

.field private mCityId:Landroid/widget/TextView;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field mCursorLoader:Landroid/content/CursorLoader;

.field private mDuringCallPopupButtons:Landroid/view/View;

.field private mDuringCallPopupButtonsStub:Landroid/view/ViewStub;

.field private mEcidListener:Lcom/android/incallui/EcidClient$Listener;

.field private mEndCallBtn:Landroid/widget/Button;

.field private mEndCallPopupButtons:Landroid/view/View;

.field private mEndCallPopupButtonsStub:Landroid/view/ViewStub;

.field private mEndCallRepeatCount:I

.field private mEriInfoText:Landroid/widget/TextView;

.field private mFullScreenBtn:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mHoldCallText:Landroid/widget/TextView;

.field private mHoldTextStub:Landroid/view/ViewStub;

.field private mIsAnswerProcessing:Z

.field private mIsLandScape:Z

.field private mIsRejectMsgContentShowing:Z

.field private mIsWaveEffectShowing:Z

.field private mLastestCallStateLabel:Ljava/lang/CharSequence;

.field private mMessageBtn:Landroid/widget/Button;

.field private mMuteBtn:Landroid/widget/ToggleButton;

.field private mName:Landroid/widget/TextView;

.field private mNumberLabel:Landroid/widget/TextView;

.field private mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPeriodMarkContainer:Landroid/view/View;

.field private mPeriodMarkList:[Landroid/widget/ImageView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoneNumberLocator:Landroid/widget/TextView;

.field private mPhoneNumberLocatorStub:Landroid/view/ViewStub;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoContainer:Landroid/view/View;

.field private mPrevState:I

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field private mPrimaryPhotoText:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRejectBtn:Landroid/view/View;

.field private mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

.field private mRejectMsgBtn:Landroid/widget/Button;

.field private mRejectMsgBtnContainer:Landroid/view/View;

.field private mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

.field private mRingingCallPopupButtons:Landroid/view/View;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSecCallPopup:Landroid/widget/RelativeLayout;

.field private mSimIconLabel:Landroid/widget/ImageView;

.field private mSimIconLabelStub:Landroid/view/ViewStub;

.field private mSpamBar:Landroid/view/View;

.field private mSpamCallStub:Landroid/view/ViewStub;

.field private mSpamText:Landroid/widget/TextView;

.field private mSpamTextForTalkBack:Landroid/widget/TextView;

.field private mSpeakerBtn:Landroid/widget/ToggleButton;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUHDIconImage:Landroid/widget/ImageView;

.field private mUHDIconStub:Landroid/view/ViewStub;

.field private mUHDLayout:Landroid/view/View;

.field private mUHDVoiceText:Landroid/widget/TextView;

.field private mVideoCallBtn:Landroid/widget/Button;

.field private mVideoCallBtnStub:Landroid/view/ViewStub;

.field private mVoiceCallBtn:Landroid/widget/Button;

.field private mWaitingCallDialog:Landroid/app/AlertDialog;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

.field private mWaveEffectContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x6c

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/HeadUpNotificationService;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/SecCallPopupService;->GSM_CONFERENCECALL_MAX_SIZE:I

    iput-boolean v1, p0, Lcom/android/incallui/SecCallPopupService;->mIsLandScape:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecCallPopupService;->mIsWaveEffectShowing:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecCallPopupService;->mIsRejectMsgContentShowing:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecCallPopupService;->mIsAnswerProcessing:Z

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerCallAfterThisDisconnect:I

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->cityInformation:Ljava/lang/String;

    iput v3, p0, Lcom/android/incallui/SecCallPopupService;->VZW_POPUP_HEIGHT:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/incallui/SecCallPopupService;->NORMAL_POPUP_HEIGHT:I

    iput v3, p0, Lcom/android/incallui/SecCallPopupService;->KOR_POPUP_HEIGHT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/SecCallPopupService;->mPrevState:I

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iput v1, p0, Lcom/android/incallui/SecCallPopupService;->elapsedAMTime:I

    new-instance v0, Lcom/android/incallui/SecCallPopupService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallPopupService$1;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/SecCallPopupService$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallPopupService$2;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/SecCallPopupService$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallPopupService$3;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .locals 12

    const-string v9, "DisplayWaitingCallDialogWhenDoNotHaveHoldingCall"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v1, 0x0

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v6}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d01f4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    if-nez v7, :cond_1

    const-string v7, ""

    :cond_1
    const-string v0, "%s"

    const-string v9, "att_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "tmo_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "mpcs_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "canada_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_2
    const/4 v9, 0x5

    if-ge v1, v9, :cond_4

    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d01f2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d01f3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d01f1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const v9, 0x7f0d01f0

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aget-object v9, v4, v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    const/4 v11, 0x2

    aget-object v11, v4, v11

    invoke-virtual {p0, v5, v9, v10, v11}, Lcom/android/incallui/SecCallPopupService;->showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v6}, Lcom/android/incallui/SecCallPopupService;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_4
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d01f2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d01f1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%s"

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const v9, 0x7f0d01f0

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aget-object v9, v4, v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-virtual {p0, v5, v9, v10}, Lcom/android/incallui/SecCallPopupService;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 15

    const-string v12, "DisplayWaitingCallDialogWhenHaveHoldingCall"

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    const v11, 0x7f0d01f0

    const v7, 0x7f0d01f6

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v8, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v8}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d01f4

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v2}, Lcom/android/incallui/SecCallPopupService;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v12, 0x3

    new-array v5, v12, [Ljava/lang/String;

    const-string v0, "%s"

    if-nez v9, :cond_2

    const-string v9, ""

    :cond_2
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    const v12, 0x7f0d01f1

    if-ne v7, v12, :cond_6

    const/4 v12, 0x0

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%s"

    invoke-virtual {v13, v14, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%s"

    invoke-virtual {v13, v14, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    :goto_2
    const/4 v12, 0x2

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d01f7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aget-object v12, v5, v12

    const/4 v13, 0x1

    aget-object v13, v5, v13

    const/4 v14, 0x2

    aget-object v14, v5, v14

    invoke-virtual {p0, v6, v12, v13, v14}, Lcom/android/incallui/SecCallPopupService;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-direct {p0, v8}, Lcom/android/incallui/SecCallPopupService;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d01f5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v8}, Lcom/android/incallui/SecCallPopupService;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v2}, Lcom/android/incallui/SecCallPopupService;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    const v11, 0x7f0d01f0

    const v7, 0x7f0d01f1

    goto/16 :goto_1

    :cond_6
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/incallui/SecCallPopupService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->handleEventScreenOff(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/SecCallPopupService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->rejectCallClicked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->showInCallUI()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/SecCallPopupService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->toggleSpeaker(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mMuteBtn:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/SecCallPopupService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->toggleMute(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->videoCallClicked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->voiceCallClicked()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->messageClicked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/incallui/SecCallPopupService;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->onEcidUpdate(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/SecCallPopupService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->stopWaveEffect(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/incallui/SecCallPopupService;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/incallui/SecCallPopupService;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/incallui/SecCallPopupService;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecCallPopupService;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/incallui/SecCallPopupService;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/incallui/SecCallPopupService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecCallPopupService;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$2406(Lcom/android/incallui/SecCallPopupService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecCallPopupService;->mEndCallRepeatCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/incallui/SecCallPopupService;->mEndCallRepeatCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->animateForBlinkCallTime()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/incallui/SecCallPopupService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPopupService;->mIsRejectMsgContentShowing:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/incallui/SecCallPopupService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->animateForToggleRejectMsg(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->checkKeyguardLocked()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/incallui/SecCallPopupService;)Lcom/android/incallui/RejectMsgContentPopup;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/incallui/SecCallPopupService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecCallPopupService;->mIsAnswerProcessing:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/incallui/SecCallPopupService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mRingingCallPopupButtons:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/incallui/SecCallPopupService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/incallui/SecCallPopupService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->hangUpThenAnswer(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->onAnswer()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->onAnswerWithMerge()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/incallui/SecCallPopupService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->onAnswer(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->animateForPeriodMarkContainer()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/incallui/SecCallPopupService;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->answeringMode()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/incallui/SecCallPopupService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecCallPopupService;->elapsedAMTime:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/incallui/SecCallPopupService;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/SecCallPopupService;->elapsedAMTime:I

    return p1
.end method

.method static synthetic access$4208(Lcom/android/incallui/SecCallPopupService;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/SecCallPopupService;->elapsedAMTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/SecCallPopupService;->elapsedAMTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->stopCallEndTimeBlink()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->clearAmViews()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/SecCallPopupService;Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->toggleRejectMsgContent()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->endCallClicked()V

    return-void
.end method

.method private animateForAnswerCall()V
    .locals 12

    const/4 v11, 0x4

    const/4 v7, 0x1

    const v10, 0x7f0a0303

    const/4 v9, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    const-string v5, "skip animateForAnswerCall"

    invoke-direct {p0, v5}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string v5, "animateForAnswerCall..."

    invoke-direct {p0, v5}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/android/incallui/SecCallPopupService;->mIsAnswerProcessing:Z

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    :cond_4
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mRingingCallPopupButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0306

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    const-string v5, "support_wave_effect"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0307

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mRingingCallPopupButtons:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v7, [F

    sub-int v8, v4, v1

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/interpolator/SineInOut60;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainer:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    const v6, 0x7f02015f

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mRingingCallPopupButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTranslationZ(F)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/incallui/SecCallPopupService$13;

    invoke-direct {v6, p0}, Lcom/android/incallui/SecCallPopupService$13;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v9}, Lcom/android/incallui/SecCallPopupService;->stopWaveEffect(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->resetViewLayout()V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private animateForBlinkCallTime()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    aput v7, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/incallui/SecCallPopupService$9;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecCallPopupService$9;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private animateForChangeBackgroundColor(II)V
    .locals 6

    const/4 v5, 0x1

    if-ne p1, p2, :cond_0

    const-string v1, "animateForChangeBackgroundColor: skip"

    invoke-static {p0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "animateForChangeBackgroundColor: already running"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateForChangeBackgroundColor: before - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", after -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/incallui/SecCallPopupService$10;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecCallPopupService$10;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mColorAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private declared-synchronized animateForPeriodMarkContainer()V
    .locals 13

    const/4 v12, 0x3

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkContainer:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v7, "animateForPeriodMarkContainer..."

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v12, :cond_2

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget-object v7, v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkContainer:Landroid/view/View;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkContainer:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v7, :cond_4

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v8, v2

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v7, 0x3

    new-array v4, v7, [Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v12, :cond_3

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget-object v7, v7, v3

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v3

    aget-object v7, v4, v3

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    mul-int v8, v5, v3

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/incallui/SecCallPopupService$21;

    invoke-direct {v8, p0}, Lcom/android/incallui/SecCallPopupService$21;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x68

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x68

    const-wide/16 v10, 0x514

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private animateForToggleRejectMsg(Z)V
    .locals 12

    const/4 v11, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "animateForToggleRejectMsg isRunning"

    invoke-direct {p0, v4}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v4, :cond_0

    const-string v4, "animateForToggleRejectMsg"

    invoke-direct {p0, v4}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c001e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v4}, Lcom/android/incallui/RejectMsgContentPopup;->getHeight()I

    move-result v4

    int-to-float v2, v4

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz p1, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/incallui/RejectMsgContentPopup;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz p1, :cond_3

    neg-float v4, v2

    :goto_2
    invoke-virtual {v7, v4}, Lcom/android/incallui/RejectMsgContentPopup;->setTranslationY(F)V

    iget-object v7, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v11, [F

    if-eqz p1, :cond_4

    move v4, v5

    :goto_3
    aput v4, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v11, [F

    if-eqz p1, :cond_5

    :goto_4
    aput v6, v8, v10

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v5}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/SecCallPopupService$12;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecCallPopupService$12;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v4, v10}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    neg-float v4, v2

    goto :goto_3

    :cond_5
    move v6, v5

    goto :goto_4
.end method

.method private answeringMode()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "answeringMode - popup!"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->onAnswerWithWaitingCheck()V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Z)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallPopupService;->setAMView(Z)V

    goto :goto_0
.end method

.method private arrangeEndCallButtonsForUsa()V
    .locals 11

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a033b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a033c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a033d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a033e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0314

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0313

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mVoiceCallBtn:Landroid/widget/Button;

    if-eqz v8, :cond_0

    iget-object v10, p0, Lcom/android/incallui/SecCallPopupService;->mVoiceCallBtn:Landroid/widget/Button;

    if-eqz v4, :cond_3

    move v9, v1

    :goto_1
    if-eqz v4, :cond_4

    move v8, v3

    :goto_2
    invoke-virtual {v10, v9, v7, v8, v7}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/incallui/SecCallPopupService;->mVoiceCallBtn:Landroid/widget/Button;

    if-eqz v4, :cond_5

    move v8, v6

    :goto_3
    invoke-virtual {v9, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mMessageBtn:Landroid/widget/Button;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mMessageBtn:Landroid/widget/Button;

    if-eqz v4, :cond_6

    :goto_4
    if-eqz v4, :cond_7

    :goto_5
    invoke-virtual {v8, v1, v7, v3, v7}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mMessageBtn:Landroid/widget/Button;

    if-eqz v4, :cond_8

    :goto_6
    invoke-virtual {v8, v7, v6}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_1
    return-void

    :cond_2
    move v4, v7

    goto :goto_0

    :cond_3
    move v9, v0

    goto :goto_1

    :cond_4
    move v8, v2

    goto :goto_2

    :cond_5
    move v8, v5

    goto :goto_3

    :cond_6
    move v1, v0

    goto :goto_4

    :cond_7
    move v3, v2

    goto :goto_5

    :cond_8
    move v6, v5

    goto :goto_6
.end method

.method private changeMessageIcon()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isImsRegistered()Z

    move-result v1

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->checkIMSCapability(I)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIMSReg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isIMSCapa: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mMessageBtn:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mMessageBtn:Landroid/widget/Button;

    invoke-virtual {v3, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mMessageBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private changeVideoCallIcon()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->isCapableVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private checkAndStartAnswerMemo()V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "checkAndStartAnswerMemo - popup!"

    invoke-static {p0, v8, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    move v3, v6

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_ring_duration"

    const/16 v10, 0xd

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_answer_memo"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v8, "config_op_ui_call_setting_kdi"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v8

    if-ne v8, v6, :cond_5

    move v4, v6

    :cond_1
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "answerMemo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasActiveCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- all_sound_off == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSystemSettingAllSoundOff()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVoicePartyCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isEmergencyMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasHoldCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-ne v0, v6, :cond_6

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkPhoneVibrateOrSilentMode()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_2
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v8

    if-nez v8, :cond_6

    move v2, v6

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "answerMemo  canAMStart "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const-string v6, "answerMemo  ON "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v5}, Lcom/android/incallui/SecCallPopupService;->startAutoAnsTimer(I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v3, v7

    goto/16 :goto_0

    :cond_5
    move v4, v7

    goto/16 :goto_1

    :cond_6
    move v2, v7

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto :goto_3
.end method

.method private checkKeyguardLocked()V
    .locals 2

    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecCallPopupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isKeyguardLocked"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->stopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->showInCallUI()V

    :cond_0
    return-void
.end method

.method private clearAmViews()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amRecordingInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amRecordingInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private controlWaitingCall()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "controlWaitingCall"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_1

    move v2, v4

    :goto_0
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_2

    move v3, v4

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    const-string v4, "internalAnswerCall: answering (both lines in use!)..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v5}, Lcom/android/incallui/SecCallPopupService;->hangUpThenAnswer(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->isShowingRejectMsgContent()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->toggleRejectMsgContent()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->animateForHideNotStopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v5}, Lcom/android/incallui/SecCallPopupService;->onAnswer(I)V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->isShowingRejectMsgContent()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->toggleRejectMsgContent()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->animateForHideNotStopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "animateForAnswerCall.. "

    invoke-direct {p0, v4}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private endCallClicked()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const-string v1, "popup service : endCallClicked()"

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method private getBgColorForCallState(I)I
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    const v0, 0x7f09007b

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const v0, 0x7f09007c

    goto :goto_0

    :cond_2
    const v0, 0x7f09007a

    goto :goto_0
.end method

.method private getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "getCallerName: isSrvccConference"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNumber()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "emergency_find_lost_phone"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v4, :cond_2

    iget-boolean v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "getNumber(), set original number"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 3

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/incallui/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "geo_description_disable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "UNKNOWN NAME"

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleEventScreenOff(Landroid/content/Intent;)V
    .locals 3

    const-string v1, "why"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventScreenOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->stopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->showInCallUI()V

    :cond_0
    return-void
.end method

.method private hangUpThenAnswer(I)V
    .locals 6

    const/4 v5, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangUpThenAnswer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz v2, :cond_0

    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerCallAfterThisDisconnect:I

    :goto_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangUpThenAnswer mAnswerCallAfterThisDisconnect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerCallAfterThisDisconnect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerCallAfterThisDisconnect:I

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/incallui/SecCallPopupService;->onHangUpThenAnswer(Lcom/android/incallui/Call;)V

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerCallAfterThisDisconnect:I

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->onHangUpThenAnswer(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_3
    iput v5, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerCallAfterThisDisconnect:I

    goto :goto_2

    :pswitch_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->onHangUpThenAnswer(Lcom/android/incallui/Call;)V

    invoke-direct {p0, v2}, Lcom/android/incallui/SecCallPopupService;->onHangUpThenAnswer(Lcom/android/incallui/Call;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hidePeriodMark()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private inflateCallPopupSimIconLabel()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f100149

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSimIconLabelStub:Landroid/view/ViewStub;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSimIconLabelStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f10033f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSimIconLabel:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim icon IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iput-boolean v3, p0, Lcom/android/incallui/SecCallPopupService;->mIsLandScape:Z

    :cond_0
    const-string v5, "ecid_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/incallui/SecCallPopupService$4;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecCallPopupService$4;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    iput-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mEcidListener:Lcom/android/incallui/EcidClient$Listener;

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    :goto_0
    invoke-static {v5, v0, v3}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    const-string v3, "roaming_enhancement"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showCallRoamingGuardDialog(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_2
    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mEcidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {v0, v3, v4, v5}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    :cond_3
    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {v3}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startService(Landroid/content/Context;)V

    :cond_4
    const-string v3, "ims_capability_check_on_call_end"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->createCapabilityManager(Landroid/content/Context;)V

    :cond_5
    return-void

    :cond_6
    move v3, v4

    goto :goto_0
.end method

.method private isAudio(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->getAudioMode()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCapableVideoCall()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailablePSVT()Z

    move-result v1

    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->checkIMSCapability(I)Z

    move-result v5

    if-nez v5, :cond_1

    const/high16 v5, 0x40000

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v2, v4

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVTReg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ modifyCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    move v3, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_2
.end method

.method private isShowingRejectMsgContent()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContentPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isVoWifiRegistered()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.oem.smartwifisupport.vowifi_pref_registration_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SecCallPopupService"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "SecCallPopupService"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private messageClicked()V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x10000000

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto"

    const-string v5, ""

    invoke-static {v4, v5, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/incallui/InCallUtils;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    invoke-static {v4, v2, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "support_oem_message_for_kk"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.android.mms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v4, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "app_package_name"

    const-string v4, "com.android.mms"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private needToRepeatPeriodMark(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPopupService;->mIsPopupShowing:Z

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "needToRepeatPeriodMark: callStateLable is not visible"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToRepeatPeriodMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onAnswer()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnswer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private onAnswer(I)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnswer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private onAnswerWithMerge()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnswerWithMerge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->setMergeAfterAnswer(Z)V

    goto :goto_0
.end method

.method private onEcidUpdate(Lcom/android/incallui/Call;)V
    .locals 2

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    const-string v0, "feature_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {p1, v0}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecCallPopupService;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {p1, v0}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-static {p1}, Lcom/android/incallui/EcidClient;->getCityId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->cityInformation:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->cityInformation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->setCityInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onHangUpThenAnswer(Lcom/android/incallui/Call;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private rejectCallClicked()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v2, "popup service : rejectCallClicked()"

    invoke-direct {p0, v2}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->animateForHide()V

    :cond_1
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/EcidClient;->clearAllCalls()V

    :cond_2
    return-void
.end method

.method private removeMessageForBlinkTime()V
    .locals 2

    const/16 v1, 0x69

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecCallPopupService;->mEndCallRepeatCount:I

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallTimeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return-void
.end method

.method private setCallPlusImportance(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusImportance:Landroid/widget/ImageView;

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

.method private setCallPlusSubject(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusSubject:Landroid/widget/TextView;

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

.method private setCallTime()V
    .locals 12

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    :cond_0
    const/4 v10, 0x3

    if-ne v7, v10, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v8

    const-string v10, "ctc_call_time_duration"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v8

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v0, v10, v4

    const-wide/16 v10, -0x1

    cmp-long v10, v8, v10

    if-lez v10, :cond_4

    iget-object v10, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v10, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v10, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v10}, Landroid/widget/Chronometer;->start()V

    iget-object v10, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Chronometer;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v10, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-wide/16 v8, -0x1

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v10}, Landroid/widget/Chronometer;->stop()V

    iget-object v10, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_1
.end method

.method private setCardName()V
    .locals 6

    const-string v1, ""

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCardSubscriber:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setCityInfo(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller Name ID city Information "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCityId:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->updateCityInfoSize(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCityId:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setEnableMuteButton(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMuteState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mMuteBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mMuteBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x7f0a030f

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-static {v5, v9, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    const-string v5, "ecid_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "feature_vzw"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0, p1}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_2
    iget-object v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02031a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-static {v4, v2}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v4}, Lcom/android/incallui/SecCallPopupService;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-boolean v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-static {v4, v2}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v4}, Lcom/android/incallui/SecCallPopupService;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    const-string v5, "CallerImage From ContactAgent"

    invoke-static {p0, v5, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v5, v2}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v4}, Lcom/android/incallui/SecCallPopupService;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    if-eqz p1, :cond_6

    iget-boolean v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v5, :cond_6

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-static {v4, v2}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v4}, Lcom/android/incallui/SecCallPopupService;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mNumberLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimaryMessageHeight(Ljava/lang/String;Z)V
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    iget v3, p0, Lcom/android/incallui/SecCallPopupService;->KOR_POPUP_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    float-to-int v1, v3

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    :cond_0
    iget v3, p0, Lcom/android/incallui/SecCallPopupService;->NORMAL_POPUP_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_0
.end method

.method private setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNameForTalkBack:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v0, 0x3

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNameForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    new-instance v2, Lcom/android/incallui/SecCallPopupService$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecCallPopupService$7;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNameForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    new-instance v1, Lcom/android/incallui/SecCallPopupService$8;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecCallPopupService$8;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPrimarylabelAndNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spam_call_enable"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUltraPowerSavingMode()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v1, v4

    :goto_1
    const-string v5, "support_spam_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v5, :cond_4

    if-ne v2, v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getisSpam()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private setTTS(J)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    if-nez v14, :cond_0

    :goto_0
    return-void

    :cond_0
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

    if-eqz v6, :cond_2

    const/4 v13, 0x1

    :goto_1
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

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecCallPopupService;->getText(I)Ljava/lang/CharSequence;

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

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecCallPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v13, :cond_1

    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    const v14, 0x7f0d01c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecCallPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/Chronometer;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1
.end method

.method private setTTS(JLandroid/widget/Chronometer;)V
    .locals 19

    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-gtz v14, :cond_0

    :goto_0
    return-void

    :cond_0
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

    if-eqz v6, :cond_2

    const/4 v13, 0x1

    :goto_1
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

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecCallPopupService;->getText(I)Ljava/lang/CharSequence;

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

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecCallPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v13, :cond_1

    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    const v14, 0x7f0d01c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/SecCallPopupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/widget/Chronometer;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1
.end method

.method private showGreenBar(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "not_show_call_view_statusbar"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "support_mobilecarrier"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "don\'t show green bar during carrier-phone mode."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "don\'t show green bar during cover closed"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGreenBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto/16 :goto_0
.end method

.method private showInCallUI()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZZ)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.incalllui.secservice.action.INCALL_FULL_SCREEN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    if-eqz v2, :cond_1

    :try_start_0
    const-class v3, Lcom/android/incallui/BaseInCallService;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecCallPopupService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "isFromPopup"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "elapsedTime"

    iget v4, p0, Lcom/android/incallui/SecCallPopupService;->elapsedAMTime:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/incallui/SecCallPopupService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showVideoCall(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showVideoCall : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtnStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtnStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const-string v0, "popup_call_service_has_icon"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->arrangeEndCallButtonsForUsa()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/SecCallPopupService$20;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCallPopupService$20;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private startAutoAnsTimer(I)V
    .locals 6

    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->resetAutoAnsTimer()V

    new-instance v0, Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;-><init>(Lcom/android/incallui/SecCallPopupService;JJ)V

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAutoAnsTimer:Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAutoAnsTimer:Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAutoAnsTimer:Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/android/incallui/SecCallPopupService$6;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/SecCallPopupService$6;-><init>(Lcom/android/incallui/SecCallPopupService;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void
.end method

.method private startWaveEffect()V
    .locals 12

    const/4 v11, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPopupService;->mIsAnswerProcessing:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0324

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v3, v0

    const-string v4, "#ff4fa630"

    const-string v5, "#664fa630"

    const-string v10, "#fffafafa"

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const-string v0, "create WaveEffect"

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;FF)V

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0, v11}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setAutoStopOnWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setWaveSineEffect(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_2
    const-string v0, "start wave effect"

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->startEffect()V

    goto :goto_0
.end method

.method private stopCallEndTimeBlink()V
    .locals 2

    const-string v0, "stopCallEndTimeBlink"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->removeMessageForBlinkTime()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method private declared-synchronized stopWaveEffect(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "stop wave effect"

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->stopEffect()V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->clearEffect()V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->removeEffect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/incallui/SecCallPopupService;->mIsWaveEffectShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v1, "fire EVENT_HIDE_WAVE_EFFECT"

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private toggleMute(Z)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup service : toggleMute() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleMute() sendMuteButtonStatus()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.intent.action.ACTION_CHECK_MUTE_ITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "BUTTON_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private toggleRejectMsgContent()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->isShowingRejectMsgContent()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/SecCallPopupService;->mIsRejectMsgContentShowing:Z

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v2, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContentPopup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SecCallPopupService$11;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecCallPopupService$11;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/incallui/SecCallPopupService;->mIsRejectMsgContentShowing:Z

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->animateForToggleRejectMsg(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private toggleSpeaker(Z)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFolerClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0d0224

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateAudioButtons()V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup service : toggleSpeaker() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_1
.end method

.method private updateAudioButtons()V
    .locals 3

    const-string v1, "updateAudioButtons()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->isAudio(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpeakerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateMuteButton()V

    return-void
.end method

.method private updateBgColorForCallState(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBgColorForCallState: mPrevState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/SecCallPopupService;->mPrevState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eq v5, p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "updateBgColorForCallState: skip"

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->getBgColorForCallState(I)I

    move-result v0

    iget v2, p0, Lcom/android/incallui/SecCallPopupService;->mPrevState:I

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/incallui/SecCallPopupService;->mPrevState:I

    invoke-direct {p0, v2}, Lcom/android/incallui/SecCallPopupService;->getBgColorForCallState(I)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/SecCallPopupService;->animateForChangeBackgroundColor(II)V

    goto :goto_0
.end method

.method private updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 12

    const/16 v10, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/incallui/SecCallPopupService;->mRingingCallPopupButtons:Landroid/view/View;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtons:Landroid/view/View;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v9, p0, Lcom/android/incallui/SecCallPopupService;->mIsAnswerProcessing:Z

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v9, v11, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/16 v11, 0xa

    if-ne v9, v11, :cond_a

    move v3, v7

    :goto_1
    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v9, :cond_b

    move v6, v7

    :goto_2
    if-nez v3, :cond_c

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v9, :cond_c

    move v4, v7

    :goto_3
    move v5, v3

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v9, :cond_d

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v9, :cond_d

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    if-eq v9, v10, :cond_d

    move v2, v7

    :goto_4
    const/16 v9, 0x40

    invoke-virtual {v0, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    const/16 v9, 0x10

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v1, 0x0

    :cond_2
    const-string v9, "support_nsri_secure"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x0

    :cond_3
    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateRingingCallButtons()V

    :cond_4
    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateDuringCallButtons()V

    :cond_5
    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateEndCallButtons()V

    :cond_6
    const-string v9, "automatic_answering_machine"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCallButtons : isAutoAnswered - "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v6, 0x1

    const/4 v4, 0x0

    :cond_7
    iget-object v11, p0, Lcom/android/incallui/SecCallPopupService;->mRingingCallPopupButtons:Landroid/view/View;

    if-eqz v6, :cond_e

    move v9, v8

    :goto_5
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    if-eqz v4, :cond_f

    move v9, v8

    :goto_6
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtons:Landroid/view/View;

    if-eqz v5, :cond_8

    move v10, v8

    :cond_8
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateSpeakerButton()V

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    move v8, v7

    :cond_9
    invoke-direct {p0, v8}, Lcom/android/incallui/SecCallPopupService;->setEnableMuteButton(Z)V

    if-ne v6, v7, :cond_10

    const-string v8, "set FLAG_TURN_SCREEN_ON"

    invoke-static {p0, v8, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x200000

    or-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->updateViewLayout()V

    goto/16 :goto_0

    :cond_a
    move v3, v8

    goto/16 :goto_1

    :cond_b
    move v6, v8

    goto/16 :goto_2

    :cond_c
    move v4, v8

    goto/16 :goto_3

    :cond_d
    move v2, v8

    goto/16 :goto_4

    :cond_e
    move v9, v10

    goto :goto_5

    :cond_f
    move v9, v10

    goto :goto_6

    :cond_10
    const-string v8, "remove FLAG_TURN_SCREEN_ON"

    invoke-static {p0, v8, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x200001

    and-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->updateViewLayout()V

    goto/16 :goto_0
.end method

.method private updateCallPlusInfo()V
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    :cond_0
    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    :cond_1
    if-eqz v8, :cond_2

    sget-object v0, Lcom/android/incallui/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0, v9, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling CursorLoader number : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method private updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 7

    const/16 v6, 0x69

    const/16 v5, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v5, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->removeMessageForBlinkTime()V

    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_c

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_b

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dcm_end_call_time_blink_extension"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x3

    :goto_1
    iput v1, p0, Lcom/android/incallui/SecCallPopupService;->mEndCallRepeatCount:I

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const-string v2, "dcm_end_call_time_blink_extension"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x834

    :goto_2
    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->animateForBlinkCallTime()V

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_1

    :cond_a
    const-wide/16 v2, 0x5dc

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->setCallTime()V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateCityInfoSize(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->updateCityInfoSize(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCityInfoSize(Ljava/lang/String;)V
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/incallui/SecCallPopupService;->VZW_POPUP_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    float-to-int v1, v3

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/incallui/SecCallPopupService;->NORMAL_POPUP_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_1
.end method

.method private updateDuringCallButtons()V
    .locals 0

    return-void
.end method

.method private updateEndCallButtons()V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v10}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget v11, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    iget v11, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_9

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isEmergency : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isNumberExists : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_b

    if-eqz v4, :cond_b

    move v1, v9

    :goto_2
    const-string v11, "video_call_not_support"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-direct {p0, v10}, Lcom/android/incallui/SecCallPopupService;->showVideoCall(Z)V

    :cond_3
    const-string v11, "video_call_button_disable"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-direct {p0, v10}, Lcom/android/incallui/SecCallPopupService;->showVideoCall(Z)V

    :cond_4
    const-string v11, "vzw_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/high16 v11, 0x40000

    invoke-virtual {v0, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailablePSVT()Z

    move-result v6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v11

    if-nez v11, :cond_c

    move v5, v9

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VZW enabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", modifyCall : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isVTReg : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isTtyOff : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v11, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    if-eqz v11, :cond_5

    if-eqz v1, :cond_d

    if-eqz v7, :cond_d

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    move v11, v9

    :goto_4
    invoke-direct {p0, v11}, Lcom/android/incallui/SecCallPopupService;->showVideoCall(Z)V

    :cond_5
    const-string v11, "att_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "tmo_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "mpcs_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "canada_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_6
    const-string v11, "common_vt"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "supportIMS_VT : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v8, :cond_e

    :goto_5
    invoke-direct {p0, v9}, Lcom/android/incallui/SecCallPopupService;->showVideoCall(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->changeVideoCallIcon()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->changeMessageIcon()V

    :cond_7
    :goto_6
    iget-object v9, p0, Lcom/android/incallui/SecCallPopupService;->mVoiceCallBtn:Landroid/widget/Button;

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    iget-object v9, p0, Lcom/android/incallui/SecCallPopupService;->mMessageBtn:Landroid/widget/Button;

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v11, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v11, :cond_a

    iget-object v11, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_b
    move v1, v10

    goto/16 :goto_2

    :cond_c
    move v5, v10

    goto/16 :goto_3

    :cond_d
    move v11, v10

    goto :goto_4

    :cond_e
    move v9, v10

    goto :goto_5

    :cond_f
    const-string v11, "feature_chn"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "feature_hktw"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_10
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailablePSVT()Z

    move-result v11

    if-eqz v11, :cond_11

    :goto_7
    invoke-direct {p0, v9}, Lcom/android/incallui/SecCallPopupService;->showVideoCall(Z)V

    goto :goto_6

    :cond_11
    move v9, v10

    goto :goto_7
.end method

.method private updateEriInfoText(I)V
    .locals 2

    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mEriInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mEriInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mEriInfoText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateHDIcon(I)V
    .locals 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mpcs_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mUHDIconImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mpcs_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v0

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mUHDLayout:Landroid/view/View;

    if-eqz v0, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mUHDIconImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    const-string v1, "hdvoice_call_status"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mUHDIconImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mUHDVoiceText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->isVoWifiRegistered()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_4
    :goto_3
    return-void

    :cond_5
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsEpdgIcon()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsHDIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    move v1, v3

    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mUHDLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showHDVoiceCallIcon(Landroid/view/View;Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mUHDVoiceText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->updateHDVoiceCallText(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_3
.end method

.method private updateHoldCallText()V
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v2, v11}, Lcom/android/incallui/InCallUtils;->getBgCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0340

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mHoldCallText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-static {v6, v11, v9}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    invoke-virtual {v6, v10}, Landroid/view/ViewStub;->setVisibility(I)V

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

    const-string v2, "- isMuteState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mMuteBtn:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mMuteBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updatePeriodMark(I)V
    .locals 4

    const/16 v1, 0x68

    const-string v0, "support_period_mark"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->needToRepeatPeriodMark(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->hidePeriodMark()V

    goto :goto_0
.end method

.method private updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 19

    if-eqz p2, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePrimaryDisplayInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v17, 0x0

    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v11, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    :cond_0
    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_1
    :goto_0
    if-eqz v15, :cond_a

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/incallui/SecCallPopupService;->setPrimaryName(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/SecCallPopupService;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/SecCallPopupService;->setPrimaryLabel(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/incallui/SecCallPopupService;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    const-string v3, "support_spam_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spam_call_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUltraPowerSavingMode()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_2
    const/4 v14, 0x1

    :goto_2
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_3

    if-nez v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getisSpam()Z

    move-result v5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamCount()I

    move-result v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagType()I

    move-result v7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/incallui/SecCallPopupService;->setPrimarySpamInfo(Ljava/lang/String;ZIILjava/lang/String;ZZ)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getisSpam()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v3, :cond_4

    if-nez v14, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/SecCallPopupService;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    :cond_4
    const-string v3, "geo_description_disable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "feature_spr"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/incallui/SecCallPopupService;->updateCityInfoSize(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecCallPopupService;->mCityId:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setPrimaryGeoDescription(Landroid/widget/TextView;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_5
    if-eqz p2, :cond_6

    const-string v3, "ims_support_multimedia_caller_id"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/incallui/SecCallPopupService;->setPrimaryMessage(Ljava/lang/String;Z)V

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecCallPopupService;->setPrimarylabelAndNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%d"

    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/incallui/SecCallPopupService;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v13

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v12

    if-eqz v12, :cond_1

    iget-object v3, v12, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v15, v12, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_0

    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2
.end method

.method private updateRejectMsgContent(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v4, v1}, Lcom/android/incallui/RejectMsgContentPopup;->configureRejectMsgList(Ljava/util/List;)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v2, v3}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRingingCallButtons()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mRingingCallPopupButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private updateSpeakerButton()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "no_receiver_in_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    const-string v1, "support_nsri_secure"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateWakeLockState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SecCallPopupService"

    const-string v1, "SCREEN_BRIGHT_WAKE_LOCK Acquire"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecCallPopupService"

    const-string v1, "SCREEN_BRIGHT_WAKE_LOCK Release"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method private updateWaveEffectForCallState(I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "support_wave_effect"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/SecCallPopupService;->mIsPopupShowing:Z

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    :cond_1
    move v1, v3

    :goto_1
    and-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWaveEffect: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->startWaveEffect()V

    iput-boolean v3, p0, Lcom/android/incallui/SecCallPopupService;->mIsWaveEffectShowing:Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    const/16 v1, 0x9

    if-ne p1, v1, :cond_5

    :cond_4
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/incallui/SecCallPopupService;->stopWaveEffect(Z)V

    iput-boolean v2, p0, Lcom/android/incallui/SecCallPopupService;->mIsWaveEffectShowing:Z

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_2
.end method

.method private videoCallClicked()V
    .locals 5

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "videocall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private voiceCallClicked()V
    .locals 5

    const/16 v3, 0x65

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->isHideAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "animateForHide - isHideAnimationRunning"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/android/incallui/HeadUpNotificationService;->animateForHide()V

    goto :goto_0
.end method

.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/HeadUpNotificationService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/SecCallPopupService;->mIsLandScape:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method public dismissWaitingCallPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mWaitingCallDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected launchFullScreen()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecCallPopupService;->mDoLaunchFullScreen:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->showInCallUI()V

    :cond_0
    return-void
.end method

.method manageCardName(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->setCardName()V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCardSubscriber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCardSubscriber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method managePhoneNumberLocator(I)V
    .locals 3

    const/16 v2, 0x8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "managePhoneNumberLocator, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnswerWithWaitingCheck()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnswerWithWaitingCheck "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->controlWaitingCall()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateAudioButtons()V

    return-void
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChange() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "call is null"

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    goto :goto_0
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v0

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/SecCallPopupService;->setTTS(J)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-boolean v3, p0, Lcom/android/incallui/SecCallPopupService;->mIsLandScape:Z

    :goto_0
    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mUHDIconStub:Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtnStub:Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mSimIconLabelStub:Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mCardSubscriberStub:Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mCallMessageStub:Landroid/view/ViewStub;

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->amStatusStub:Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->amRecordingInfoStub:Landroid/view/ViewStub;

    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/HeadUpNotificationService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecCallPopupService;->mIsLandScape:Z

    goto :goto_0
.end method

.method public onCoverStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->stopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->showInCallUI()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "onCreate "

    invoke-direct {p0, v2, v4}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    iput-object p0, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/incallui/SecCallPopupService;->showGreenBar(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->setCallPopupService(Lcom/android/incallui/SecCallPopupService;)V

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/InCallPresenter;->forceCancelNotification(Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/AccessoryEventHandler;->addListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->addListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecCallPopupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "support_tgroupon"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.skt.tgroupon.action.REQUEST_CALL_SCREEN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.csh.action.SHARE_ACCEPT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_3
    const-string v2, "support_swis"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.samsung.android.swis.action.SWIS_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->init()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_7

    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecCallPopupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/16 v2, 0xa

    const-string v3, "SecCallPopupService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "onCreate : InCallActivity isActivityStarted "

    invoke-direct {p0, v2, v4}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->stopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->showInCallUI()V

    :cond_8
    const-string v2, "mini"

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->sendBroadcastToTGroupOn(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/HeadUpNotificationService;->onCreate()V

    return-void
.end method

.method protected onCreateCustomView(Landroid/view/ViewGroup;)V
    .locals 21

    const-string v17, "onCreateCustomView"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v17, 0x7f040062

    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    new-instance v17, Lcom/android/incallui/SecCallPopupService$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/incallui/SecCallPopupService$5;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10012b

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mRootView:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000c6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10012c

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mRingingCallPopupButtons:Landroid/view/View;

    const-string v17, "ims_callplus"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100147

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewStub;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100162

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallPlusImportance:Landroid/widget/ImageView;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10014c

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallPlusSubjectStub:Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCallPlusSubjectStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCallPlusSubjectStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCallPlusSubjectStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewStub;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10016a

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallPlusSubject:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10016b

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallPlusMapIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10016c

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallPlusImageIcon:Landroid/widget/ImageView;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100131

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    const-string v17, "popup_call_service_has_icon"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100132

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtonsStub:Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtonsStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000c5

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v17, "support_wave_effect"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0307

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100133

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtons:Landroid/view/View;

    const-string v17, "popup_call_service_has_icon"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100135

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtonsStub:Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtonsStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000ca

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtons:Landroid/view/View;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v17, "support_wave_effect"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0307

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100137

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10003b

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mPhoto:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100138

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mPrimaryPhotoText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000d3

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallStateLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100140

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Chronometer;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000d4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000d5

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10008e

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mNumberLabel:Landroid/widget/TextView;

    const-string v17, "phone_number_locator"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a032a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000d6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    new-instance v17, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallerNameForTalkBack:Landroid/widget/TextView;

    new-instance v17, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100144

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mHoldTextStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewStub;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10014f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mHoldCallText:Landroid/widget/TextView;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100145

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mEriInfoText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10012d

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainer:Landroid/view/View;

    const-string v17, "popup_call_service_has_icon"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainer:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10012e

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainerStub:Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainerStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000c0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainer:Landroid/view/View;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainer:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainer:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000c1

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mAcceptBtn:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mAcceptBtn:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mAcceptBtn:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10012f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    const-string v17, "popup_call_service_has_icon"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, 0x3

    const v18, 0x7f1000c0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtnContainer:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100130

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    const-string v17, "support_hover_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    if-nez v10, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const v20, 0x7f0d0185

    aput v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainer:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000c3

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mRejectBtn:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectBtn:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectBtn:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainer:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v17, "support_wave_effect"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a030a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    iput v7, v15, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0309

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mAcceptBtn:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectBtn:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mAcceptRejectBtnContainer:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000c7

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ToggleButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v17, "disable_button_sound_effects"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    :cond_8
    const-string v17, "tablet_device"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "no_receiver_in_call"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000c8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ToggleButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mMuteBtn:Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mMuteBtn:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mDuringCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000c9

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mEndCallBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mEndCallBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mEndCallBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const v20, 0x7f0d01a0

    aput v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000cc

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000cb

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mVoiceCallBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVoiceCallBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mEndCallPopupButtons:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000cd

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mMessageBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mMessageBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v17, "support_hover_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mMuteBtn:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mMuteBtn:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    :cond_b
    const-string v17, "change_order_of_endcall_buttons"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "popup_call_service_has_icon"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100134

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtnStub:Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtnStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtnStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtnStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewStub;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000ce

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100142

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mFullScreenBtn:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mFullScreenBtn:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100136

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10013c

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkContainer:Landroid/view/View;

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkList:[Landroid/widget/ImageView;

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    const/4 v8, 0x0

    :goto_4
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v8, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mPeriodMarkList:[Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    aget v19, v16, v8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    aput-object v17, v18, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0306

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0306

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_3

    invoke-static/range {v17 .. v18}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[I)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0306

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    iput v7, v15, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000ec

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/incallui/RejectMsgContentPopup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;)V

    :cond_13
    const-string v17, "video_call_not_support"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mVideoCallBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    :cond_14
    const-string v17, "popup_call_service_has_icon"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->arrangeEndCallButtonsForUsa()V

    :cond_15
    const-string v17, "ecid_enable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    const-string v17, "feature_vzw"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_17

    :cond_16
    const-string v17, "geo_description_disable"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_18

    const-string v17, "feature_spr"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10014b

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCityId:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCityId:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->cityInformation:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/SecCallPopupService;->setCityInfo(Ljava/lang/String;)V

    :cond_18
    const-string v17, "phone_number_locator"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000b8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewStub;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000b9

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    :cond_19
    const-string v17, "ims_support_multimedia_caller_id"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10014d

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallMessageStub:Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCallMessageStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCallMessageStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100205

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCallMessage:Landroid/widget/TextView;

    :cond_1a
    invoke-static {}, Lcom/android/incallui/InCallUtils;->displayCtcSubscriberName()Z

    move-result v17

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100143

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCardSubscriberStub:Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCardSubscriberStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCardSubscriberStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mCardSubscriberStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewStub;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10016d

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mCardSubscriber:Landroid/widget/TextView;

    :cond_1b
    const-string v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->inflateCallPopupSimIconLabel()V

    :cond_1c
    const-string v17, "tmo_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1d

    const-string v17, "mpcs_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1d

    const-string v17, "vzw_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1d

    const-string v17, "hdvoice_call_status"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10013a

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mUHDLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mUHDIconStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-nez v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f10013b

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mUHDIconStub:Landroid/view/ViewStub;

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mUHDIconStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mUHDIconStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1002aa

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mUHDVoiceText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1002ab

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mUHDIconImage:Landroid/widget/ImageView;

    :cond_1f
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/SecCallPopupService;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/SecCallPopupService;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    :cond_20
    const-string v17, "automatic_answering_machine"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v17

    if-nez v17, :cond_23

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCallPopupService;->setAMView(Z)V

    :cond_21
    const-string v17, "support_spam_call"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100148

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mSpamCallStub:Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSpamCallStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSpamCallStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSpamCallStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewStub;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100283

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mSpamText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x7f100282

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mSpamBar:Landroid/view/View;

    new-instance v17, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/SecCallPopupService;->mSpamTextForTalkBack:Landroid/widget/TextView;

    :cond_22
    return-void

    :cond_23
    const/16 v17, 0x0

    goto :goto_5

    :array_0
    .array-data 4
        0x7f0d01b5
        0x7f0d01c8
    .end array-data

    :array_1
    .array-data 4
        0x7f0d01b7
        0x7f0d01c8
    .end array-data

    :array_2
    .array-data 4
        0x7f10013d
        0x7f10013e
        0x7f10013f
    .end array-data

    :array_3
    .array-data 4
        0x7f0d0185
        0x7f0d0187
    .end array-data
.end method

.method public onDestroy()V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "onDestroy "

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->hidePeriodMark()V

    invoke-direct {p0, v4}, Lcom/android/incallui/SecCallPopupService;->stopWaveEffect(Z)V

    invoke-direct {p0, v4}, Lcom/android/incallui/SecCallPopupService;->showGreenBar(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    const-string v1, "requestStatusBarOpen"

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->requestStatusBarOpen()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->setCallPopupService(Lcom/android/incallui/SecCallPopupService;)V

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/incallui/InCallPresenter;->setBlockToUpdateNotification(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/AccessoryEventHandler;->removeListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    iput-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCallTime:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v1, v3}, Lcom/android/incallui/RejectMsgContentPopup;->setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    iput-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->dismissWaitingCallPopup()V

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "SecCallPopupService"

    const-string v2, "SCREEN_BRIGHT_WAKE_LOCK Release"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v3, p0, Lcom/android/incallui/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_6
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy :  isAutoAnswered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v6, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v5}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->clearAmViews()V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopService(Landroid/content/Context;)V

    :cond_8
    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "onDestroy : isCoverClosed InCallActivity start"

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->stopSelf()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->showInCallUI()V

    :cond_9
    const-string v1, "ims_callplus"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1}, Landroid/content/CursorLoader;->cancelLoad()Z

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1}, Landroid/content/CursorLoader;->stopLoading()V

    :cond_a
    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy :  isSmartAnswered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v6, :cond_b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_b
    const-string v1, "hide"

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->sendBroadcastToTGroupOn(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/HeadUpNotificationService;->onDestroy()V

    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged... call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v0, p1, v1, p0}, Lcom/android/incallui/secutils/SecCallerInfoUtils;->refreshContactInfoCache(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2

    const-string v0, "concept_usa_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "concept_canada_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecCallPopupService;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onLoadComplete data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

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

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/SecCallPopupService;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/SecCallPopupService;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateMuteButton()V

    return-void
.end method

.method public onNumberChanged(Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNumberChanged... call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    return-void
.end method

.method protected onShowPopup()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/incallui/SecCallPopupService;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->forceCancelNotification(Z)V

    :cond_0
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateSpeakerButton()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStateChange: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p3, v8, v9}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v8, "call is null"

    invoke-direct {p0, v8}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->animateForHide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v8, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->checkAndStartAnswerMemo()V

    :cond_2
    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v8, :cond_8

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/incallui/SecCallPopupService;->mCanSlideOut:Z

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_9

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_b

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v9, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v10, 0x4

    if-ne v8, v10, :cond_a

    const/4 v8, 0x1

    :goto_3
    invoke-static {v9, v0, v8}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    const-string v8, "ecid_enable"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v10, p0, Lcom/android/incallui/SecCallPopupService;->mEcidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {v0, v8, v9, v10}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0, v8}, Lcom/android/incallui/SecCallPopupService;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    const-string v8, "ims_callplus"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateCallPlusInfo()V

    :cond_5
    const/4 v2, 0x0

    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStateChange :  isAutoAnswered - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v2, 0x1

    :cond_6
    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v8, :cond_7

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v8, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->dismissWaitingCallPopup()V

    :cond_7
    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v8, :cond_d

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v8, :cond_d

    if-nez v2, :cond_d

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->animateForAnswerCall()V

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    :cond_b
    iget v8, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerCallAfterThisDisconnect:I

    if-lez v8, :cond_c

    iget v8, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerCallAfterThisDisconnect:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerCallAfterThisDisconnect:I

    iget v8, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerCallAfterThisDisconnect:I

    if-nez v8, :cond_c

    const/4 v8, -0x1

    iput v8, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerCallAfterThisDisconnect:I

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/incallui/SecCallPopupService;->onAnswer(I)V

    :cond_c
    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->end()V

    goto/16 :goto_4

    :cond_d
    invoke-direct {p0, p2}, Lcom/android/incallui/SecCallPopupService;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateAudioButtons()V

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/SecCallPopupService;->updateCallStateLabel(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/SecCallPopupService;->updatePeriodMark(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/SecCallPopupService;->updateBgColorForCallState(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/SecCallPopupService;->updateWaveEffectForCallState(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->updateHoldCallText()V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/SecCallPopupService;->updateWakeLockState(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/SecCallPopupService;->updateEriInfoText(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/SecCallPopupService;->updateHDIcon(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_e

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getDelayForDisconnect(Lcom/android/incallui/Call;)I

    move-result v1

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    int-to-long v10, v1

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_f

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->animateForHide()V

    :cond_f
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_10

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_11

    :cond_10
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_11
    const-string v8, "phone_number_locator"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecCallPopupService;->setPrimaryPhoneNumberLocator(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecCallPopupService;->managePhoneNumberLocator(I)V

    :cond_12
    invoke-static {}, Lcom/android/incallui/InCallUtils;->displayCtcSubscriberName()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecCallPopupService;->manageCardName(I)V

    :cond_13
    const-string v8, "feature_multisim"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecCallPopupService;->setCallPopupSimIconLabel(I)V

    :cond_14
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    iput v8, p0, Lcom/android/incallui/SecCallPopupService;->mPrevState:I

    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_15

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v8

    if-nez v8, :cond_15

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->clearAmViews()V

    :cond_15
    const-string v8, "smart_auto_answering"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onStateChange :  isSmartAnswered - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_16

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v8

    if-nez v8, :cond_16

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_16
    const-string v8, "tablet_device"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_17
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_19
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1a
    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onSupportedAudioMode(I)V
    .locals 0

    return-void
.end method

.method public onUpdateCoreAppsContact()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "call is null"

    invoke-direct {p0, v1}, Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SecCallPopupService;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->animateForHide()V

    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/EcidClient;->clearAllCalls()V

    :cond_1
    return-void
.end method

.method public rejectWithAnswerMemo()V
    .locals 2

    const-string v0, "rejectWithAnswerMemo - popup!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->answeringMode()V

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->toggleRejectMsgContent()V

    return-void
.end method

.method protected removeHeadUpNotification()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/HeadUpNotificationService;->removeHeadUpNotification()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->stopWaveEffect(Z)V

    return-void
.end method

.method resetAutoAnsTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAutoAnsTimer:Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;

    if-eqz v0, :cond_0

    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAutoAnsTimer:Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAutoAnsTimer:Lcom/android/incallui/SecCallPopupService$AutoAnsTimer;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecCallPopupService;->elapsedAMTime:I

    return-void
.end method

.method public setAMView(Z)V
    .locals 6

    const v5, 0x7f100104

    const v2, 0x7f100103

    const/high16 v4, 0x41600000    # 14.0f

    const v3, 0x3f4ccccd    # 0.8f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAMView isRecording "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f10014a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusText:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    const v2, 0x7f0d039b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f100141

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amRecordingInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amRecordingInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amRecordingInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f100184

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSecCallPopup:Landroid/widget/RelativeLayout;

    const v1, 0x7f100185

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, v4}, Landroid/widget/Chronometer;->setTextSize(F)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->updateAnswerMemoRecordTime()V

    :cond_7
    :goto_0
    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusImage:Landroid/widget/ImageView;

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService;->mContext:Landroid/content/Context;

    const v2, 0x7f0d039c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->amStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setCallPopupSimIconLabel(I)V
    .locals 2

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSimIconLabel:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mSimIconLabel:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryMessage(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setprimaryMessage - message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallMessage:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecCallPopupService;->setPrimaryMessageHeight(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mCallMessageStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mPhoneNumberLocator:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimarySpamInfo(Ljava/lang/String;ZIILjava/lang/String;ZZ)V
    .locals 7

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mSpamCallStub:Landroid/view/ViewStub;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPrimarySpamInfo mTagName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSpam : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTagType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isContactExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isYellowPage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p7, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020341

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v4, 0x1

    if-eq p4, v4, :cond_7

    if-eqz p2, :cond_7

    if-nez p6, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d03a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Lcom/android/incallui/InCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mSpamText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mSpamTextForTalkBack:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mSpamTextForTalkBack:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mSpamCallStub:Landroid/view/ViewStub;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mSpamText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mSpamBar:Landroid/view/View;

    if-eqz p7, :cond_5

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    if-eqz p7, :cond_6

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mSpamTextForTalkBack:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const/16 v4, 0x8

    goto :goto_2

    :cond_6
    const/16 v4, 0x8

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mSpamText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mSpamCallStub:Landroid/view/ViewStub;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mName:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p6, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "wating_calloption_invisible"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "showWaitingCallDialog : call answered without poup"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "wating_calloption_hold"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecCallPopupService;->onAnswer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "wating_calloption_end"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v5}, Lcom/android/incallui/SecCallPopupService;->hangUpThenAnswer(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b005b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v5

    const/4 v2, 0x1

    aput-object p3, v1, v2

    new-instance v2, Lcom/android/incallui/SecCallPopupService$18;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecCallPopupService$18;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/incallui/SecCallPopupService$19;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecCallPopupService$19;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b005b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    new-instance v2, Lcom/android/incallui/SecCallPopupService$14;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecCallPopupService$14;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/incallui/SecCallPopupService$15;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecCallPopupService$15;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b005b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    new-instance v2, Lcom/android/incallui/SecCallPopupService$16;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecCallPopupService$16;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/incallui/SecCallPopupService$17;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecCallPopupService$17;-><init>(Lcom/android/incallui/SecCallPopupService;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Lcom/android/incallui/SecCallPopupService;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public startRecord()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallPopupService;->setAMView(Z)V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopRecord()V

    :cond_0
    return-void
.end method

.method public updateAnswerMemoRecordTime()V
    .locals 8

    const-string v4, "updateAnswerMemoRecordTime"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnswerMemoRecordTime mAnsMemoRecorderMgr.isRecording() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v5}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v2

    const-wide/16 v0, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnswerMemoRecordTime baseTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    const-string v4, "start record time"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v4, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->start()V

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/incallui/SecCallPopupService;->setTTS(JLandroid/widget/Chronometer;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Lcom/android/incallui/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    :cond_2
    const-string v4, "updateAnswerMemoRecordTime recordmgr is null or not recording"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecCallPopupService;->aMRecordTime:Landroid/widget/Chronometer;

    invoke-virtual {v4}, Landroid/widget/Chronometer;->stop()V

    goto :goto_1
.end method

.method public updateView(Landroid/database/Cursor;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateView data :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mCallPopupInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v6, 0x17c

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v2}, Lcom/android/incallui/SecCallPopupService;->setCallPlusImportance(ZI)V

    invoke-direct {p0, v9, v5}, Lcom/android/incallui/SecCallPopupService;->setCallPlusSubject(ZLjava/lang/String;)V

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusMapIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusMapIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusMapIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService;->mCallPlusImageIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
