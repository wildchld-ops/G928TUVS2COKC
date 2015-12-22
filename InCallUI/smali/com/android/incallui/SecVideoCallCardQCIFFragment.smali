.class public Lcom/android/incallui/SecVideoCallCardQCIFFragment;
.super Lcom/android/incallui/SecVideoCallCardFragment;
.source "SecVideoCallCardQCIFFragment.java"

# interfaces
.implements Lcom/android/incallui/SecCallCardUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallCardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected inflateCdnipLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10027a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCdnipNumberLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100279

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCnapNameLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public isPrimaryVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040108

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f040107

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallCardFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
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

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->updateCallCardIndicatorArea()V

    const v2, 0x7f1000d6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v2, 0x7f1000d4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPrimaryName:Landroid/widget/TextView;

    const v2, 0x7f10008e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mNumberLabel:Landroid/widget/TextView;

    const v2, 0x7f100137

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPhotoContainer:Landroid/view/View;

    const v2, 0x7f10003b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f1000d1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const v2, 0x7f1000d3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v2, 0x7f1000d5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v2, 0x7f1000d7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mElapsedTime:Landroid/widget/TextView;

    const v2, 0x7f100038

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v2, 0x7f1000cf

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v2, 0x7f100139

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallStateContainer:Landroid/view/View;

    const v2, 0x7f10017c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    const v2, 0x7f10027b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mWaveEffectWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mWaveEffectHeight:I

    const v2, 0x7f10013c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPeriodMarkContainer:Landroid/view/View;

    new-array v2, v4, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPeriodMarkList:[Landroid/widget/ImageView;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPeriodMarkList:[Landroid/widget/ImageView;

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

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    const v2, 0x7f1002bf

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    const v2, 0x7f100277

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mNameContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mIncomingHideMeLayer:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    return-void

    :array_0
    .array-data 4
        0x7f10013d
        0x7f10013e
        0x7f10013f
    .end array-data
.end method

.method public setPrimaryVisible(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-static {v1}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToShow(Landroid/view/View;)V

    :goto_0
    const-string v1, "support_dialpad_by_hardkey"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->setPrimaryVisibleForDialpad(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-static {v1}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToHide(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v2, v1, p1}, Lcom/android/incallui/SecAnimationUtils$Change;->changeHeight(Landroid/view/View;IZ)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    goto :goto_0
.end method

.method public setPrimaryVisibleForDialpad(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-static {v1, v0, p1}, Lcom/android/incallui/SecAnimationUtils$Change;->changeHeight(Landroid/view/View;IZ)V

    return-void

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method protected updateBgColorForCallState(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updateBgColorForCallState(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected updateLayoutForCallState(I)V
    .locals 7

    const v4, 0x7f0a01c7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallCardFragment;->updateLayoutForCallState(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mNameContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a021b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a021c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mNameContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->isCnapExist()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->isCdnipExist()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->isCnapExist()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->isCdnipExist()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallCardQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
