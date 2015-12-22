.class public Lcom/android/incallui/SecTabletVideoCallCardVGAView;
.super Lcom/android/incallui/SecTabletVideoCallCardView;
.source "SecTabletVideoCallCardVGAView.java"

# interfaces
.implements Lcom/android/incallui/SecCallCardUi;


# instance fields
.field private mCleanModeStub:Landroid/view/ViewStub;

.field private mCleanModeText:Landroid/widget/TextView;

.field private mEpdgIconImage:Landroid/widget/ImageView;

.field private mEpdgIconStub:Landroid/view/ViewStub;

.field private mEriCallInfoStub:Landroid/view/ViewStub;

.field private mEriCallInfoText:Landroid/widget/TextView;

.field private mHDEpdgIconLayout:Landroid/view/View;

.field private mHDIconImage:Landroid/widget/ImageView;

.field private mHDIconStub:Landroid/view/ViewStub;

.field private mOnholdLayoutForwardSlash:Landroid/widget/TextView;

.field private mOnholdLayoutText:Landroid/widget/TextView;

.field private mOnholdStub:Landroid/view/ViewStub;

.field private mVolteCameraStub:Landroid/view/ViewStub;

.field private mVolteCameraText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecTabletVideoCallCardVGAView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    return-object v0
.end method

.method private inflateCameraButtonLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/incallui/SecTabletVideoCallCardVGAView$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView$1;-><init>(Lcom/android/incallui/SecTabletVideoCallCardVGAView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private inflateCleanModeLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100240

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeText:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private inflateEriCallInfoLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEriCallInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEriCallInfoStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEriCallInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEriCallInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEriCallInfoText:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private inflateHDEpdgIconLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10027c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mHDEpdgIconLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEpdgIconStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEpdgIconStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEpdgIconStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEpdgIconStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEpdgIconImage:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mHDIconStub:Landroid/view/ViewStub;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mHDIconStub:Landroid/view/ViewStub;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mHDIconStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mHDIconStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mHDIconImage:Landroid/widget/ImageView;

    :cond_3
    return-void
.end method

.method private inflateVolteOnholdLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdLayoutText:Landroid/widget/TextView;

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

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method private updateCameraButtonUsaGsm()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->isPossibleToShowCameraText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isCleanMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCleanModeForCallState(I)V
    .locals 2

    const/16 v0, 0x9

    if-eq v0, p1, :cond_0

    const/16 v0, 0xa

    if-ne v0, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->updateCallCardCleanMode(Z)V

    :cond_1
    return-void
.end method

.method private updateEriCallInfoText(I)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEriCallInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEriCallInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEriCallInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEriCallInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHDEpdgIcon(I)V
    .locals 6

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mHDEpdgIconLayout:Landroid/view/View;

    if-nez v2, :cond_0

    const-string v2, "updateEpdgIcon mEpdgIconLayout == null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsEpdgIcon()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mHDEpdgIconLayout:Landroid/view/View;

    if-nez v0, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEpdgIconStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    move v2, v4

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mHDIconStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_6

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsHDIcon()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isModifyProgressing()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3

    :cond_6
    move v4, v3

    goto :goto_4
.end method

.method private updateOnHoldText()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdLayoutText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->isPossibleToShowHoldText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
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
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getWaveEffectLayoutWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected getWaveEffectLayoutWidth()I
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

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

    const-string v3, "concept_usa_att"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "concept_usa_tmo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0292

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    :goto_0
    :sswitch_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method protected inflateCdnipLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10027a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCdnipNumberLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100279

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1002c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCnapNameLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04010a

    invoke-virtual {v1, v3, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x7f10017b

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mIndicatorArea:Landroid/view/ViewGroup;

    const v3, 0x7f1000d6

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPhoneNumber:Landroid/widget/TextView;

    const v3, 0x7f1000d4

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPrimaryName:Landroid/widget/TextView;

    const v3, 0x7f10008e

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mNumberLabel:Landroid/widget/TextView;

    const v3, 0x7f100137

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPhotoContainer:Landroid/view/View;

    const v3, 0x7f10003b

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPhoto:Landroid/widget/ImageView;

    const v3, 0x7f1000d1

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallStateIcon:Landroid/widget/ImageView;

    const v3, 0x7f1000d3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallStateLabel:Landroid/widget/TextView;

    const v3, 0x7f1000d5

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallNumberAndLabel:Landroid/view/View;

    const v3, 0x7f1000d7

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mElapsedTime:Landroid/widget/TextView;

    const v3, 0x7f100038

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPrimaryCallCardContainer:Landroid/view/View;

    const v3, 0x7f1000cf

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v3, 0x7f100139

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallStateContainer:Landroid/view/View;

    const v3, 0x7f10017c

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    const v3, 0x7f100277

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mNameContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mWaveEffectWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mWaveEffectHeight:I

    const v3, 0x7f10013c

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPeriodMarkContainer:Landroid/view/View;

    new-array v3, v5, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPeriodMarkList:[Landroid/widget/ImageView;

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v3, 0x7f1002c0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->initVolumePanelLayout()V

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const-string v3, "concept_usa_att"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "concept_usa_tmo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->inflateCameraButtonLayout()V

    :cond_2
    const-string v3, "clean_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->inflateCleanModeLayout()V

    :cond_3
    const-string v3, "concept_usa_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->inflateHDEpdgIconLayout()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->inflateEriCallInfoLayout()V

    :cond_4
    const-string v3, "us_show_on_hold"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->inflateVolteOnholdLayout()V

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->setPrimaryVisible(Z)V

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x7f10013d
        0x7f10013e
        0x7f10013f
    .end array-data
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

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    packed-switch v1, :pswitch_data_0

    const-string v3, "onClick: call super onClick"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz v0, :cond_0

    const-string v3, "onClick: camera Text Button clicked"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/incallui/secui/SecUiAdapter;->updateModifyRequestButtons(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

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

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecTabletVideoCallCardView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mIncomingHideMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEpdgIconImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mEpdgIconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mHDIconImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public onSecVideoStateChanged(Lcom/android/incallui/secservice/SecVideoCall;)V
    .locals 1

    const-string v0, "onSecVideoStateChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "concept_usa_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "concept_canada_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p1, Lcom/android/incallui/secservice/SecVideoCall;->mIsModifyBannerShow:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->setPrimaryVisible(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    invoke-super/range {p0 .. p7}, Lcom/android/incallui/SecTabletVideoCallCardView;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const-string v0, "support_wave_effect"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->updateWaveEffectLayoutForCallState(I)V

    :cond_0
    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->updateCleanModeForCallState(I)V

    :cond_1
    const-string v0, "concept_usa_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "concept_usa_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->updateCameraButtonUsaGsm()V

    :cond_3
    const-string v0, "us_show_on_hold"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->updateOnHoldText()V

    :cond_4
    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->updateHDEpdgIcon(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->updateEriCallInfoText(I)V

    :cond_5
    return-void
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecTabletVideoCallCardView;->setPrimaryName(Ljava/lang/String;Z)V

    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->setCleanModeText(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    if-nez v3, :cond_0

    const-string v3, "setPrimaryVisible : banner is null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->isPrimaryVisible()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPrimaryVisible : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "concept_usa_common"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "concept_canada_common"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_1
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-ne v2, p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->isModifyBannerShow()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPrimaryVisible isModifyBannerShow :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "concept_usa_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v3}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToShow(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v3}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToHide(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v3}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToShow(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v3}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToHide(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    if-eqz p1, :cond_a

    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v3}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToShow(Landroid/view/View;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/secui/SecUiAdapter;->updateSwitchButtonLayout(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    invoke-static {v3}, Lcom/android/incallui/SecAnimationUtils$Change;->changeToHide(Landroid/view/View;)V

    goto :goto_1
.end method

.method public updateCallCardCleanMode(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->showMenu(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->setPrimaryVisible(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCleanModeText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->isPossibleToShowCameraText()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mVolteCameraText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->needToShowMenu()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->showMenu(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->setPrimaryVisible(Z)V

    goto :goto_0
.end method

.method protected updateLayoutForCallState(I)V
    .locals 9

    const v8, 0x7f0a01c7

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletVideoCallCardView;->updateLayoutForCallState(I)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallStateContainer:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mNameContainer:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPrimaryCallCardContainer:Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mNameContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_2
    sparse-switch p1, :sswitch_data_0

    const-string v5, "concept_usa_att"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "concept_usa_tmo"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0292

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_3
    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mNameContainer:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->isCnapExist()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->isCdnipExist()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

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

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallCardVGAView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_3

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
