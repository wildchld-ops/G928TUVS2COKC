.class public Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;
.super Lcom/android/incallui/SecCallCardFragment;
.source "SecMirrorlinkMultiPartyCallCardFragment.java"


# instance fields
.field private mCallStateLabel:Landroid/widget/TextView;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mGlowImageHandler:Landroid/os/Handler;

.field private mIconLabel:Landroid/widget/ImageView;

.field private mIncomAni:[Landroid/widget/ImageView;

.field private mIncomGlowImage:Landroid/view/ViewGroup;

.field private mLabelAndNumber:Landroid/view/ViewGroup;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoText:Landroid/widget/TextView;

.field private mPrevState:I

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mSecondCallBanner:Landroid/view/ViewGroup;

.field private mSecondCallStateLabel:Landroid/widget/TextView;

.field private mSecondElapsedTime:Landroid/widget/TextView;

.field private mSecondIconLabel:Landroid/widget/ImageView;

.field private mSecondLabelAndNumber:Landroid/view/ViewGroup;

.field private mSecondName:Landroid/widget/TextView;

.field private mSecondPhoneNumber:Landroid/widget/TextView;

.field private mSecondPhoto:Landroid/widget/ImageView;

.field private mSecondPhotoText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    new-instance v0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment$1;-><init>(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mGlowImageHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v2, "[MIRRORLINK] : view is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020255

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MIRRORLINK] : CMCTEST masksize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/incallui/SecDrivelinkPhoto;

    invoke-direct {v1, p2, v0}, Lcom/android/incallui/SecDrivelinkPhoto;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0400b5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f1000cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const v0, 0x7f100222

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondCallBanner:Landroid/view/ViewGroup;

    const v0, 0x7f1000d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    const v0, 0x7f100224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondLabelAndNumber:Landroid/view/ViewGroup;

    const v0, 0x7f10003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100220

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPhotoText:Landroid/widget/TextView;

    const v0, 0x7f100221

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondPhotoText:Landroid/widget/TextView;

    const v0, 0x7f100125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIconLabel:Landroid/widget/ImageView;

    const v0, 0x7f100225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondIconLabel:Landroid/widget/ImageView;

    const v0, 0x7f1000d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f100227

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f1000d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f100228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f1000d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f100223

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondName:Landroid/widget/TextView;

    const v0, 0x7f1000d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f100226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f100128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomGlowImage:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f100359

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f10035a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f10035b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f10035c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MIRRORLINK] : setCallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPrevState:I

    if-ne p1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPrevState:I

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x3

    if-ne v3, p1, :cond_3

    const v3, 0x7f0d013a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/16 v3, 0xa

    if-eq v3, p1, :cond_5

    const/16 v3, 0x9

    if-ne v3, p1, :cond_6

    :cond_5
    const v3, 0x7f0d0137

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/16 v3, 0x8

    if-ne v3, p1, :cond_7

    const v3, 0x7f0d0138

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    const/4 v3, 0x4

    if-ne v3, p1, :cond_2

    const v3, 0x7f0d0136

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5

    const/16 v4, 0x8

    const-string v3, "[MIRRORLINK] : Setting primary call"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    iget-object v2, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget v1, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    iget-object v0, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    :cond_0
    if-eqz p6, :cond_1

    iget-object v3, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    if-eqz p6, :cond_4

    iget-object v3, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->isNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setPrimaryLabelType(I)V

    iget-object v3, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPhotoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrimaryLabelType(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIconLabel:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/SecDrivelinkUtils;->getMirrorLinkLabelIconId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIconLabel:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mIconLabel:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MIRRORLINK] : setPrimaryText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPhotoText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mPhotoText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSecondName(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondName:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setSecondPhoneNumber(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 6

    const-string v4, "[MIRRORLINK] : Setting secondary call"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p8, :cond_0

    iget-object v2, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p8, :cond_2

    iget-object v4, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setSecondName(Ljava/lang/String;Z)V

    if-eqz p8, :cond_1

    iget-object v4, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->isNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondName:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondLabelAndNumber:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v3

    const v4, 0x7f0d0138

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondElapsedTime:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondCallStateLabel:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondName:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondLabelAndNumber:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget v4, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setSecondaryLabelType(I)V

    iget-object v4, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setSecondPhoneNumber(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setSecondaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondPhotoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSecondaryLabelType(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondIconLabel:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/SecDrivelinkUtils;->getMirrorLinkLabelIconId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondIconLabel:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondIconLabel:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MIRRORLINK] : setSecondaryText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondPhoto:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondPhotoText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkMultiPartyCallCardFragment;->mSecondPhotoText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
