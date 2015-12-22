.class public Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;
.super Lcom/android/incallui/SecMultiPartyCallCardFragment;
.source "SecMultiPartyVideoCallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/SecCallCardUi;


# instance fields
.field private final ENABLE_SWAP:I

.field private final ENABLE_SWAP_DELAYED:I

.field private mCleanModeStub:Landroid/view/ViewStub;

.field private mCleanModeText:Landroid/widget/TextView;

.field private mEpdgIconImage:Landroid/widget/ImageView;

.field private mEpdgIconLayout:Landroid/view/View;

.field private mEpdgIconStub:Landroid/view/ViewStub;

.field private mMpHandler:Landroid/os/Handler;

.field private mOnholdLayoutForwardSlash:Landroid/widget/TextView;

.field private mOnholdLayoutText:Landroid/widget/TextView;

.field private mOnholdStub:Landroid/view/ViewStub;

.field private mSecondaryIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->ENABLE_SWAP:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->ENABLE_SWAP_DELAYED:I

    new-instance v0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment$4;-><init>(Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMpHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->enableSwapButton(Z)V

    return-void
.end method

.method private enableSwapButton(Z)V
    .locals 1

    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    return-object v0
.end method

.method private inflateCleanModeLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100240

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeText:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private inflateEpdgIconLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10023d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconImage:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method private inflateVolteOnholdLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private isPossibleToShowCameraText()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecCall;->isModifyProgressing()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v1, :cond_0

    move v3, v4

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private isPossibleToShowHoldText()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    const-string v3, "us_show_on_hold"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setCleanModeText(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method private setSecondaryIcon()V
    .locals 7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    const-string v5, "setSecondaryIcon"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/secservice/SecVideoCallManager;->isEPDGCall(Lcom/android/incallui/Call;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSecondaryIcon isVideo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isHDVoice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isEPDG:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    const v3, 0x7f02028a

    :cond_2
    :goto_1
    if-nez v3, :cond_6

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const v3, 0x7f020288

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const v3, 0x7f020287

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_2

    const v3, 0x7f020289

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEpdgIcon(I)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconLayout:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "updateEpdgIcon mEpdgIconLayout == null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsEpdgIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateLayoutForMobileKeyboard()V
    .locals 7

    const v6, 0x7f0a02d9

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private updateMultipartyCallCardLayout()V
    .locals 6

    const v5, 0x7f0a0261

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v2, "concept_usa_att"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "concept_usa_tmo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ui_for_mpcs"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "concept_canada_common"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a024d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_4

    const-string v2, "concept_usa_att"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "concept_usa_tmo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ui_for_mpcs"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "concept_canada_common"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->updateLayoutForMobileKeyboard()V

    :cond_5
    return-void
.end method

.method private updateOnHoldText()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->isPossibleToShowHoldText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public animateForHideManager(Z)V
    .locals 8

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "animateForHideManager...isRunning"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "animateForHideManager..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManageButton:Landroid/widget/Button;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method

.method protected animateForManager()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "animateForManager...isRunning"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "animateForManager..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManageButton:Landroid/widget/Button;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManagerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->showConferenceCallManager()V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method

.method protected animateForMerge()V
    .locals 14

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "animateForMerge...isRunning"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v8, "animateForMerge..."

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0013

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v12, [F

    aput v13, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a025c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int v5, v7, v8

    iget-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    const-string v9, "top"

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v7, v10, v11

    aput v5, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v10, v1

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v8

    new-instance v9, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment$3;

    invoke-direct {v9, p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment$3;-><init>(Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v8, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v12, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mIsMergeProcessing:Z

    goto/16 :goto_0
.end method

.method protected animateForSwap()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "animateForSwap...isRunning"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v4, "animateForSwap..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a025c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    neg-float v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment$2;-><init>(Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->removeMultipartyCallButtons()V

    goto :goto_0
.end method

.method protected dismissInCallMenu()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->dismissInCallMenu()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->dismissDialogs()V

    :cond_0
    return-void
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/InVideoCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InVideoCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const/high16 v0, 0x7f120000

    return v0
.end method

.method protected inflateCameraButtonLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment$1;-><init>(Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public isPrimaryVisible()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    return v2

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public needToShowMenu()Z
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-super {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->needToShowMenu()Z

    move-result v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v2, "clean_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCleanMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-boolean v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mIsSwapProcessing:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mIsMergeProcessing:Z

    if-eqz v2, :cond_4

    :cond_3
    const/4 v0, 0x0

    :cond_4
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

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v6, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v4

    if-eq v4, v6, :cond_6

    move v0, v2

    :goto_1
    goto/16 :goto_0

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x0

    const/16 v6, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    sparse-switch v1, :sswitch_data_0

    const-string v2, "onClick: call super onClick"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz v0, :cond_0

    const-string v2, "onClick: camera Text Button clicked"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto :goto_0

    :sswitch_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMpHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMpHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMpHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->enableSwapButton(Z)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMpHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMpHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100031 -> :sswitch_1
        0x7f10022f -> :sswitch_1
        0x7f100326 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0400bb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x64

    invoke-super {p0}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->dismissInCallMenu()V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mEpdgIconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMpHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->updateCallCardIndicatorArea()V

    const v0, 0x7f100235

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->inflateEpdgIconLayout()V

    :cond_1
    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->inflateCleanModeLayout()V

    :cond_2
    const-string v0, "us_show_on_hold"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->inflateVolteOnholdLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->setPrimaryVisible(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->updateMultipartyCallCardLayout()V

    return-void
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    invoke-super/range {p0 .. p7}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const-string v0, "us_show_on_hold"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->updateOnHoldText()V

    :cond_0
    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->updateEpdgIcon(I)V

    :cond_1
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    return-void
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    if-eqz p2, :cond_0

    const-string v1, "geo_description_disable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a021d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    if-eqz p2, :cond_1

    const-string v1, "geo_description_disable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a021e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v1, "clean_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->setCleanModeText(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "setPrimaryVisible : banner is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->isPrimaryVisible()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrimaryVisible : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "concept_usa_common"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "concept_canada_common"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->isModifyBannerShow()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrimaryVisible isModifyBannerShow :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "concept_usa_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/secui/SecUiAdapter;->updateModifyBannerLayout(Z)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    invoke-super/range {p0 .. p8}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->setSecondaryIcon()V

    :cond_0
    return-void
.end method

.method protected showSecondaryContainer(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPhotoContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method protected updateBgColorForCallState(I)V
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
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_1

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

.method public updateCallCardCleanMode(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->showMenu(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->setPrimaryVisible(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->showSecondaryContainer(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->updateLayoutForCleanMode(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mCleanModeText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->isPossibleToShowCameraText()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->needToShowMenu()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->showMenu(Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->setPrimaryVisible(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->showSecondaryContainer(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->updateLayoutForCleanMode(Z)V

    goto :goto_0
.end method

.method protected updateCameraButtonUsaGsm()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->isPossibleToShowCameraText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCleanMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateLayoutForCleanMode(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a024c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected updateMultipartyCallButtons()V
    .locals 11

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v10, 0x0

    invoke-static {v6, v10, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v8}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    const-string v6, "support_merge_call"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v2, 0x0

    :cond_2
    const-string v6, "concept_usa_vzw"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    :goto_1
    const/16 v6, 0x80

    invoke-virtual {v0, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v6, :cond_0

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    move v5, v9

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->getConferenceCallManagerShowingState()Z

    move-result v6

    if-nez v6, :cond_9

    :goto_3
    and-int/2addr v5, v9

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v5, :cond_a

    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mManageButton:Landroid/widget/Button;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    :cond_4
    const-string v6, "bmc_volte_ui"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v6, :cond_3

    iget-object v10, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v3, :cond_6

    move v6, v7

    :goto_5
    invoke-virtual {v10, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v2, :cond_7

    move v6, v7

    :goto_6
    invoke-virtual {v10, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_5

    :cond_7
    move v6, v8

    goto :goto_6

    :cond_8
    move v5, v7

    goto :goto_2

    :cond_9
    move v9, v7

    goto :goto_3

    :cond_a
    move v7, v8

    goto :goto_4
.end method
