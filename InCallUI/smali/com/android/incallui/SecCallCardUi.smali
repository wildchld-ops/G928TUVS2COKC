.class public interface abstract Lcom/android/incallui/SecCallCardUi;
.super Ljava/lang/Object;
.source "SecCallCardUi.java"

# interfaces
.implements Lcom/android/incallui/CallCardPresenter$CallCardUi;


# virtual methods
.method public abstract animateForAnswerCall()V
.end method

.method public abstract animateForHideManager(Z)V
.end method

.method public abstract animateForMoveDialpad(Z)V
.end method

.method public abstract changeCallCardForAM(I)V
.end method

.method public abstract changeViewForMoveDialpad(Z)V
.end method

.method public abstract clearAMView()V
.end method

.method public abstract dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

.method public abstract getInCallMenu()Lcom/android/incallui/InCallMenu;
.end method

.method public abstract getPrimaryPhotoView()Landroid/view/View;
.end method

.method public abstract isInExceptionArea(II)Z
.end method

.method public abstract isMenuShowing()Z
.end method

.method public abstract isPrimaryVisible()Z
.end method

.method public abstract isSwapProcessing()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract manageAnswerMemoRecord(Z)V
.end method

.method public abstract manageMultiTouchStub(Z)V
.end method

.method public abstract manageRecordInfo(ZZ)V
.end method

.method public abstract needToShowMenu()Z
.end method

.method public abstract needToShowVolumeButton()Z
.end method

.method public abstract onDialpadVisiblityChange(Z)V
.end method

.method public abstract resetAnswerCallAnimator()V
.end method

.method public abstract resetRevealAnimator()V
.end method

.method public abstract setAMView(Z)V
.end method

.method public abstract setCallCharge(I)V
.end method

.method public abstract setPresenceIcon(I)V
.end method

.method public abstract setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
.end method

.method public abstract setPrimaryCityId(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
.end method

.method public abstract setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryVisible(Z)V
.end method

.method public abstract setPrimaryVisibleByDialpad(Z)V
.end method

.method public abstract setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
.end method

.method public abstract setSecondaryCallElapsedTime(ZJ)V
.end method

.method public abstract setSecondaryCallElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setViewStatePostSplit()V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract showCallCardIndicatorArea(Z)V
.end method

.method public abstract showConferenceStateInfoBanner(ZLjava/lang/String;)V
.end method

.method public abstract showHighQualitySoundText(Z)V
.end method

.method public abstract showIncomingPopupForSecondCall(III)V
.end method

.method public abstract showMenu(Z)V
.end method

.method public abstract showModifyStateInfoBanner(ZLjava/lang/String;)V
.end method

.method public abstract showModifySwitchButtonAM()V
.end method

.method public abstract showVolumeButton(Z)V
.end method

.method public abstract stopWaveEffect(Z)V
.end method

.method public abstract updateCallCardCleanMode(Z)V
.end method

.method public abstract updateDisplayChildCallChanged()V
.end method

.method public abstract updateEri()V
.end method

.method public abstract updateHDIconByIntent()V
.end method

.method public abstract updateIncomingHideButton()V
.end method

.method public abstract updatePeriodMark(I)V
.end method

.method public abstract updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
.end method

.method public abstract updateWaveEffectForCallState(I)V
.end method
