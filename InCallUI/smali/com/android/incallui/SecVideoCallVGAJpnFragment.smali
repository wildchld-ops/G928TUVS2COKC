.class public Lcom/android/incallui/SecVideoCallVGAJpnFragment;
.super Lcom/android/incallui/SecVideoCallVGAFragment;
.source "SecVideoCallVGAJpnFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;
    }
.end annotation


# instance fields
.field private mPrivCallState:I

.field private showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mPrivCallState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecVideoCallVGAJpnFragment;)Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/SecVideoCallVGAJpnFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showNovideoImage(Z)V

    return-void
.end method

.method private setNoVideoImage()V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private showNovideoImage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showTimerCancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    :cond_0
    return-void
.end method

.method private showTimerRestart()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    invoke-virtual {v0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private updateNoVideoImage(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNoVideoImage... state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mPrivCallState:I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showNovideoImage(Z)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mPrivCallState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showTimerRestart()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public inflateVideoCallViews()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;->inflateVideoCallViews()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mTouchBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->setNoVideoImage()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mTouchBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showTimerCancel()V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallVGAFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->setCallState(Lcom/android/incallui/Call;)V

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->updateNoVideoImage(I)V

    :cond_0
    return-void
.end method

.method public showPrimaryCallBanner(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->showPrimaryCallBanner(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->updateSwitchButtonLayout(Z)V

    return-void
.end method

.method protected surfaceTextureCreated(ILandroid/graphics/SurfaceTexture;II)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/incallui/SecVideoCallVGAFragment;->surfaceTextureCreated(ILandroid/graphics/SurfaceTexture;II)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;-><init>(Lcom/android/incallui/SecVideoCallVGAJpnFragment;JJ)V

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showTimerRestart()V

    :cond_1
    return-void
.end method

.method protected surfaceTextureDestroyed(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->surfaceTextureDestroyed(I)V

    const-string v0, "surfaceTextureDestroyed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showTimerCancel()V

    :cond_0
    return-void
.end method

.method protected surfaceTextureUpdated(ILandroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "prohibit_chattering"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showNovideoImage(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showTimerRestart()V

    :cond_0
    return-void
.end method
