.class public Lcom/android/incallui/SecVideoCallQCIFFragment;
.super Lcom/android/incallui/SecVideoCallFragment;
.source "SecVideoCallQCIFFragment.java"


# instance fields
.field private mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

.field private mIncomingHideMeImageContainer:Landroid/view/View;

.field private mIncomingHideMePhoto:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    return-void
.end method

.method private setIncomingHideMeImage(Z)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preset_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v4, "photo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preset_path"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09008a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPreviewPosition()V
    .locals 10

    const v9, 0x7f0a00a0

    const v8, 0x7f0a009f

    const/4 v7, 0x4

    const/4 v5, -0x2

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v7, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mPreviewVideo:Landroid/view/TextureView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v7, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v3, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_5
    const-string v3, "support_dialpad_by_hardkey"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v7, :cond_7

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a037f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1
.end method

.method private updateGroupVideoCallView()V
    .locals 4

    const/16 v0, 0xfa

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isScreenResized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/secservice/SecVideoCallManager;->setScreenResized(Z)V

    :cond_0
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

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getView()Landroid/view/View;

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

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/SecVideoCallQCIFFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public inflateVideoCallViews()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallFragment;->inflateVideoCallViews()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "onActivityCreated"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->updateVideoIndicatorArea()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f100296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViewsContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f100297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f10029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/SecVideoCallQCIFFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mNearEndContainerTemplate:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/SecVideoCallQCIFFragment;->copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f100299

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mPreparingAnimation:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f10029c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f10029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoNearEnd:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f1002df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->updatePrimaryImage()V

    :cond_0
    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->setCallState()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecVideoCallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040113

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f040112

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecVideoCallFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMePhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecVideoCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected resizeAndChangeVideoLocation()V
    .locals 4

    const/16 v0, 0xfa

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isScreenResized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndContainerResizeTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndContainerTemplate:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v0}, Lcom/android/incallui/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/SecVideoCallFragment;->setCallState(Lcom/android/incallui/Call;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhotoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    move v3, v2

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->setPreviewPosition()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_5

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/incallui/SecVideoCallQCIFFragment;->setIncomingHideMeImage(Z)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVideoCallQCIFFragment;->showIncomingHideMeImage(Z)V

    :cond_1
    const-string v1, "video_conference"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v5, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->updateGroupVideoCallView()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const/16 v3, 0x8

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mFarEndDefaultImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->getSecUiAdapter()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/secui/SecUiAdapter;->setPrimaryVisibleByDialpad(Z)V

    return-void
.end method

.method public showIncomingHideMeImage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mIncomingHideMeImageContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRecordingInfo(ZZ)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoNearEnd:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoNearEnd:Landroid/view/ViewGroup;

    if-ne p2, v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoTimeTextViewNearEnd:Landroid/widget/TextView;

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoFarEnd:Landroid/view/ViewGroup;

    if-ne p2, v3, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    iget-object v0, p0, Lcom/android/incallui/SecVideoCallQCIFFragment;->mRecInfoTimeTextViewFarEnd:Landroid/widget/TextView;

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public showVideoInCallResize(Z)V
    .locals 1

    const-string v0, "resize_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVideoCallQCIFFragment;->resizeAndChangeVideoLocation()V

    :cond_0
    return-void
.end method
