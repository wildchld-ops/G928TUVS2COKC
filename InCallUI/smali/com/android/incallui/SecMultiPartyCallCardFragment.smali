.class public Lcom/android/incallui/SecMultiPartyCallCardFragment;
.super Lcom/android/incallui/SecCallCardFragment;
.source "SecMultiPartyCallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/SecCallCardUi;


# instance fields
.field private final MAX_CALLERS_IN_CONFERENCE:I

.field private mAddCallMenuStub:Landroid/view/ViewStub;

.field private mAddCallMenuText:Landroid/widget/TextView;

.field private mConferenceInfoBanner:Landroid/view/ViewStub;

.field private mConferenceInfoText:Landroid/widget/TextView;

.field protected mCurrentPrimaryCallName:Ljava/lang/String;

.field protected mCurrentPrimaryCallNumber:Ljava/lang/String;

.field protected mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

.field protected mCurrentSecondaryCallName:Ljava/lang/String;

.field protected mCurrentSecondaryCallNumber:Ljava/lang/String;

.field protected mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

.field private mHDIconImageCHN:Landroid/widget/ImageView;

.field private mHDIconImageCommon:Landroid/widget/ImageView;

.field private mHDIconImageSKT:Landroid/widget/ImageView;

.field private mHDIconStub:Landroid/view/ViewStub;

.field private mHDLayout:Landroid/view/View;

.field private mHDVoiceTextLGT:Landroid/widget/TextView;

.field protected mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mIsMergeProcessing:Z

.field protected mIsSwapProcessing:Z

.field protected mManageButton:Landroid/widget/Button;

.field protected mManagerAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mMergeAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mMergeButton:Landroid/widget/Button;

.field private mModifyStateInfoBanner:Landroid/view/ViewStub;

.field private mModifyStateInfoText:Landroid/widget/TextView;

.field protected mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mPrimaryCallInfoContainer:Landroid/view/View;

.field protected mPrimaryPanel:Landroid/view/View;

.field protected mPrimaryPhotoText:Landroid/widget/TextView;

.field protected mSecondaryCallInfoContainer:Landroid/view/View;

.field protected mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryElapsedTime:Landroid/widget/TextView;

.field private mSecondaryElapsedTimeLayout:Landroid/view/View;

.field private mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

.field private mSecondaryForwardSlash:Landroid/widget/TextView;

.field protected mSecondaryPanel:Landroid/view/View;

.field protected mSecondaryPhoto:Landroid/widget/ImageView;

.field protected mSecondaryPhotoContainer:Landroid/view/View;

.field protected mSecondaryPhotoText:Landroid/widget/TextView;

.field private mShowActiveConferenceBanner:Z

.field private mShowBackgroundConferenceBanner:Z

.field private mShowConferenceBanner:Z

.field protected mSwapAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mSwapButton:Landroid/widget/Button;

.field private mUHDIconImage:Landroid/widget/ImageView;

.field private mUHDIconImageSecondary:Landroid/widget/ImageView;

.field private mUHDIconStub:Landroid/view/ViewStub;

.field private mUHDLayout:Landroid/view/View;

.field private mUHDVoiceText:Landroid/widget/TextView;

.field private mVoWiFiIcon:Landroid/widget/ImageView;

.field private mVoWiFiIconStub:Landroid/view/ViewStub;

.field protected mVolteCameraStub:Landroid/view/ViewStub;

.field protected mVolteCameraText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->MAX_CALLERS_IN_CONFERENCE:I

    iput-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainerAnimatorSet:Landroid/animation/AnimatorSet;

    iput-boolean v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mShowConferenceBanner:Z

    iput-boolean v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mShowActiveConferenceBanner:Z

    iput-boolean v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mShowBackgroundConferenceBanner:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecMultiPartyCallCardFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    return-void
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

.method private endAllOfAnimatorSet()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    return-void
.end method

.method private getActiveConferenceGroupCount()I
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method private getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/secui/differenceforsales/DiffVZWforMultiPartyCall;->isVzwVolte()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/incallui/secui/differenceforsales/DiffVZWforMultiPartyCall;->getConferenceString(Lcom/android/incallui/SecMultiPartyCallCardFragment;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    if-nez p2, :cond_2

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private getConferenceGroupCount(Lcom/android/incallui/Call;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const v5, 0x7f0d01c1

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    if-ge v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getOnHoldConferenceGroupCount()I
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method private getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    return-object v0
.end method

.method private hideConferenceCallManager()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecInCallActivity;->showConferenceCallManager(Z)V

    :cond_0
    return-void
.end method

.method private isAnimatorSetRunning()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOtherCallTTYvalue()Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getTtyType()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Primary call\'s TTY value is ON"

    invoke-static {p0, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    :cond_0
    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getTtyType()I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Secondary call\'s TTY value is ON"

    invoke-static {p0, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    :cond_1
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

.method private resetAllOfAnimation(Z)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "resetAllOfAnimation..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->endAllOfAnimatorSet()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "view is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrimaryCallMoreMenu(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->needToShowMenu()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->showMenu(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/SecInCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    :cond_4
    return-void
.end method

.method private setSecondaryIcon()V
    .locals 14

    const v13, 0x7f020040

    const/4 v10, 0x0

    const-string v11, "setSecondaryIcon"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z

    move-result v7

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isHDConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v5

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsEpdgIcon(Lcom/android/incallui/Call;)Z

    move-result v4

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-nez v7, :cond_2

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    if-eqz v6, :cond_4

    :cond_2
    const/4 v8, 0x1

    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setSecondaryIcon isHDVoice : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isHDVideo : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isHDConferenceCall : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isEpdgCall, : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    if-eqz v6, :cond_6

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020036

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    if-eqz v8, :cond_9

    :goto_3
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v8, v10

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020037

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020041

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_8
    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_9
    const/16 v10, 0x8

    goto :goto_3
.end method

.method private showCallButtonsForManager()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/incallui/SecCallButtonUi;->animateForManager(Z)V

    :cond_0
    return-void
.end method

.method private showConferenceCallBannerForVZW()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowConferenceBanner : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mShowConferenceBanner:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mShowConferenceBanner:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/android/incallui/secui/SecUiAdapter;->showConferenceStateMessage(ZLjava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mShowConferenceBanner:Z

    :cond_0
    return-void
.end method

.method private showMessageVoiceFromvideo(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getMessageVoiceFromVideo()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/secui/SecUiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1, v3}, Lcom/android/incallui/CallCardPresenter;->setMessageVoiceFromVideo(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    goto :goto_0
.end method

.method private showVZWVoLTEMenu()V
    .locals 8

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowVZWVoLTEUI()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHasBeenVideoCall()Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v6

    if-nez v6, :cond_5

    :goto_3
    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showVZWVoLTEMenu, canAdd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", enableAdd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hasbeenVideoCall : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHasBeenVideoCall()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_3

    :cond_6
    const/16 v5, 0x8

    goto :goto_4
.end method

.method private updateHDIcon(I)V
    .locals 7

    const v6, 0x7f020040

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v2, "display_hd_icon"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDLayout:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconImageSKT:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconImageSKT:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_2
    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mpcs_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mpcs_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v1

    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDLayout:Landroid/view/View;

    if-eqz v1, :cond_11

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_12

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    const-string v2, "hdvoice_call_status"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDVoiceText:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->isVoWifiRegistered()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_5
    :goto_6
    return-void

    :cond_6
    move v2, v4

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDVoiceTextLGT:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDVoiceTextLGT:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_7
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_7

    :cond_a
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconImageCHN:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconImageCHN:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    move v2, v4

    goto :goto_8

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconImageCommon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconImageCommon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    :goto_9
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_d
    move v2, v4

    goto :goto_9

    :cond_e
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsEpdgIcon()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateHDIcon - isShowCallDetailsEpdgIcon : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsEpdgIcon(Lcom/android/incallui/Call;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isHDConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateHDIcon - isHDConferenceCall : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isHDConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsHDIcon()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateHDIcon - isShowCallDetailsHDIcon : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsHDIcon()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    move v2, v4

    goto/16 :goto_4

    :cond_12
    move v3, v4

    goto/16 :goto_5

    :cond_13
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showHDVoiceCallIcon(Landroid/view/View;Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDVoiceText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->updateHDVoiceCallText(Landroid/content/Context;Landroid/view/View;I)V

    goto/16 :goto_6
.end method

.method private updateManageAndHideConferenceCallButton(Z)V
    .locals 9

    const v8, 0x7f0d01b4

    const v7, 0x7f0d0192

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateManageAndHideConferenceCallButton : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020316

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v1, "support_folder_hardkey"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-nez v0, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-nez v0, :cond_7

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020317

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method private updateSwapCallButton(Lcom/android/incallui/Call;)V
    .locals 4

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private updateVoWifiCallIcon()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "hdvoice_call_status"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVoWiFiIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->isVoWifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVoWiFiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "showVoWifiCallIcon - show"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVoWiFiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "showVoWifiCallIcon - notshow"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public animateForHideManager(Z)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "animateForHideManager...isRunning"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "animateForHideManager...cancel manage animation"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    const-string v4, "animateForHideManager..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    aput v10, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    aput v10, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v4, "support_hide_conference_manager_menu"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v8}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method protected animateForManager()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "animateForManager...isRunning"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "animateForManager...cancel hide manage animation"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    const-string v5, "animateForManager..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRTLMode()Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v0, v5

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v10, [F

    neg-float v8, v0

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/SecMultiPartyCallCardFragment$3;

    invoke-direct {v6, p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment$3;-><init>(Lcom/android/incallui/SecMultiPartyCallCardFragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->showConferenceCallManager()V

    goto/16 :goto_0
.end method

.method protected animateForMerge()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "animateForMerge...isRunning"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v14, "enable_conference_info_banner"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v14}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v14

    check-cast v14, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v14}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v14

    const/4 v15, 0x5

    if-ge v14, v15, :cond_2

    :cond_1
    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceGroupCount(Lcom/android/incallui/Call;)I

    move-result v14

    const/4 v15, 0x5

    if-lt v14, v15, :cond_a

    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mShowConferenceBanner:Z

    const-string v14, "animateForMerge, mShowConferenceBanner is false"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v14

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    :cond_4
    const-string v14, "animateForMerge..."

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0139

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    neg-float v0, v3

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int v10, v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const-string v15, "top"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v12, v16, v17

    const/16 v17, 0x1

    aput v10, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mergeCallerInfoForAnim()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v15, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v15}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v0, v4

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v14

    new-instance v15, Lcom/android/incallui/SecMultiPartyCallCardFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment$2;-><init>(Lcom/android/incallui/SecMultiPartyCallCardFragment;)V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    const-string v14, "voice_call_recording"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mShowConferenceBanner:Z

    const-string v14, "animateForMerge, mShowConferenceBanner is true"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method protected animateForSwap()V
    .locals 14

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "animateForSwap...isRunning"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v9, "animateForSwap..."

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0139

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v1, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    int-to-long v10, v2

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    neg-float v13, v1

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    int-to-long v10, v2

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->swapCallerInfoForAnim()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v10, v4

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    int-to-long v10, v3

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v10, v4

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    int-to-long v10, v3

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v10, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v10}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/incallui/SecMultiPartyCallCardFragment$1;

    invoke-direct {v10, p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment$1;-><init>(Lcom/android/incallui/SecMultiPartyCallCardFragment;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    const-string v9, "vzw_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_3
    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->removeMultipartyCallButtons()V

    goto/16 :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected getConferenceCallManagerShowingState()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->getConferenceCallManagerShowingState()Z

    move-result v0

    return v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const v0, 0x7f120001

    return v0
.end method

.method protected inflateCameraButtonLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected inflateRecordInfo()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    :cond_0
    return-void
.end method

.method public isSwapProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mergeCallerInfoForAnim()V
    .locals 8

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActiveConferenceGroupCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getOnHoldConferenceGroupCount()I

    move-result v2

    add-int v1, v0, v2

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {p0, v3, v7}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/android/incallui/secui/differenceforsales/DiffVZWforMultiPartyCall;->changeConferenceTitleWhenAnimateMerge(Lcom/android/incallui/SecMultiPartyCallCardFragment;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    const-string v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public needToShowMenu()Z
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->needToShowMenu()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->isAnimatorSetRunning()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->hasAnimationMsg()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string v3, "onClick : isAnimatorSetRunning or hasAnimationMsg, skip operation"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->animateForMerge()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->animateForSwap()V

    goto :goto_0

    :sswitch_2
    const-string v3, "support_hide_conference_manager_menu"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->hideConferenceCallManager()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->animateForManager()V

    goto :goto_0

    :sswitch_3
    if-eqz v0, :cond_4

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->animateForSwap()V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :sswitch_4
    const-string v3, "onClick add call menu"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto :goto_0

    :sswitch_5
    if-eqz v0, :cond_1

    const-string v4, "onClick camera Text Button was clicked"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x40000

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_5
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    const v5, 0x7f0d02ed

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    const v4, 0x7f0d02f0

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d02ef

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    iget-object v3, v3, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v3}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/android/incallui/Call;->foreceUpdateModifyRequestDummyType()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100031 -> :sswitch_1
        0x7f100035 -> :sswitch_0
        0x7f10022e -> :sswitch_2
        0x7f10022f -> :sswitch_3
        0x7f100325 -> :sswitch_4
        0x7f100326 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0400b8

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0400b7

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->onDestroy()V

    const-string v0, "onDestroy..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->isOtherCallTTYvalue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    :cond_1
    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->onResume()V

    const-string v0, "onResume..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support_move_button_conference_manage"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->showCallButtonsForManager()V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->onStop()V

    const-string v0, "onStop..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f10013b

    const v3, 0x7f10013a

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v2, 0x7f10017b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v2, 0x7f100233

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const v2, 0x7f1000d6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v2, 0x7f1000d4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const v2, 0x7f10008e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const v2, 0x7f100137

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v2, 0x7f10003b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f100138

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const v2, 0x7f1000d5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v2, 0x7f1000d7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v2, 0x7f100038

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v2, 0x7f1000cf

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v2, 0x7f10022d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    const v2, 0x7f100139

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallStateContainer:Landroid/view/View;

    const v2, 0x7f1000d3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v2, 0x7f100234

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    const v2, 0x7f100236

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const v2, 0x7f100230

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    const v2, 0x7f100231

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const v2, 0x7f100232

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const v2, 0x7f10022f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v2, 0x7f100035

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f100031

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f10022e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f100235

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImageSecondary:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const-string v2, "display_hd_icon"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconStub:Landroid/view/ViewStub;

    if-nez v2, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconStub:Landroid/view/ViewStub;

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const v2, 0x7f1001c0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconImageSKT:Landroid/widget/ImageView;

    :cond_2
    :goto_0
    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "mpcs_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "hdvoice_call_status"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    if-nez v2, :cond_4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f1002aa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDVoiceText:Landroid/widget/TextView;

    const v2, 0x7f1002ab

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    :cond_5
    const-string v2, "hdvoice_call_status"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    if-nez v2, :cond_6

    const v2, 0x7f10022a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f100329

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVoWiFiIcon:Landroid/widget/ImageView;

    :cond_7
    const-string v2, "common_vt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "mpcs_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "canada_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->inflateCameraButtonLayout()V

    :cond_9
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const v2, 0x7f100237

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-nez v2, :cond_a

    const v2, 0x7f100238

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    :cond_a
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f10032f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    const v2, 0x7f100330

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    :cond_b
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f10023a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    :cond_c
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f10021f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    :cond_d
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-nez v2, :cond_e

    const v2, 0x7f10022c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    :cond_e
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f100325

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    const-string v2, "enable_conference_info_banner"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-nez v2, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f10023b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    :cond_10
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f100187

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    :cond_11
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->removeMultipartyCallButtons()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isPhoneTypeCdma(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-direct {p0, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateSwapCallButton(Lcom/android/incallui/Call;)V

    :cond_12
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    :cond_13
    return-void

    :cond_14
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const v2, 0x7f1001c1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDVoiceTextLGT:Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_15
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const v2, 0x7f1001c2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconImageCHN:Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_16
    const v2, 0x7f1001c3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHDIconImageCommon:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method

.method protected removeMultipartyCallButtons()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected resetMergeAnimation()V
    .locals 5

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v0, "resetMergeAnimation..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    return-void

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected resetSplitAnimation()V
    .locals 2

    const-string v0, "resetSplitAnimation..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->hideConferenceCallManager()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->animateForManager()V

    :cond_3
    return-void
.end method

.method protected resetSwapAnimation()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-string v0, "resetSwapAnimation..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->swapCallerInfoForAnim()V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    if-ne p1, v5, :cond_0

    const-string v5, "setCallState: current state is ONHOLD and merge is processing"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    const/16 v5, 0xb

    if-ne p1, v5, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    :cond_2
    const-string v5, "enable_conference_info_banner"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->showConferenceCallBannerForVZW()V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "setCallState: current state is not multi-party"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iget-boolean v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v5, :cond_a

    const-string v5, "setCallState: swap is processing"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateDisplayChildCallChanged()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateMultipartyCallButtons()V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateBgColorForCallState(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryCallMoreMenu(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateHDIcon(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateVoWifiCallIcon()V

    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setSecondaryIcon()V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->showMessageVoiceFromvideo(I)V

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    const/16 v5, 0x8

    if-ne p1, v5, :cond_b

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v6, 0x7f0d0138

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_2
    const-string v5, "att_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "tmo_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "canada_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "mpcs_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateCameraButtonUsaGsm()V

    :cond_9
    if-eqz v3, :cond_c

    iget-boolean v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-nez v5, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isModifyProgressing()Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    goto/16 :goto_0

    :cond_a
    iget-boolean v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v5, :cond_5

    const-string v5, "setCallState: merge is processing"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_c
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting primary call in SecMultiPartyCallCardFragment isConference:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "setPrimary: current state is not multi-party"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v9, :cond_8

    const-string v9, "setPrimary: swap is processing"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    iget-boolean v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v9}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v6

    :cond_3
    if-nez p4, :cond_4

    if-eqz v6, :cond_a

    :cond_4
    invoke-direct {p0, v1, v6}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/android/incallui/secui/differenceforsales/DiffVZWforMultiPartyCall;->isVzwVolte()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {p0, v1}, Lcom/android/incallui/secui/differenceforsales/DiffVZWforMultiPartyCall;->getConferenceString(Lcom/android/incallui/SecMultiPartyCallCardFragment;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object p2

    :cond_5
    const/4 p1, 0x0

    invoke-direct {p0, v1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPrimary for conference: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_9

    const/4 v7, 0x0

    :cond_6
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v9, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-virtual {p0, v8, v4}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v9, :cond_1

    const-string v9, "setPrimary: merge is processing"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object v7, v3

    goto :goto_1

    :cond_a
    if-eqz v1, :cond_6

    if-eqz p6, :cond_6

    move-object/from16 v0, p6

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v9, :cond_6

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v9, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object p2, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    :cond_b
    iget-object v9, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_6

    iget-object v8, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    goto :goto_1

    :cond_c
    iget-object v9, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setTTS(JLandroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/SecInCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public declared-synchronized setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02031a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_4
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_6

    iget-boolean v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11

    const-string v7, "Setting secondary call"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p8

    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz p8, :cond_4

    move-object/from16 v0, p8

    iget-boolean v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v7, :cond_4

    move-object/from16 v0, p8

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    move-object/from16 v0, p8

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz p6, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v7}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/android/incallui/secui/differenceforsales/DiffVZWforMultiPartyCall;->isVzwVolte()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v7}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/secui/differenceforsales/DiffVZWforMultiPartyCall;->getConferenceString(Lcom/android/incallui/SecMultiPartyCallCardFragment;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v7}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSecondary for conference: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0123

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    :cond_3
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->resetAllOfAnimation(Z)V

    return-void

    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    if-eqz p8, :cond_2

    move-object/from16 v0, p8

    iget-boolean v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v7

    move-object/from16 v0, p8

    iget-object v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v7, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object p2, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    :cond_6
    iget-object v7, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    iget-object v6, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCallTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setTTS(JLandroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0123

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public declared-synchronized setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/incallui/InCallUtils;->getBgCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Lcom/android/incallui/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02031a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_4
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_6

    iget-boolean v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public setSecondaryName(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "setVisible - - getView() == null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showConferenceCallManager()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->showConferenceCallManager()V

    return-void
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showConferenceStateInfoBanner show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 9

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-boolean v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    iget-object v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v7, :cond_6

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    move v3, v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v7

    if-nez v7, :cond_8

    :goto_2
    and-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_3

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->hideConferenceCallManager()V

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_5

    :cond_4
    const/4 v3, 0x0

    :cond_5
    iget-object v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v3, :cond_9

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setAlpha(F)V

    const-string v4, "support_hide_conference_manager_menu"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0, v3}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->removeMultipartyCallButtons()V

    invoke-static {v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isPhoneTypeCdma(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateSwapCallButton(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_1

    :cond_8
    move v4, v5

    goto :goto_2

    :cond_9
    move v4, v6

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v3, :cond_b

    :goto_5
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :cond_b
    move v5, v6

    goto :goto_5
.end method

.method public showMenu(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->showMenu(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->showVZWVoLTEMenu()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showModifyStateInfoBanner message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showSecondaryContainer(Z)V
    .locals 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz p1, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d0123

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method protected swapCallerInfoForAnim()V
    .locals 8

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v4, "animateForSwap...name is empty"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "animateForSwap..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v5, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v4, 0x1

    :cond_5
    invoke-virtual {p0, v5, v4}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateBgColorForCallState(I)V
    .locals 5

    const v4, 0x7f09007d

    const v3, 0x7f09007a

    iget-boolean v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    if-eq v2, p1, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isClearCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected updateCameraButtonUsaGsm()V
    .locals 10

    const/high16 v9, 0x40000

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.phone"

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getActivity()Landroid/app/Activity;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    const-string v5, "mt_conference_pref"

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "mtconference"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMtConference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->checkPrimaryEmergencyCall()Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v2, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPSDomain : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SESSION_MODIFY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v5, "isMtConference otherAppsContext not found"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    const v6, 0x3ecccccd    # 0.4f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateDisplayChildCallChanged()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v7, :cond_3

    invoke-virtual {p0, v8, v6}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayChildCallChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v0, v6}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    :cond_2
    const/4 v4, 0x1

    invoke-static {p0, v0, v4}, Lcom/android/incallui/secui/differenceforsales/DiffVZWforMultiPartyCall;->changeConferenceTitle(Lcom/android/incallui/SecMultiPartyCallCardFragment;Lcom/android/incallui/Call;Z)V

    if-eqz v2, :cond_3

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v7, :cond_0

    invoke-virtual {p0, v8, v6}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {p0, v3}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceGroupString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayChildCallChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3, v6}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConfCallDisplayName(Lcom/android/incallui/Call;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    :cond_4
    invoke-static {p0, v3, v6}, Lcom/android/incallui/secui/differenceforsales/DiffVZWforMultiPartyCall;->changeConferenceTitle(Lcom/android/incallui/SecMultiPartyCallCardFragment;Lcom/android/incallui/Call;Z)V

    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mCurrentSecondaryCallNumberLabel:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected updateMultipartyCallButtons()V
    .locals 14

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v9

    const/4 v6, 0x0

    if-eqz v9, :cond_0

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v6

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ", isHDVideo : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsSwapProcessing:Z

    if-nez v11, :cond_1

    iget-boolean v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v11, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateSwapCallButton(Lcom/android/incallui/Call;)V

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isDowngradeCall(Lcom/android/incallui/Call;)Z

    move-result v8

    const/4 v7, 0x0

    if-eqz v9, :cond_3

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isDowngradeCall(Lcom/android/incallui/Call;)Z

    move-result v7

    :cond_3
    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    const-string v11, "support_merge_call"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "vzw_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v11

    if-nez v11, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->isOtherCallTTYvalue()Z

    move-result v11

    if-nez v11, :cond_6

    :cond_4
    const-string v11, "vzw_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-nez v8, :cond_6

    if-nez v7, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isSINSIM()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not support merge, tty : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isOtherCallTTYvalue : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->isOtherCallTTYvalue()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_7
    const-string v11, "ims_only_conf_initiator_can_merge"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasImsConferenceParticipant()Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "Not support merge, has IMS conference participant"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_8
    const/16 v11, 0x80

    invoke-virtual {v0, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    const-string v11, "not_support_ims_conference_manage"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "Not support manage conference"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canManageConference="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v11, :cond_a

    iget-object v12, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v3, :cond_13

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_a
    const-string v11, "bmc_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    if-eqz v6, :cond_b

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mMergeButton:Landroid/widget/Button;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    :cond_b
    const-string v11, "vzw_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v11, :cond_c

    if-eqz v3, :cond_14

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a014a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0139

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_c
    :goto_2
    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v11

    if-eqz v11, :cond_d

    if-eqz v3, :cond_15

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0154

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_d
    :goto_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v11, :cond_12

    if-eqz v5, :cond_16

    if-eqz v2, :cond_16

    const/4 v10, 0x1

    :goto_4
    const-string v11, "support_hide_conference_manager_menu"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v11

    if-nez v11, :cond_17

    const/4 v11, 0x1

    :goto_5
    and-int/2addr v10, v11

    :cond_e
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_f

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->hideConferenceCallManager()V

    :cond_f
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0x9

    if-eq v11, v12, :cond_10

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_11

    :cond_10
    const/4 v10, 0x0

    :cond_11
    iget-object v12, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v10, :cond_18

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setAlpha(F)V

    :cond_12
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->removeMultipartyCallButtons()V

    invoke-static {v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isPhoneTypeCdma(Lcom/android/incallui/Call;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->updateSwapCallButton(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :cond_13
    const/16 v11, 0x8

    goto/16 :goto_1

    :cond_14
    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a014b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0139

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_15
    iget-object v11, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0155

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_18
    const/16 v11, 0x8

    goto :goto_6
.end method
