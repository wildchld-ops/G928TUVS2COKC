.class public Lcom/android/incallui/SecTabletVideoCallCardView;
.super Lcom/android/incallui/SecTabletCallCardView;
.source "SecTabletVideoCallCardView.java"

# interfaces
.implements Lcom/android/incallui/SecCallCardUi;
.implements Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;


# instance fields
.field protected mCallBannerContainer:Landroid/view/View;

.field protected mCdnipNumber:Landroid/widget/TextView;

.field protected mCdnipNumberLayout:Landroid/view/View;

.field protected mCnapName:Landroid/widget/TextView;

.field protected mCnapNameLayout:Landroid/view/View;

.field protected mIncomingHideMeButton:Landroid/widget/ToggleButton;

.field protected mIncomingHideMeLayer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallCardView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->addListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V

    :cond_0
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

.method private getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    if-nez p6, :cond_2

    move v2, v4

    :goto_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_2
    :pswitch_1
    return-object v0

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :pswitch_2
    const v4, 0x7f0d0138

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    if-eqz v3, :cond_3

    const v6, 0x7f0d0166

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v4, "change_call_state_label"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0d0217

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_4
    const v4, 0x7f0d0134

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_5
    if-eqz v2, :cond_5

    const v6, 0x7f0d0167

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v4, "change_call_state_label"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f0d021a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const v4, 0x7f0d0218

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const v4, 0x7f0d0136

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_6
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCSVideoCall()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "NO_ANSWER"

    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f0d021b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0d0137

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_7
    const v4, 0x7f0d0135

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canManageConferencePhoto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const v0, 0x7f0200ea

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    const v0, 0x7f0200ee

    goto :goto_0
.end method

.method private getConferenceString(Z)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canManageConferenceString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const v0, 0x7f0d0135

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const v0, 0x7f0d013a

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
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->needToShowMenu()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecInCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    :cond_0
    return-void
.end method

.method private setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secui/SecUiAdapter;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private setupWaveEffectInternal()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v4, "#ff4fa630"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getWaveEffectLayoutWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffectWidth:I

    const-string v0, "create WaveEffect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffectHeight:I

    sget-object v7, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;FF)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setAutoStopOnWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setWaveSineEffect(Z)V

    goto :goto_0
.end method

.method private showIncomingHideMeButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateIncomingHideButton()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private showInternetCallLabel(Z)V
    .locals 0

    return-void
.end method

.method private toggleIncomingHideShow()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d020a

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateIncomingHideButton()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VIHS"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateIncomingHideButton()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendLiveVideo()V

    goto :goto_1
.end method

.method private updateBgColorForCallState(I)V
    .locals 5

    const v4, 0x7f09007d

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x8

    iput-object p2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->manageCallEndTimeBlink(I)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->removeMessageForBlinkTime()V

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object p2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mLastestCallTime:Ljava/lang/String;

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->hasMessageForBlinkTime()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "not update stateLabel for blink call time"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->hasMessageForBlinkTime()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "not update stateLabel for blink call time"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateIncomingHideShowButtonForCallState(I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v4, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "incoming_call_widget_for_volte"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v3, "concept_jpn_dcm"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne p1, v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletVideoCallCardView;->showIncomingHideMeButton(Z)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private updatePhotoViewForCallState(I)V
    .locals 5

    const/16 v3, 0x8

    iget v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mOldCallState:I

    if-eq v2, v3, :cond_0

    if-eq p1, v3, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/SecTabletVideoCallCardView;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-void
.end method

.method private updatePrimaryVisibleForCallState(I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mOldCallState:I

    if-eq v0, v3, :cond_1

    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x9

    if-eq v0, p1, :cond_2

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->isPrimaryVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected deInitView()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->deInitView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->removeListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->dismissInCallMenu()V

    return-void
.end method

.method protected dismissInCallMenu()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->dismissInCallMenu()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->dismissDialogs()V

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletVideoCallCardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletVideoCallCardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletVideoCallCardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletVideoCallCardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletVideoCallCardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletVideoCallCardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const/high16 v0, 0x7f120000

    return v0
.end method

.method protected getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method protected getWaveEffectLayoutWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    return v0
.end method

.method protected hideWaveEffectContainer()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->hideWaveEffectContainer()V

    return-void
.end method

.method protected inflateCdnipLayout()V
    .locals 0

    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 6

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->addListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method protected isCdnipExist()Z
    .locals 1

    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCnapExist()Z
    .locals 1

    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimaryVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToShowMenu()Z
    .locals 9

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->needToShowMenu()Z

    move-result v0

    const-string v4, "ui_for_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v0, v2

    :cond_0
    :goto_0
    const-string v3, "support_safetycare"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowMenu - bShowMenuForVT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v7, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v8, :cond_6

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    const-string v4, "concept_usa_common"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "concept_canada_common"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_8
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v6, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v7, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v8, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v4

    if-eq v4, v6, :cond_a

    move v0, v2

    :goto_2
    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto :goto_2
.end method

.method public notifyMediaEvent(Lcom/android/incallui/secservice/SecVideoCall;I)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateIncomingHideButton()V

    :cond_0
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

    packed-switch v0, :pswitch_data_0

    const-string v1, "onClick: call super onClick"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletCallCardView;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->toggleIncomingHideShow()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1002bf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSecVideoStateChanged(Lcom/android/incallui/secservice/SecVideoCall;)V
    .locals 0

    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 8

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/SecTabletVideoCallCardView;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisconnectCause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gateway "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateLayoutForCallState(I)V

    iget v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mOldCallState:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateCnapVisibleForCallState(I)V

    :cond_2
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateCdnipVisibleForCallState(I)V

    :cond_3
    invoke-direct {p0, p1, v7, p6}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->updatePeriodMark(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateBgColorForCallState(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->updatePhotoViewForCallState(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->updatePrimaryVisibleForCallState(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateIncomingHideShowButtonForCallState(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateWaveEffectForCallState(I)V

    iget v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mOldCallState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->dismissInCallMenu()V

    :cond_6
    iput p1, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mOldCallState:I

    goto :goto_1
.end method

.method protected setCdnipNumber(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->inflateCdnipLayout()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setCnapName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->inflateCnapLayout()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 6

    const-string v4, "Setting primary call"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    iget-object v2, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v3, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    iget-boolean v0, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0, p5}, Lcom/android/incallui/SecTabletVideoCallCardView;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p5}, Lcom/android/incallui/SecTabletVideoCallCardView;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const/4 p3, 0x0

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SecTabletVideoCallCardView;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletVideoCallCardView;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/incallui/SecTabletVideoCallCardView;->showInternetCallLabel(Z)V

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/SecTabletVideoCallCardView;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->setPrimaryCallMoreMenu()V

    const-string v4, "cnap_supplementary_service"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p6, :cond_3

    iget-object v4, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecTabletVideoCallCardView;->setCnapName(Ljava/lang/String;)V

    :cond_3
    const-string v4, "cdnip_supplementary_service"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p6, :cond_4

    iget-object v4, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecTabletVideoCallCardView;->setCdnipNumber(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mLastestCallTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secui/SecUiAdapter;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secui/SecUiAdapter;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 8

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletVideoCallCardView;->setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V

    move v2, p2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020320

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02018a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v6, 0x9

    if-eq v3, v6, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v6, 0xa

    if-ne v3, v6, :cond_5

    :cond_3
    const/4 v3, 0x1

    :goto_2
    and-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_6

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a00c5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201fd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    move v4, v5

    goto :goto_3
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPrimaryName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    if-eqz p2, :cond_2

    const-string v2, "geo_description_disable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a021d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    if-eqz p2, :cond_3

    const-string v2, "geo_description_disable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a021e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPrimaryName:Landroid/widget/TextView;

    const/4 v3, 0x0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryVisible(Z)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showWaveEffectContainer()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getWaveEffectLayoutWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffectWidth:I

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffectHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateCdnipVisibleForCallState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCdnipNumberLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCdnipNumberLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCdnipNumberLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateCnapVisibleForCallState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCnapNameLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCnapName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCnapNameLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mCnapNameLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateIncomingHideButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateLayoutForCallState(I)V
    .locals 0

    return-void
.end method

.method public updateWaveEffectForCallState(I)V
    .locals 4

    const-string v2, "support_wave_effect"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->needToStartEffect(I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_3

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->setupWaveEffectInternal()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f10018a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    sparse-switch p1, :sswitch_data_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v2, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setAlpha(F)V

    :cond_4
    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletCallCardView;->updateWaveEffectForCallState(I)V

    goto :goto_0

    :sswitch_0
    const v1, 0x3f59999a    # 0.85f

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method
