.class public Lcom/android/incallui/SecVideoCallVGAUsaFragment;
.super Lcom/android/incallui/SecVideoCallVGAFragment;
.source "SecVideoCallVGAUsaFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragShadowBuilder;,
        Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;,
        Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewTouchListerner;
    }
.end annotation


# instance fields
.field private mEpdgNotifyBannerView:Landroid/view/View;

.field private mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

.field private mEpdgNotifyInfoBanner:Landroid/view/View;

.field private mEpdgNotifyInfoText:Landroid/widget/TextView;

.field private mIncomingVideoBorder:Landroid/view/View;

.field private mIncomingVideoBorderStub:Landroid/view/ViewStub;

.field private mIsCameraViewMoved:Z

.field private mModifyRequestInfoBanner:Landroid/view/View;

.field private mModifyRequestInfoBannerView:Landroid/view/View;

.field private mModifyRequestInfoBannerViewsStub:Landroid/view/ViewStub;

.field private mModifyRequestInfoText:Landroid/widget/TextView;

.field private mNeedToShowAnimation:Z

.field private mPreviewVideoBorder:Landroid/view/View;

.field private mPreviewVideoBorderStub:Landroid/view/ViewStub;

.field protected mVideoTouchListener:Landroid/view/View$OnTouchListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorderStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideoBorderStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorder:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideoBorder:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsCameraViewMoved:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNeedToShowAnimation:Z

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerViewsStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBanner:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    new-instance v0, Lcom/android/incallui/SecVideoCallVGAUsaFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment$2;-><init>(Lcom/android/incallui/SecVideoCallVGAUsaFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/SecVideoCallVGAUsaFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->updateVideoViewBgColorForCallState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/incallui/SecVideoCallVGAUsaFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsCameraViewMoved:Z

    return p1
.end method

.method private handlingCameraOnOffVzw()V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "concept_usa_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v5, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v5, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto :goto_0
.end method

.method private inflateEpdgNodifyBanner()V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1002e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyBannerViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    const v3, 0x7f100304

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyBannerView:Landroid/view/View;

    const v3, 0x7f1001bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private inflateIncomingVideoBorder()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideoBorderStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideoBorderStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideoBorderStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideoBorder:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private inflateModifyRequestInfoBanner()V
    .locals 2

    const-string v0, "concept_usa_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerViewsStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerViewsStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerViewsStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerView:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerView:Landroid/view/View;

    const v1, 0x7f10030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBanner:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerView:Landroid/view/View;

    const v1, 0x7f100310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoText:Landroid/widget/TextView;

    :cond_1
    return-void

    :cond_2
    const-string v0, "concept_usa_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "concept_usa_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "concept_canada_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerViewsStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerViewsStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerViewsStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerViewsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBannerView:Landroid/view/View;

    goto :goto_0
.end method

.method private inflatePreviewVideoBorder()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorderStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorderStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorderStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorder:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private setMyProfileImage()V
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "display_photo"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->IsUriExist(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020260

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09008a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020261

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private showEpdgNotifyBanner()V
    .locals 6

    const/16 v5, 0x8

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    if-eqz v3, :cond_0

    const-string v3, "epdg_call_for_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isEPDGCall(Lcom/android/incallui/Call;)Z

    move-result v2

    iget v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    const v4, 0x7f0d02dc

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mEpdgNotifyInfoBanner:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateInCallVideoLayout()V
    .locals 10

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "concept_usa_att"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "concept_usa_tmo"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ui_for_mpcs"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "concept_canada_common"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a029a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    :cond_1
    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOutgoingContainerTemplate:Landroid/view/ViewGroup;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOutgoingContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOutgoingContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const-string v8, "concept_canada_common"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01f3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_4
    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01e6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01e7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideo:Landroid/view/TextureView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v8, v5}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mSmallTouchArea:Landroid/view/View;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mSmallTouchArea:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mSmallTouchArea:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorderStub:Landroid/view/ViewStub;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorderStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorderStub:Landroid/view/ViewStub;

    invoke-virtual {v8, v5}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorder:Landroid/view/View;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorder:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorder:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    return-void
.end method

.method private updatePrimaryImage()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method private updateVideoViewBgColorForCallState()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected hideFarEndPhoto()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected hideNearEndPhoto()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public inflateVideoCallViews()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsExtended:Z

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;->inflateVideoCallViews()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;-><init>(Lcom/android/incallui/SecVideoCallVGAUsaFragment;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViews:Landroid/view/View;

    if-eqz v2, :cond_6

    const-string v2, "concept_usa_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoCallStateArea:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoCallStateArea:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViews:Landroid/view/View;

    const v3, 0x7f1002e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->inflateEpdgNodifyBanner()V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mTouchBackground:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViewsContainer:Landroid/view/View;

    new-instance v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewDragListener;-><init>(Lcom/android/incallui/SecVideoCallVGAUsaFragment;Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewTouchListerner;

    invoke-direct {v3, p0, v4}, Lcom/android/incallui/SecVideoCallVGAUsaFragment$CameraPreviewTouchListerner;-><init>(Lcom/android/incallui/SecVideoCallVGAUsaFragment;Lcom/android/incallui/SecVideoCallVGAUsaFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingContainerTemplate:Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingContainerTemplate:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->inflatePreviewVideoBorder()V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->inflateIncomingVideoBorder()V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->inflateModifyRequestInfoBanner()V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->updateInCallVideoLayout()V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->updatePrimaryImage()V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->setMyProfileImage()V

    :cond_6
    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallVGAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallVGAFragment;->onDestroyView()V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mTouchBackground:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mTouchBackground:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const-string v2, "clean_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->setCleanMode(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->cancelCleanModeTimer()V

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v4, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall(Lcom/android/incallui/Call;)Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-boolean v2, v1, Lcom/android/incallui/secservice/SecVideoCall;->mIsFarFrameReady:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/incallui/secservice/SecVideoCallManager;->setFarFrameReady(Z)V

    :cond_6
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->cancelTimer(I)V

    const/16 v2, 0x6a

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->cancelTimer(I)V

    const/16 v2, 0x6b

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->cancelTimer(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallVGAFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->setCallState(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->updateVideoViewBgColorForCallState()V

    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020260

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020261

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected showFarEndPhoto()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected showIncomingVideoBorder(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideoBorder:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingVideoBorder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected showNearEndPhoto()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected showPreviewVideoBorder(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorder:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideoBorder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPrimaryCallBanner(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->showPrimaryCallBanner(Z)V

    return-void
.end method

.method public showVideoAsVideoState(I)V
    .locals 7

    const/16 v4, 0x69

    const/4 v6, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput p1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mDelayedVideoState:I

    iget-boolean v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    if-eqz v3, :cond_1

    const/16 v1, 0x6a

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->cancelTimer(I)V

    const/16 v1, 0x1f4

    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->startTimer(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x6a

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->cancelTimer(I)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->cancelTimer(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showVideoAsVideoState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/incallui/secservice/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    iput v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    iput p1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/incallui/secservice/SecVideoCallManager;->mNeedToShowModifyAnimation:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    iput-boolean v2, v3, Lcom/android/incallui/secservice/SecVideoCallManager;->mNeedToShowModifyAnimation:Z

    :cond_2
    iget v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HOLDING:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HOLDING:I

    if-ne v3, v4, :cond_6

    iput-boolean v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNeedToShowAnimation:Z

    :goto_1
    iget v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    iget v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    if-ne v3, v4, :cond_3

    iput-boolean v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNeedToShowAnimation:Z

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->refreshVideoSurface()V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v3, v5}, Landroid/view/TextureView;->setAlpha(F)V

    :cond_4
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->HOLDING:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HOLDING:I

    if-ne v3, v4, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreparingAnimation(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoOnHold()V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showEpdgNotifyBanner()V

    iget-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x6b

    const/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->startTimer(II)V

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_NONE:I

    if-ne v3, v4, :cond_7

    iput-boolean v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNeedToShowAnimation:Z

    goto :goto_1

    :cond_7
    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNeedToShowAnimation:Z

    goto :goto_1

    :cond_8
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    if-ne v3, v4, :cond_a

    const-string v3, "clean_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/secui/SecUiAdapter;->updateCleanMode(Z)V

    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreparingAnimation(Z)V

    iget-boolean v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNeedToShowAnimation:Z

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoHoldingTheOtherPartyHold(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v1, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto :goto_2

    :cond_a
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    if-eq v3, v4, :cond_c

    iget v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    if-ne v3, v4, :cond_b

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    if-eq v3, v4, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    :cond_b
    iget v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    if-ne v3, v4, :cond_c

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HOLDING_THE_OTHER_PARTY:I

    if-eq v3, v4, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v1, v4}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    :cond_c
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v3, v4, :cond_12

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    if-ne v3, v4, :cond_d

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoIncoming(Z)V

    goto/16 :goto_2

    :cond_d
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    if-ne v3, v4, :cond_e

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoOutgoing(Z)V

    goto/16 :goto_2

    :cond_e
    const-string v3, "clean_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/secui/SecUiAdapter;->updateCleanMode(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecUiAdapter;->startCleanModeTimer()V

    :cond_f
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->handlingCameraOnOffVzw()V

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->HELD_VIDEO:I

    if-ne v3, v4, :cond_10

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreparingAnimation(Z)V

    iget-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNeedToShowAnimation:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoHeld(Z)V

    goto/16 :goto_2

    :cond_10
    iget-boolean v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNeedToShowAnimation:Z

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoInCall(Z)V

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne p1, v3, :cond_11

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreviewVideoBorder(Z)V

    goto/16 :goto_2

    :cond_11
    move v1, v2

    goto :goto_3

    :cond_12
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_TX:I

    if-ne v3, v4, :cond_15

    const-string v3, "clean_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/secui/SecUiAdapter;->updateCleanMode(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->startCleanModeTimer()V

    :cond_13
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->handlingCameraOnOffVzw()V

    iget-boolean v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNeedToShowAnimation:Z

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoShareTx(Z)V

    iget v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v2, v3, :cond_14

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto/16 :goto_2

    :cond_14
    iget v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v1, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto/16 :goto_2

    :cond_15
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_SHARE_RX:I

    if-ne v3, v4, :cond_17

    const-string v1, "clean_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/incallui/secui/SecUiAdapter;->updateCleanMode(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->startCleanModeTimer()V

    :cond_16
    iget-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNeedToShowAnimation:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoShareRx(Z)V

    goto/16 :goto_2

    :cond_17
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_REQUEST:I

    if-ne v3, v4, :cond_1e

    const-string v3, "clean_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/secui/SecUiAdapter;->updateCleanMode(Z)V

    :cond_18
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    and-int/2addr v2, p1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    if-ne v2, v3, :cond_1a

    iget v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    if-eq v2, v3, :cond_19

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoModifyRequestVoiceToVideo(Z)V

    :cond_19
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto/16 :goto_2

    :cond_1a
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    and-int/2addr v2, p1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    and-int/2addr v2, v3

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    if-eq v2, v3, :cond_1b

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoModifyRequestVoiceToVS(Z)V

    :cond_1b
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto/16 :goto_2

    :cond_1c
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    and-int/2addr v2, p1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    if-ne v2, v3, :cond_1d

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoModifyRequestVSToVideo(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto/16 :goto_2

    :cond_1d
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    and-int/2addr v2, p1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_DUMMY:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoModifyRequestDummy(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto/16 :goto_2

    :cond_1e
    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    and-int/2addr v3, p1

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_RECEIVE:I

    if-ne v3, v4, :cond_5

    const-string v3, "clean_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/secui/SecUiAdapter;->updateCleanMode(Z)V

    :cond_1f
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    and-int/2addr v2, p1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VIDEO:I

    if-ne v2, v3, :cond_20

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoModifyReceiveVoiceToVideo(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto/16 :goto_2

    :cond_20
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    and-int/2addr v2, p1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VOICE_TO_VS:I

    if-ne v2, v3, :cond_21

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoModifyReceiveVoiceToVS(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto/16 :goto_2

    :cond_21
    sget v2, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    and-int/2addr v2, p1

    sget v3, Lcom/android/incallui/secservice/SecVideoState;->MODIFY_VS_TO_VIDEO:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoModifyReceiveVSToVideo(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto/16 :goto_2
.end method

.method public showVideoAsVideoState(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsReadyToShowView:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVideoAsVideoState - return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/secservice/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoAsVideoState(I)V

    goto :goto_0
.end method

.method protected showVideoCleanMode(Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0298

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_2
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2
.end method

.method protected showVideoHeld(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreviewVideoBorder(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    const-string v1, "concept_usa_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->forceRemovePreparingAnimation()V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected showVideoHoldingTheOtherPartyHold(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    const-string v1, "concept_usa_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "concept_usa_tmo"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "concept_canada_common"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showFarEndPhoto()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showNearEndPhoto()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoState:I

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    and-int/2addr v1, v2

    sget v2, Lcom/android/incallui/secservice/SecVideoState;->VIDEO_GENERAL:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreviewVideoBorder(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected showVideoInCall(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x1f4

    iput-boolean v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->hideNearEndPhoto()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->hideFarEndPhoto()V

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showIncomingVideoBorder(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->bringToFront()V

    iget v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->INCOMING:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOldVideoState:I

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    and-int/2addr v3, v4

    sget v4, Lcom/android/incallui/secservice/SecVideoState;->OUTGOING:I

    if-eq v3, v4, :cond_1

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v1}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v2, v3, v4, v1}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v3, v4, v5, v2}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1
.end method

.method protected showVideoIncoming(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIncomingContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    const-string v1, "concept_usa_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "concept_usa_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "concept_usa_tmo"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "concept_canada_common"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreviewVideoBorder(Z)V

    :cond_2
    return-void
.end method

.method protected showVideoModifyReceiveVSToVideo(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showFarEndPhoto()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreviewVideoBorder(Z)V

    return-void
.end method

.method protected showVideoModifyReceiveVoiceToVS(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showNearEndPhoto()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->hideFarEndPhoto()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected showVideoModifyReceiveVoiceToVideo(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showFarEndPhoto()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->hideNearEndPhoto()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected showVideoModifyRequestDummy(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showFarEndPhoto()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected showVideoModifyRequestVSToVideo(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showNearEndPhoto()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreviewVideoBorder(Z)V

    return-void
.end method

.method protected showVideoModifyRequestVoiceToVS(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showFarEndPhoto()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->hideNearEndPhoto()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected showVideoModifyRequestVoiceToVideo(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showFarEndPhoto()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->hideNearEndPhoto()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected showVideoOnHold()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "concept_usa_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "concept_usa_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "concept_canada_common"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showFarEndPhoto()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showNearEndPhoto()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreviewVideoBorder(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreparingAnimation(Z)V

    goto :goto_0
.end method

.method protected showVideoOutgoing(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "concept_usa_vzw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f4

    iput-boolean v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showFarEndPhoto()V

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showIncomingVideoBorder(Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreviewVideoBorder(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOutgoingContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mOutgoingContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallVGAFragment;->showVideoOutgoing(Z)V

    goto :goto_0
.end method

.method protected showVideoShareRx(Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x1f4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->bringToFront()V

    const-string v3, "concept_usa_att"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "concept_usa_tmo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "concept_canada_common"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showNearEndPhoto()V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v3, v4, v5, v1}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->hideFarEndPhoto()V

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreviewVideoBorder(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v3, v4, v5, v1}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->hideNearEndPhoto()V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->isShowGraySurface()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v3, v4, v5, v1}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1
.end method

.method protected showVideoShareTx(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x1f4

    iput-boolean v7, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mIsProgressingAnimation:Z

    :cond_1
    const-string v3, "concept_usa_att"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "concept_usa_tmo"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "concept_canada_common"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showFarEndPhoto()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->hideNearEndPhoto()V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v3, v4, v5, v6}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->bringToFront()V

    invoke-virtual {p0, v7}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreviewVideoBorder(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v3, v4, v5, v1}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->hideFarEndPhoto()V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->isShowGraySurface()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->bringToFront()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->forceRemovePreparingAnimation()V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v3, v4, v5, v1}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->hideNearEndPhoto()V

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v3, v4, v5, v1}, Lcom/android/incallui/SecAnimationUtils$Move;->checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showPreviewVideoBorder(Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mVideoContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public showVideoStateMessageUi(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBanner:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBanner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBanner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBanner:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBanner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateModifyBannerLayout(Z)V
    .locals 5

    const-string v3, "concept_usa_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secservice/SecVideoCallManager;->getSecVideoCall()Lcom/android/incallui/secservice/SecVideoCall;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/android/incallui/secservice/SecVideoCall;->mIsModifyBannerShow:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBanner:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->mModifyRequestInfoBanner:Landroid/view/View;

    invoke-static {v3, v1}, Lcom/android/incallui/SecAnimationUtils$Change;->changeTopMargin(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0291

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0290

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_1
.end method

.method public updateVideoCleanMode(Z)V
    .locals 2

    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->getCurrentOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVideoCallVGAUsaFragment;->showVideoCleanMode(Z)V

    goto :goto_0
.end method
