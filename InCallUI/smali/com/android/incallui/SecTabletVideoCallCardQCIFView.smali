.class public Lcom/android/incallui/SecTabletVideoCallCardQCIFView;
.super Lcom/android/incallui/SecTabletVideoCallCardView;
.source "SecTabletVideoCallCardQCIFView.java"

# interfaces
.implements Lcom/android/incallui/SecCallCardUi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected inflateCdnipLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10027a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCdnipNumberLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100279

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCnapNameLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040107

    const/4 v4, 0x1

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x7f10017b

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mIndicatorArea:Landroid/view/ViewGroup;

    const v3, 0x7f1000d6

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mPhoneNumber:Landroid/widget/TextView;

    const v3, 0x7f1000d4

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mPrimaryName:Landroid/widget/TextView;

    const v3, 0x7f10008e

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mNumberLabel:Landroid/widget/TextView;

    const v3, 0x7f100137

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mPhotoContainer:Landroid/view/View;

    const v3, 0x7f10003b

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mPhoto:Landroid/widget/ImageView;

    const v3, 0x7f1000d1

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallStateIcon:Landroid/widget/ImageView;

    const v3, 0x7f1000d3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallStateLabel:Landroid/widget/TextView;

    const v3, 0x7f1000d5

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallNumberAndLabel:Landroid/view/View;

    const v3, 0x7f1000d7

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mElapsedTime:Landroid/widget/TextView;

    const v3, 0x7f100038

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mPrimaryCallCardContainer:Landroid/view/View;

    const v3, 0x7f1000cf

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v3, 0x7f100139

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallStateContainer:Landroid/view/View;

    const v3, 0x7f10017c

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallInfoContainer:Landroid/view/View;

    const v3, 0x7f10027b

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallBannerContainer:Landroid/view/View;

    const v3, 0x7f10013c

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mPeriodMarkContainer:Landroid/view/View;

    new-array v3, v5, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mPeriodMarkList:[Landroid/widget/ImageView;

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v3, 0x7f1002c0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    const v3, 0x7f1002bf

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mIncomingHideMeLayer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mIncomingHideMeLayer:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->initVolumePanelLayout()V

    return-void

    :array_0
    .array-data 4
        0x7f10013d
        0x7f10013e
        0x7f10013f
    .end array-data
.end method

.method public isPrimaryVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallBannerContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallBannerContainer:Landroid/view/View;

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

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mIncomingHideMeLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mIncomingHideMeLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallBannerContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToShow(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallBannerContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToHide(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setPrimaryVisibleByDialpad(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallBannerContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v2, v1, p1}, Lcom/android/incallui/SecAnimationUtils$Change;->changeHeight(Landroid/view/View;IZ)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    goto :goto_0
.end method

.method protected updateLayoutForCallState(I)V
    .locals 4

    const v3, 0x7f0a01c7

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateLayoutForCallState(I)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallBannerContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallInfoContainer:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallBannerContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->isCnapExist()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->isCdnipExist()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->isCnapExist()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->isCdnipExist()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardQCIFView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
