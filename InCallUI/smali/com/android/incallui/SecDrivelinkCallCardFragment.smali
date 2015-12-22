.class public Lcom/android/incallui/SecDrivelinkCallCardFragment;
.super Lcom/android/incallui/SecCallCardFragment;
.source "SecDrivelinkCallCardFragment.java"


# instance fields
.field protected mCallStateLabel:Landroid/widget/TextView;

.field private mElapsedSecondTime:Landroid/widget/TextView;

.field private mGlowImageHandler:Landroid/os/Handler;

.field private mIconLabel:Landroid/widget/ImageView;

.field private mIncomAni:[Landroid/widget/ImageView;

.field private mIncomGlowImage:Landroid/view/ViewGroup;

.field private mIncomingImageAnimator:Lcom/android/incallui/SecDrivelinkIncomImageAnimator;

.field private mLabelAndNumber:Landroid/view/ViewGroup;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPrevState:I

.field private mPrimaryCallCard:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mSecondaryCallCard:Landroid/view/ViewGroup;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Landroid/widget/ImageView;

.field private mStatusCard:Landroid/view/ViewGroup;

.field private mSwapButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment$1;-><init>(Lcom/android/incallui/SecDrivelinkCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mGlowImageHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecDrivelinkCallCardFragment;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private isMultipartyCallCDMA()Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "This is multiparty CDMA call..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setPrimaryLabelType(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIconLabel:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/SecDrivelinkUtils;->getLabelIconId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIconLabel:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrimaryStatusCard(I)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mStatusCard:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomingImageAnimator:Lcom/android/incallui/SecDrivelinkIncomImageAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomGlowImage:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mGlowImageHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomingImageAnimator:Lcom/android/incallui/SecDrivelinkIncomImageAnimator;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomingImageAnimator:Lcom/android/incallui/SecDrivelinkIncomImageAnimator;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomingImageAnimator:Lcom/android/incallui/SecDrivelinkIncomImageAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomingImageAnimator:Lcom/android/incallui/SecDrivelinkIncomImageAnimator;

    invoke-virtual {v0}, Lcom/android/incallui/SecDrivelinkIncomImageAnimator;->stopAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomingImageAnimator:Lcom/android/incallui/SecDrivelinkIncomImageAnimator;

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomGlowImage:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSecondaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setSecondaryName(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method private swapCall()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateCallStateLabel(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090122

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DRIVELINK] callStateLabel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_1
    const v2, 0x7f0d013a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0d0137

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v2, 0x7f0d0136

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const v2, 0x7f0d0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090121

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private updateColorForCallState(I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090112

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPrimaryCallCard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090114

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
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

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->swapCall()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100031
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f04005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f100124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPrimaryCallCard:Landroid/view/ViewGroup;

    const v0, 0x7f1000d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f10003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f1000d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f1000d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    const v0, 0x7f100125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIconLabel:Landroid/widget/ImageView;

    const v0, 0x7f1000d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f100127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mStatusCard:Landroid/view/ViewGroup;

    const v0, 0x7f1000d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f100128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomGlowImage:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f100359

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f10035a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f10035b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mIncomAni:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f10035c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const v0, 0x7f100126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    const v0, 0x7f100129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallCard:Landroid/view/ViewGroup;

    const v0, 0x7f10027f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100280

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const v0, 0x7f100031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSwapButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSwapButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSwapButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DRIVELINK] state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPrevState:I

    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPrevState:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPrevState:I

    invoke-direct {p0, p1}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->updateCallStateLabel(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->setPrimaryStatusCard(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->updateColorForCallState(I)V

    const-string v0, "china_cdma_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallCard:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallCard:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mStatusCard:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mStatusCard:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v2, "view is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    new-instance v1, Lcom/android/incallui/SecDrivelinkPhoto;

    invoke-direct {v1, p2, v0}, Lcom/android/incallui/SecDrivelinkPhoto;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v2, "Setting primary call"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-eqz p6, :cond_0

    iget-object v1, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget v0, p6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallCard:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallCard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mStatusCard:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mStatusCard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->setPrimaryLabelType(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->isMultipartyCallCDMA()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    const/16 v2, 0x8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->isMultipartyCallCDMA()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Setting secondary call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p8, :cond_2

    iget-object v0, p8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->setSecondaryImage(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p2, p3}, Lcom/android/incallui/SecDrivelinkCallCardFragment;->setSecondaryName(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mLabelAndNumber:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mStatusCard:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mStatusCard:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallCard:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallCardFragment;->mSecondaryCallCard:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
