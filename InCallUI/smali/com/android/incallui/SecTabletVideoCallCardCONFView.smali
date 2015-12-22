.class public Lcom/android/incallui/SecTabletVideoCallCardCONFView;
.super Lcom/android/incallui/SecTabletVideoCallCardView;
.source "SecTabletVideoCallCardCONFView.java"

# interfaces
.implements Lcom/android/incallui/SecCallCardUi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0400f0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x7f10017b

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mIndicatorArea:Landroid/view/ViewGroup;

    const v3, 0x7f1000d6

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mPhoneNumber:Landroid/widget/TextView;

    const v3, 0x7f1000d4

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mPrimaryName:Landroid/widget/TextView;

    const v3, 0x7f10008e

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mNumberLabel:Landroid/widget/TextView;

    const v3, 0x7f100137

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mPhotoContainer:Landroid/view/View;

    const v3, 0x7f10003b

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mPhoto:Landroid/widget/ImageView;

    const v3, 0x7f1000d1

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mCallStateIcon:Landroid/widget/ImageView;

    const v3, 0x7f1000d3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mCallStateLabel:Landroid/widget/TextView;

    const v3, 0x7f1000d5

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mCallNumberAndLabel:Landroid/view/View;

    const v3, 0x7f1000d7

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mElapsedTime:Landroid/widget/TextView;

    const v3, 0x7f100038

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mPrimaryCallCardContainer:Landroid/view/View;

    const v3, 0x7f1000cf

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v3, 0x7f100139

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mCallStateContainer:Landroid/view/View;

    const v3, 0x7f10017c

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mCallInfoContainer:Landroid/view/View;

    const v3, 0x7f100277

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mNameContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mWaveEffectWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mWaveEffectHeight:I

    const v3, 0x7f10013c

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mPeriodMarkContainer:Landroid/view/View;

    new-array v3, v5, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mPeriodMarkList:[Landroid/widget/ImageView;

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    return-void

    :array_0
    .array-data 4
        0x7f10013d
        0x7f10013e
        0x7f10013f
    .end array-data
.end method

.method public setPrimaryVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToShow(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardCONFView;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToHide(Landroid/view/View;)V

    goto :goto_0
.end method
