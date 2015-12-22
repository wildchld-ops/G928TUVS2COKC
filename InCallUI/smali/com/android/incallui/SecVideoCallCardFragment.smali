.class public Lcom/android/incallui/SecVideoCallCardFragment;
.super Lcom/android/incallui/SecCallCardFragment;
.source "SecVideoCallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/SecCallCardUi;
.implements Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;


# instance fields
.field protected mCdnipNumber:Landroid/widget/TextView;

.field protected mCdnipNumberLayout:Landroid/view/View;

.field protected mCnapName:Landroid/widget/TextView;

.field protected mCnapNameLayout:Landroid/view/View;

.field protected mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

.field protected mIncomingHideMeButton:Landroid/widget/ToggleButton;

.field protected mIncomingHideMeLayer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;-><init>()V

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

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

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_0

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
    const v4, 0x7f0d0219

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
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

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
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

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

.method private menuButtonClicked()V
    .locals 8

    const v7, 0x7f0d01dd

    const v6, 0x7f0d018a

    const v5, 0x7f0d01dc

    const v4, 0x7f0d0189

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "menuButtonClicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d019e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->dismissInCallMenu()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->showInCallMenu()V

    goto :goto_0

    :cond_3
    const-string v2, "activity is not SecInCallActivity"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InVideoCallMenu;->clickedHideMe()V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InVideoCallMenu;->clickedShowMe()V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InVideoCallMenu;->clickedSwitchToDevice()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
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

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->needToShowMenu()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecInCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    :cond_0
    return-void
.end method

.method private setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secui/SecUiAdapter;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private setupWaveEffectInternal()V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/android/incallui/SecInCallActivity;

    :cond_0
    if-nez v10, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v4, "#ff4fa630"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getWaveEffectLayoutWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffectWidth:I

    const-string v0, "create WaveEffect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffectHeight:I

    sget-object v7, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;FF)V

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setAutoStopOnWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setWaveSineEffect(Z)V

    goto :goto_0
.end method

.method private showIncomingHideMeButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->updateIncomingHideButton()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d020a

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->displayToast(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->updateIncomingHideButton()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VIHS"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->updateIncomingHideButton()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendLiveVideo()V

    goto :goto_1
.end method

.method private updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x8

    iput-object p2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->manageCallEndTimeBlink(I)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->removeMessageForBlinkTime()V

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object p2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->hasMessageForBlinkTime()Z

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
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->hasMessageForBlinkTime()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "not update stateLabel for blink call time"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

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
    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallCardFragment;->showIncomingHideMeButton(Z)V

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

    iget v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOldCallState:I

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

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

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/SecVideoCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected dismissInCallMenu()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->dismissInCallMenu()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

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

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVideoCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mInVideoCallMenu:Lcom/android/incallui/InVideoCallMenu;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    return v0
.end method

.method protected hideWaveEffectContainer()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->hideWaveEffectContainer()V

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

.method protected isCdnipExist()Z
    .locals 1

    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

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

.method public isInExceptionArea(II)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    new-array v0, v3, [I

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->getLocationOnScreen([I)V

    aget v3, v0, v2

    if-lt p1, v3, :cond_0

    aget v3, v0, v2

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_0

    aget v3, v0, v1

    if-lt p2, v3, :cond_0

    aget v3, v0, v1

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isPrimaryVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

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
    .locals 10

    const/16 v9, 0xa

    const/16 v8, 0x9

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->needToShowMenu()Z

    move-result v0

    const-string v5, "ui_for_kor"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUltraPowerSavingMode()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getInVideoCallMenu()Lcom/android/incallui/InVideoCallMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InVideoCallMenu;->getShowHideMenuTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToShowMenu - bShowMenuForVT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v8, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v9, :cond_6

    move v0, v3

    :goto_1
    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    const-string v5, "concept_usa_common"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "concept_canada_common"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_8
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v7, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v8, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v9, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_a

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v5

    if-eq v5, v7, :cond_a

    move v0, v3

    :goto_2
    goto/16 :goto_0

    :cond_a
    move v0, v4

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_c

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v7, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v8, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-eq v5, v9, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_c

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v5

    if-eq v5, v7, :cond_c

    move v0, v3

    :goto_3
    goto/16 :goto_0

    :cond_c
    move v0, v4

    goto :goto_3
.end method

.method public notifyMediaEvent(Lcom/android/incallui/secservice/SecVideoCall;I)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->updateIncomingHideButton()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch v2, :sswitch_data_0

    const-string v3, "onClick: call super onClick"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->menuButtonClicked()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->toggleIncomingHideShow()V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecVideoCallCardFragment;->updateBgColorForCallState(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10019a -> :sswitch_0
        0x7f1002bf -> :sswitch_1
        0x7f1002c0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->addListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/secservice/SecVideoCallManager;->removeListener(Lcom/android/incallui/secservice/SecVideoCall$SecVideoCallListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->dismissInCallMenu()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->onResume()V

    return-void
.end method

.method public onSecVideoStateChanged(Lcom/android/incallui/secservice/SecVideoCall;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
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

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/SecVideoCallCardFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;

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

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updateLayoutForCallState(I)V

    iget v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOldCallState:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

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

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updateCnapVisibleForCallState(I)V

    :cond_2
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updateCdnipVisibleForCallState(I)V

    :cond_3
    invoke-direct {p0, p1, v7, p6}, Lcom/android/incallui/SecVideoCallCardFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updatePeriodMark(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updateBgColorForCallState(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updatePhotoViewForCallState(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updatePrimaryVisibleForCallState(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updateIncomingHideShowButtonForCallState(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updateWaveEffectForCallState(I)V

    iget v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOldCallState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->dismissInCallMenu()V

    :cond_6
    iput p1, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOldCallState:I

    goto :goto_1
.end method

.method protected setCdnipNumber(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->inflateCdnipLayout()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected setCnapName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->inflateCnapLayout()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11

    const-string v8, "Setting primary call"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p6

    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_0
    if-eqz p4, :cond_6

    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const/4 p3, 0x0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SecVideoCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecVideoCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/incallui/SecVideoCallCardFragment;->showInternetCallLabel(Z)V

    invoke-virtual {p0, v7, v3}, Lcom/android/incallui/SecVideoCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->setPrimaryCallMoreMenu()V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0136

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    int-to-float v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v9, 0x0

    int-to-float v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    const-string v8, "cnap_supplementary_service"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz p6, :cond_4

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecVideoCallCardFragment;->setCnapName(Ljava/lang/String;)V

    :cond_4
    const-string v8, "cdnip_supplementary_service"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz p6, :cond_5

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecVideoCallCardFragment;->setCdnipNumber(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    iget-boolean v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v8, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    move-object/from16 v0, p6

    iget-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object p2, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    const/4 p3, 0x0

    :cond_7
    iget-object v8, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    iget-object v7, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/SecVideoCallCardFragment;->setTTS(JLandroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secui/SecUiAdapter;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secui/SecUiAdapter;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

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
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecVideoCallCardFragment;->setPrimaryImageForVideo(Landroid/graphics/drawable/Drawable;Z)V

    move v2, p2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020320

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x1

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02018a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v6, 0x9

    if-eq v3, v6, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v6, 0xa

    if-ne v3, v6, :cond_6

    :cond_4
    const/4 v3, 0x1

    :goto_2
    and-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_7

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a00c5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201fd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0201fe

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_3
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a021d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    if-eqz p2, :cond_4

    const-string v2, "geo_description_disable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a021e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

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

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupWaveEffect()V
    .locals 0

    return-void
.end method

.method public showMenu(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->showMenu(Z)V

    return-void
.end method

.method protected showWaveEffectContainer()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getWaveEffectLayoutWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffectWidth:I

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    iget v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffectWidth:I

    iget v3, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffectHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateBgColorForCallState(I)V
    .locals 5

    const v3, 0x7f090086

    const v4, 0x7f09007d

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    const/16 v2, 0x9

    if-ne p1, v2, :cond_3

    :cond_2
    const-string v2, "not update callend in hold status"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isClearCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_1

    nop

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

.method protected updateCdnipVisibleForCallState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCdnipNumberLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCdnipNumberLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCdnipNumberLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateCnapVisibleForCallState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCnapNameLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCnapName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCnapNameLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCnapNameLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateIncomingHideButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

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

.method protected updatePrimaryVisibleForCallState(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v1, 0x6b

    iget v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mOldCallState:I

    if-eq v0, v4, :cond_1

    if-ne p1, v4, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mHandler:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallBannerContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
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

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->needToStartEffect(I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_3

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->setupWaveEffectInternal()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f10018a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    sparse-switch p1, :sswitch_data_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual {v2, v1}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setAlpha(F)V

    :cond_4
    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->updateWaveEffectForCallState(I)V

    goto :goto_0

    :sswitch_0
    const v1, 0x3f59999a    # 0.85f

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_5

    const v1, 0x3f59999a    # 0.85f

    goto :goto_1

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method
