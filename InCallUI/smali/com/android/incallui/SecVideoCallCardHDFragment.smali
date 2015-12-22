.class public Lcom/android/incallui/SecVideoCallCardHDFragment;
.super Lcom/android/incallui/SecVideoCallCardFragment;
.source "SecVideoCallCardHDFragment.java"

# interfaces
.implements Lcom/android/incallui/SecCallCardUi;


# instance fields
.field private mCleanModeStub:Landroid/view/ViewStub;

.field private mCleanModeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallCardFragment;-><init>()V

    return-void
.end method

.method private inflateCleanModeLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100240

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeText:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private setCleanModeText(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method private updateCleanModeForCallState(I)V
    .locals 2

    const/16 v0, 0x9

    if-eq v0, p1, :cond_0

    const/16 v0, 0xa

    if-ne v0, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->updateCallCardCleanMode(Z)V

    :cond_1
    return-void
.end method

.method private updateWaveEffectLayoutForCallState(I)V
    .locals 2

    const-string v1, "support_period_mark"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getWaveEffectLayoutWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected getWaveEffectLayoutWidth()I
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    :sswitch_0
    return v2

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

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

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    packed-switch v1, :pswitch_data_0

    const-string v3, "onClick: call super onClick"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz v0, :cond_0

    const-string v3, "onClick: camera Text Button clicked"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100326
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040105

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onSecVideoStateChanged(Lcom/android/incallui/secservice/SecVideoCall;)V
    .locals 1

    const-string v0, "onSecVideoStateChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x3

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v2, 0x7f10017b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->updateCallCardIndicatorArea()V

    const v2, 0x7f1000d6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v2, 0x7f1000d4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPrimaryName:Landroid/widget/TextView;

    const v2, 0x7f10008e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mNumberLabel:Landroid/widget/TextView;

    const v2, 0x7f100137

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPhotoContainer:Landroid/view/View;

    const v2, 0x7f10003b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f1000d1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const v2, 0x7f1000d3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v2, 0x7f1000d5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v2, 0x7f1000d7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mElapsedTime:Landroid/widget/TextView;

    const v2, 0x7f100038

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v2, 0x7f1000cf

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v2, 0x7f100139

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallStateContainer:Landroid/view/View;

    const v2, 0x7f10017c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallInfoContainer:Landroid/view/View;

    const v2, 0x7f100277

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mNameContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mWaveEffectWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mWaveEffectHeight:I

    const v2, 0x7f10013c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPeriodMarkContainer:Landroid/view/View;

    new-array v2, v4, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPeriodMarkList:[Landroid/widget/ImageView;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7f1002c0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const-string v2, "clean_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->inflateCleanModeLayout()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f10013d
        0x7f10013e
        0x7f10013f
    .end array-data
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    invoke-super/range {p0 .. p7}, Lcom/android/incallui/SecVideoCallCardFragment;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const-string v0, "support_wave_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallCardHDFragment;->updateWaveEffectLayoutForCallState(I)V

    :cond_0
    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallCardHDFragment;->updateCleanModeForCallState(I)V

    :cond_1
    return-void
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecVideoCallCardHDFragment;->setCleanModeText(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "setPrimaryVisible : banner is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->isPrimaryVisible()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrimaryVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v1}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToShow(Landroid/view/View;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/secui/SecUiAdapter;->updateSwitchButtonLayout(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v1}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToHide(Landroid/view/View;)V

    goto :goto_1
.end method

.method public updateCallCardCleanMode(Z)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallCardHDFragment;->showMenu(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallCardHDFragment;->setPrimaryVisible(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCleanModeText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->needToShowMenu()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->showMenu(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->setPrimaryVisible(Z)V

    goto :goto_0
.end method

.method protected updateLayoutForCallState(I)V
    .locals 9

    const v8, 0x7f0a01c7

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updateLayoutForCallState(I)V

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mNameContainer:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mNameContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    packed-switch p1, :pswitch_data_0

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    packed-switch p1, :pswitch_data_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_2
    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_3
    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mNameContainer:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallCardHDFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->isCnapExist()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->isCdnipExist()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardHDFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, v0

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2

    :sswitch_0
    const/4 v5, -0x1

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method protected updatePrimaryVisibleForCallState(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updatePrimaryVisibleForCallState(I)V

    return-void
.end method
