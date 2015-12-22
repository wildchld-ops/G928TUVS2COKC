.class public Lcom/android/incallui/SecMirrorlinkCallCardFragment;
.super Lcom/android/incallui/SecCallCardFragment;
.source "SecMirrorlinkCallCardFragment.java"


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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    new-instance v0, Lcom/android/incallui/SecMirrorlinkCallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecMirrorlinkCallCardFragment$1;-><init>(Lcom/android/incallui/SecMirrorlinkCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mGlowImageHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecMirrorlinkCallCardFragment;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020256

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04c6

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

    const v0, 0x7f040061

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

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const v0, 0x7f1000d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    const v0, 0x7f10003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPhotoText:Landroid/widget/TextView;

    const v0, 0x7f100125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mIconLabel:Landroid/widget/ImageView;

    const v0, 0x7f1000d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f1000d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f1000d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f1000d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f100128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mIncomGlowImage:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f100359

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f10035a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f10035b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f10035c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x3

    const/16 v6, 0x8

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MIRRORLINK] setCallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPrevState:I

    if-ne p1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPrevState:I

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "[MIRRORLINK] : Landscape mode on "

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v2

    if-ne v7, p1, :cond_4

    const v3, 0x7f0d013a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MIRRORLINK] : mCallStateLabel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    if-eq v7, p1, :cond_9

    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v3, 0xa

    if-eq v3, p1, :cond_6

    const/16 v3, 0x9

    if-ne v3, p1, :cond_7

    :cond_6
    const v3, 0x7f0d0137

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    if-ne v6, p1, :cond_8

    const v3, 0x7f0d0138

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const/4 v3, 0x4

    if-ne v3, p1, :cond_3

    const v3, 0x7f0d0136

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5

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

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->isNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->setPrimaryLabelType(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

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

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPhotoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrimaryLabelType(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mIconLabel:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/SecDrivelinkUtils;->getMirrorLinkLabelIconId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mIconLabel:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mIconLabel:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

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

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPhotoText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallCardFragment;->mPhotoText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
