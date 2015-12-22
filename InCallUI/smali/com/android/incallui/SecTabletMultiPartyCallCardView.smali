.class public Lcom/android/incallui/SecTabletMultiPartyCallCardView;
.super Lcom/android/incallui/SecTabletCallCardView;
.source "SecTabletMultiPartyCallCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/SecCallCardUi;


# static fields
.field protected static mIsMergeProcessing:Z


# instance fields
.field protected mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mIsSwapProcessing:Z

.field protected mManageButton:Landroid/widget/Button;

.field protected mManagerAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mMergeAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mMergeButton:Landroid/widget/Button;

.field protected mPrimaryCallInfoContainer:Landroid/view/View;

.field protected mPrimaryPanel:Landroid/view/View;

.field protected mPrimaryPhotoText:Landroid/widget/TextView;

.field protected mSecondaryCallInfoContainer:Landroid/view/View;

.field protected mSecondaryCallName:Landroid/widget/TextView;

.field protected mSecondaryCallNameForTTS:Ljava/lang/String;

.field protected mSecondaryPanel:Landroid/view/View;

.field protected mSecondaryPhoto:Landroid/widget/ImageView;

.field protected mSecondaryPhotoContainer:Landroid/view/View;

.field protected mSecondaryPhotoText:Landroid/widget/TextView;

.field protected mSwapAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mSwapButton:Landroid/widget/Button;

.field private mUHDIconImage:Landroid/widget/ImageView;

.field private mUHDIconStub:Landroid/view/ViewStub;

.field private mUHDVoiceText:Landroid/widget/TextView;

.field private mUhdLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsMergeProcessing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallCardView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method protected static IsMergeProcessing()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsMergeProcessing:Z

    return v0
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

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    return-void
.end method

.method private getConferenceGroupString()Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :cond_0
    const-string v5, "tmo_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    if-eqz v1, :cond_1

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%d"

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private hideConferenceCallManager()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletInCallService;->showConferenceCallManager(Z)V

    :cond_0
    return-void
.end method

.method private resetAllOfAnimation()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsSwapProcessing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsMergeProcessing:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "resetAllOfAnimation..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->endAllOfAnimatorSet()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->updateMultipartyCallButtons()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

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

.method private setPrimaryCallMoreMenu()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->needToShowMenu()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->needToShowVolumeButton()Z

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->showMenu(Z)V

    new-instance v0, Lcom/android/incallui/SecEventDialpadOptionButtons;

    iget-object v3, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/SecEventDialpadOptionButtons;-><init>(ZZLcom/android/incallui/SecTabletInCallMenuPopup;)V

    sget-object v3, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v3, v0}, Lcom/android/incallui/SecEventBusManager;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private setPrimaryImageConference(Lcom/android/incallui/Call;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    invoke-static {v1, v0}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setSecondaryImageConference(Lcom/android/incallui/Call;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    invoke-static {v1, v0}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateManageAndHideConferenceCallButton(Z)V
    .locals 8

    const v7, 0x7f0d01b4

    const v6, 0x7f0d0192

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateManageAndHideConferenceCallButton : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getConferenceCallManagerShowingState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getConferenceCallManagerShowingState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020316

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020317

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public animateForHideManager(Z)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "animateForHideManager...isRunning"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v4, "animateForHideManager..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v9, [F

    const/4 v7, 0x0

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method protected animateForManager()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "support_hide_conference_manager_menu"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "animateForManager...isRunning"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v5, "animateForManager..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a013c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v10, [F

    neg-float v8, v0

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->showConferenceCallManager()V

    goto :goto_0
.end method

.method protected animateForMerge()V
    .locals 15

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x1

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "animateForMerge...isRunning"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v9, "animateForMerge..."

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0013

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v13, [F

    aput v12, v11, v14

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v13, [F

    aput v12, v11, v14

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v13, [F

    aput v12, v11, v14

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0139

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v13, [F

    neg-float v12, v0

    aput v12, v11, v14

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v5, v7, v9

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    const-string v10, "top"

    const/4 v11, 0x2

    new-array v11, v11, [I

    aput v7, v11, v14

    aput v5, v11, v13

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v1

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v9

    new-instance v10, Lcom/android/incallui/SecTabletMultiPartyCallCardView$2;

    invoke-direct {v10, p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView$2;-><init>(Lcom/android/incallui/SecTabletMultiPartyCallCardView;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    sput-boolean v13, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsMergeProcessing:Z

    goto/16 :goto_0
.end method

.method protected animateForSwap()V
    .locals 14

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "animateForSwap...isRunning"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v6, "animateForSwap..."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0139

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v10, [F

    aput v0, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v10, [F

    neg-float v9, v0

    aput v9, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    neg-float v7, v0

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v10, [F

    aput v13, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v10, [F

    aput v13, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v6

    new-instance v7, Lcom/android/incallui/SecTabletMultiPartyCallCardView$1;

    invoke-direct {v7, p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView$1;-><init>(Lcom/android/incallui/SecTabletMultiPartyCallCardView;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v10, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsSwapProcessing:Z

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->removeMultipartyCallButtons()V

    goto/16 :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected getConferenceCallManagerShowingState()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->getConferenceCallManagerShowingState()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const v0, 0x7f120001

    return v0
.end method

.method public hidePrimaryCallerContainer()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected inflateRecordInfo()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mRecordInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mRecordIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mRecordTime:Landroid/widget/Chronometer;

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 3

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400b7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPulseAnimation:Landroid/view/animation/Animation;

    const v1, 0x7f10017b

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIndicatorArea:Landroid/view/ViewGroup;

    const v1, 0x7f100233

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    const v1, 0x7f1000d4

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryName:Landroid/widget/TextView;

    const v1, 0x7f10008e

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mNumberLabel:Landroid/widget/TextView;

    const v1, 0x7f100137

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    const v1, 0x7f10003b

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f100138

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryPhotoText:Landroid/widget/TextView;

    const v1, 0x7f1000d5

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mCallNumberAndLabel:Landroid/view/View;

    const v1, 0x7f1000d3

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    const v1, 0x7f1000d7

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mElapsedTime:Landroid/widget/TextView;

    const v1, 0x7f100038

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallCardContainer:Landroid/view/View;

    const v1, 0x7f1000cf

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v1, 0x7f10022d

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryPanel:Landroid/view/View;

    const v1, 0x7f100139

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mCallStateContainer:Landroid/view/View;

    const v1, 0x7f100234

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    const v1, 0x7f100236

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallName:Landroid/widget/TextView;

    const v1, 0x7f100230

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoContainer:Landroid/view/View;

    const v1, 0x7f100231

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhoto:Landroid/widget/ImageView;

    const v1, 0x7f100232

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoText:Landroid/widget/TextView;

    const v1, 0x7f10022f

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    const v1, 0x7f100035

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100031

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10022e

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mpcs_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v1, 0x7f10013a

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUhdLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUHDIconStub:Landroid/view/ViewStub;

    if-nez v1, :cond_1

    const v1, 0x7f10013b

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUHDIconStub:Landroid/view/ViewStub;

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUHDIconStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f1002aa

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUHDVoiceText:Landroid/widget/TextView;

    const v1, 0x7f1002ab

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUHDIconImage:Landroid/widget/ImageView;

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->initVolumePanelLayout()V

    return-void
.end method

.method public needToShowMenu()Z
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->needToShowMenu()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setPrimaryCallMoreMenu()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletCallCardView;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->animateForMerge()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->animateForSwap()V

    goto :goto_0

    :sswitch_2
    const-string v1, "support_hide_conference_manager_menu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getConferenceCallManagerShowingState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->hideConferenceCallManager()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->animateForManager()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100031 -> :sswitch_1
        0x7f100035 -> :sswitch_0
        0x7f10022e -> :sswitch_2
    .end sparse-switch
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->onDetachedFromWindow()V

    const-string v0, "onDetachedFromWindow..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->resetAllOfAnimation()V

    return-void
.end method

.method protected removeMultipartyCallButtons()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected resetMergeAnimation()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v0, "resetMergeAnimation..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsMergeProcessing:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->updateMultipartyCallButtons()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->showSecondaryContainer(Z)V

    return-void
.end method

.method protected resetSplitAnimation()V
    .locals 2

    const-string v0, "resetSplitAnimation..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->updateMultipartyCallButtons()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getConferenceCallManagerShowingState()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->animateForManager()V

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

    iput-boolean v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsSwapProcessing:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->updateMultipartyCallButtons()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v1

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const-string v4, "setCallState: current state is not multi-party"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->updateMultipartyCallButtons()V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->updateBgColorForCallState(I)V

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    sput-boolean v3, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsMergeProcessing:Z

    :cond_1
    const-string v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mpcs_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUHDIconImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUhdLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_6

    if-ne p1, v6, :cond_6

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    const v5, 0x7f0d0138

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-direct {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setPrimaryCallMoreMenu()V

    if-eqz v2, :cond_4

    sget-boolean v4, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsMergeProcessing:Z

    if-nez v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->showSecondaryContainer(Z)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mUhdLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11

    const-string v9, "Setting primary call in SecMultiPartyCallCardFragment"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsSwapProcessing:Z

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "setPrimary: current state is not multi-party"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    iget-boolean v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v9

    check-cast v9, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v9}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v6

    :cond_2
    if-nez p4, :cond_3

    if-eqz v6, :cond_7

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d01c0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getConferenceGroupString()Ljava/lang/String;

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

    if-eqz v3, :cond_4

    move-object v7, v3

    :cond_4
    if-eqz v6, :cond_5

    const/4 v7, 0x0

    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v4}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setPrimaryCallMoreMenu()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->resetAllOfAnimation()V

    goto/16 :goto_0

    :cond_7
    if-eqz p6, :cond_5

    move-object/from16 v0, p6

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v9, :cond_5

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_5

    iget-object v9, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object p2, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    :cond_9
    iget-object v9, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    iget-object v8, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    goto :goto_1

    :cond_a
    iget-object v9, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecDialpadUi()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecDialpadUi()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/SecDialpadUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 9

    const v8, 0x7f0a013c

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v4, v7, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryPhotoText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setPrimaryImageConference(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, p1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, p1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhoneNumber:Landroid/widget/TextView;

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

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p8

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_0
    if-eqz p6, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d01c0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    const/4 v4, 0x0

    if-eqz p3, :cond_5

    const/4 v4, 0x3

    invoke-static {p2}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallNameForTTS:Ljava/lang/String;

    :goto_1
    iget-object v7, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    invoke-virtual {p0, v6, v2}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    const-string v7, "vzw_volte_ui"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0123

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallNameForTTS:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p8, :cond_1

    move-object/from16 v0, p8

    iget-boolean v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v7

    move-object/from16 v0, p8

    iget-object v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v7, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object p2, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    :cond_4
    iget-object v7, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    iget-object v6, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    iput-object p2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallNameForTTS:Ljava/lang/String;

    goto :goto_1
.end method

.method public setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 9

    const v8, 0x7f0a013c

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/incallui/InCallUtils;->getBgCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setSecondaryImageConference(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, p1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v4, p1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showConferenceCallManager()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecTabletInCallService;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallService;->showConferenceCallManager()V

    :cond_0
    return-void
.end method

.method public showManageConferenceCallButton(Z)V
    .locals 9

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v7, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsSwapProcessing:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsMergeProcessing:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
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

    iget-object v7, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    if-eqz v7, :cond_0

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getConferenceCallManagerShowingState()Z

    move-result v7

    if-nez v7, :cond_6

    :goto_2
    and-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v6, :cond_2

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->hideConferenceCallManager()V

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_4

    :cond_3
    const/4 v3, 0x0

    :cond_4
    const-string v4, "support_hide_conference_manager_menu"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v3}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->updateManageAndHideConferenceCallButton(Z)V

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    if-eqz v3, :cond_8

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mManageButton:Landroid/widget/Button;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    :cond_8
    move v5, v6

    goto :goto_3
.end method

.method public showMenu(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletCallCardView;->showMenu(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method protected showSecondaryContainer(Z)V
    .locals 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz p1, :cond_7

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    if-eqz p1, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d0123

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryPanel:Landroid/view/View;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSecondaryCallNameForTTS:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Lcom/android/incallui/InCallUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryPanel:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void

    :cond_7
    move v2, v4

    goto :goto_0

    :cond_8
    move v2, v4

    goto :goto_1
.end method

.method protected updateBgColorForCallState(I)V
    .locals 3

    iget-boolean v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsSwapProcessing:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsMergeProcessing:Z

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

    const v1, 0x7f0201b0

    const v0, 0x7f0201b3

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0201b1

    const v0, 0x7f0201b4

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v2

    if-eqz v2, :cond_3

    const v1, 0x7f0201b0

    const v0, 0x7f0201b3

    goto :goto_1

    :cond_3
    const v1, 0x7f0201b2

    const v0, 0x7f0201b5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateDisplayChildCallChanged()V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mNumberLabel:Landroid/widget/TextView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsSwapProcessing:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsMergeProcessing:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->getConferenceGroupString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDisplayChildCallChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setPrimaryImageConference(Lcom/android/incallui/Call;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/incallui/InCallUtils;->getBgCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->setSecondaryImageConference(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method protected updateMultipartyCallButtons()V
    .locals 7

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsSwapProcessing:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mIsMergeProcessing:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mSwapButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    const-string v3, "support_merge_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeButton:Landroid/widget/Button;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->mMergeButton:Landroid/widget/Button;

    if-eqz v1, :cond_6

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->showManageConferenceCallButton(Z)V

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_2
.end method
