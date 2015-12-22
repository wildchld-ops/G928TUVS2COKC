.class public Lcom/android/incallui/SecTabletCallCardVoiceView;
.super Lcom/android/incallui/SecTabletCallCardView;
.source "SecTabletCallCardVoiceView.java"

# interfaces
.implements Lcom/android/incallui/SecCallCardUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletCallCardVoiceView$13;
    }
.end annotation


# static fields
.field private static final PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private final BLOCK_ICON:I

.field private final SOUND_ICON:I

.field private final VIEW_IMAGE:I

.field private final VIEW_PHOTORING:I

.field private final VIEW_VIDEO:I

.field private blockImg:Landroid/widget/ImageView;

.field private mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCallMessageStub:Landroid/view/ViewStub;

.field private mCallerInfoCardStub:Landroid/view/ViewStub;

.field private mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

.field private mCdnipNumberStub:Landroid/view/ViewStub;

.field private mCdnipView:Landroid/widget/TextView;

.field private mElapsedTimeTitle:Landroid/widget/TextView;

.field private mElapsedTimeTitleStub:Landroid/view/ViewStub;

.field private mHDIconImageSKT:Landroid/widget/ImageView;

.field private mHDIconStub:Landroid/view/ViewStub;

.field private mHDLayout:Landroid/view/View;

.field private mHDVoiceTextLGT:Landroid/widget/TextView;

.field protected mIncomingCallPopup:Landroid/view/ViewGroup;

.field protected mIncomingCallPopupMsg:Landroid/widget/TextView;

.field protected mIncomingCallPopupStub:Landroid/view/ViewStub;

.field private mIntCallNotiStub:Landroid/view/ViewStub;

.field private mIntCallNotiText:Landroid/widget/TextView;

.field private mIsShowingIncomingPhoto:Z

.field private mLinkedinIcon:Landroid/view/ViewStub;

.field private mMessageView:Landroid/widget/TextView;

.field private mPhoneNumberLocator:Landroid/widget/TextView;

.field private mPhoneNumberLocatorStub:Landroid/view/ViewStub;

.field private mPhotoring:Landroid/view/View;

.field private mPhotoringImage:Landroid/widget/ImageView;

.field private mPhotoringStub:Landroid/view/ViewStub;

.field private mPhotoringVideo:Landroid/widget/VideoView;

.field private mPhotoringVideoBG:Landroid/view/View;

.field private mPhotoringstate:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private mResumeButton:Landroid/widget/Button;

.field private mSilentRing:Z

.field private mSimIconLabel:Landroid/widget/ImageView;

.field private mSimIconLabelLarge:Landroid/widget/ImageView;

.field private mSimIconLabelLargeStub:Landroid/view/ViewStub;

.field private mSimIconLabelStub:Landroid/view/ViewStub;

.field private mSwitchBtn:Landroid/widget/Button;

.field private mVideoMute:Z

.field private mVideoPlaying:Z

.field private mVolteCameraStub:Landroid/view/ViewStub;

.field private mVolteCameraText:Landroid/widget/TextView;

.field private mplayer:Landroid/media/MediaPlayer;

.field private sndImg:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.phone.callsettings/photoring_reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallCardView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->VIEW_PHOTORING:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->VIEW_IMAGE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->VIEW_VIDEO:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->BLOCK_ICON:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->SOUND_ICON:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mplayer:Landroid/media/MediaPlayer;

    iput-boolean v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVideoMute:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVideoPlaying:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSilentRing:Z

    sget-object v0, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringstate:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/SecTabletCallCardVoiceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVideoMute:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/incallui/SecTabletCallCardVoiceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSilentRing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/SecTabletCallCardVoiceView;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/incallui/SecTabletCallCardVoiceView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mplayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/incallui/SecTabletCallCardVoiceView;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/SecTabletCallCardVoiceView;Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->colorFromBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method private animateIncomingPhotoForAnswer(Landroid/animation/AnimatorSet$Builder;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v6, "animateIncomingPhotoForAnswer"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v6, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v11, [F

    div-float v9, v0, v5

    aput v9, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v6, Landroid/view/animation/interpolator/SineEaseIn;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineEaseIn;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v11, [F

    div-float v9, v0, v5

    aput v9, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v6, Landroid/view/animation/interpolator/SineEaseIn;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineEaseIn;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v6, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v11, [F

    neg-float v9, v2

    aput v9, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v6, Landroid/view/animation/interpolator/SineEaseIn;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineEaseIn;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/incallui/SecTabletCallCardVoiceView$11;

    invoke-direct {v6, p0}, Lcom/android/incallui/SecTabletCallCardVoiceView$11;-><init>(Lcom/android/incallui/SecTabletCallCardVoiceView;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-void
.end method

.method private animateInfoCardForAnswer(Landroid/animation/AnimatorSet$Builder;)V
    .locals 6

    const-string v1, "animateInfoCardForAnswer"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private animateInfoContainerForAnswer(Landroid/animation/AnimatorSet$Builder;)V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "animateInfoContainerForAnswer"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallInfoContainer:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/SecTabletCallCardVoiceView$9;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecTabletCallCardVoiceView$9;-><init>(Lcom/android/incallui/SecTabletCallCardVoiceView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v2, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method private animateWaveEffectForAnswer(Landroid/animation/AnimatorSet$Builder;)V
    .locals 7

    const-string v2, "animateWaveEffectForAnswer"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    neg-float v6, v0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/SecTabletCallCardVoiceView$10;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecTabletCallCardVoiceView$10;-><init>(Lcom/android/incallui/SecTabletCallCardVoiceView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-void
.end method

.method private applyBlendedFilterIfNecessary()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SecTabletCallCardVoiceView$12;

    invoke-direct {v1, p0, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView$12;-><init>(Lcom/android/incallui/SecTabletCallCardVoiceView;Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecTabletCallCardVoiceView$12;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private arrangePhotoringLayout()V
    .locals 6

    const/16 v5, 0x8

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringstate:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    sget-object v4, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090104

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoring:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09007a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getBannerColorForCallState(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private arrangePrimaryLayout()V
    .locals 13

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "arrangePrimaryLayout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_2

    :cond_1
    iget-boolean v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIsShowingIncomingPhoto:Z

    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "support_wave_effect"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0135

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    :goto_1
    const/4 v3, 0x0

    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v10, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_e

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090077

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090077

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    const-string v10, "ctc_call_time_duration"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00d9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    const-string v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00da

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    :cond_4
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00e9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00d3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    :cond_5
    :goto_4
    const-string v10, "ctc_call_time_duration"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_16

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00ca

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00df

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f100146

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_7
    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v4, :cond_18

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0134

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    goto/16 :goto_1

    :cond_9
    const-string v10, "support_wave_effect"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00ce

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00cd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0133

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    goto/16 :goto_2

    :cond_c
    const-string v10, "ims_support_multimedia_caller_id"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringstate:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    sget-object v11, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    if-eq v10, v11, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00cd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00cc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v2, v10

    goto/16 :goto_2

    :cond_e
    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090078

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090078

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_f
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00d2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    goto/16 :goto_4

    :cond_10
    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_12

    const-string v10, "ims_support_multimedia_caller_id"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringstate:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    sget-object v11, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    if-ne v10, v11, :cond_12

    :cond_11
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00ea

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a012f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    goto/16 :goto_4

    :cond_12
    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_14

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00eb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0130

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    :cond_13
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00d3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSwitchBtn:Landroid/widget/Button;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSwitchBtn:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getVisibility()I

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00dc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    goto/16 :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00ee

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0131

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    :cond_15
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00d2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    goto/16 :goto_4

    :cond_16
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00b6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v7, v10

    goto/16 :goto_5

    :cond_17
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00df

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v7, v10

    goto/16 :goto_5

    :cond_18
    iget-object v10, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6
.end method

.method private colorFromBitmap(Landroid/graphics/Bitmap;)I
    .locals 3

    const/16 v0, 0x18

    const/16 v2, 0x18

    invoke-static {p1, v2}, Landroid/support/v7/graphics/Palette;->generate(Landroid/graphics/Bitmap;I)Landroid/support/v7/graphics/Palette;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private doPhotoringBlock()V
    .locals 15

    const v14, 0x7f0d02fc

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photoring_reject_number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "photoring_reject_number"

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "photoring_reject_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getPhotoringBlocked()I

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/SecTabletCallCardVoiceView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallPresenter;->setPhotoringBlocked(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->blockImg:Landroid/widget/ImageView;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7, v14, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const v0, 0x7f0d02fd

    invoke-static {v7, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0d0300

    invoke-static {v7, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const v0, 0x7f0d0301

    invoke-static {v7, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {v7, v14, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const v0, 0x7f0d02fd

    invoke-static {v7, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/SecTabletCallCardVoiceView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/SecTabletCallCardVoiceView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v9, v11, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setPhotoringBlocked(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->blockImg:Landroid/widget/ImageView;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPhotoringViewVisibility(I)V

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0d02fb

    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/SecTabletCallCardVoiceView;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v10

    :try_start_2
    const-string v0, "doPhotoringBlock exception"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_6
    :try_start_3
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0d02ff

    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_7
    throw v0

    :cond_8
    const v0, 0x7f0d02fb

    const/4 v1, 0x0

    :try_start_4
    invoke-static {v7, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private getBannerColorForCallState(I)I
    .locals 2

    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringstate:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    sget-object v1, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIsShowingIncomingPhoto:Z

    if-eqz v0, :cond_0

    const v0, 0x7f090104

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    :cond_1
    const v0, 0x7f09007b

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    const v0, 0x7f09007c

    goto :goto_0

    :cond_3
    const v0, 0x7f09007a

    goto :goto_0
.end method

.method private getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    if-nez p6, :cond_2

    move v2, v4

    :goto_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_2
    :pswitch_1
    return-object v0

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :pswitch_2
    if-eqz v2, :cond_3

    move-object v0, p5

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    if-ne p3, v5, :cond_4

    const v4, 0x7f0d013e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-ne p3, v4, :cond_0

    const v4, 0x7f0d013d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    const v4, 0x7f0d0138

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_4
    if-eqz v3, :cond_5

    const v6, 0x7f0d0166

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_5
    const v4, 0x7f0d0134

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_6
    if-eqz v2, :cond_6

    const v6, 0x7f0d0167

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const v4, 0x7f0d0136

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_7
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0d0137

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_8
    const v4, 0x7f0d0135

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canManageConferencePhoto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const v0, 0x7f0200ea

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    const v0, 0x7f0200ee

    goto :goto_0
.end method

.method private getConferenceString(Z)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canManageConferenceString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const v0, 0x7f0d0135

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const v0, 0x7f0d013a

    goto :goto_0
.end method

.method private inflatePhotoringView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoring:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideoBG:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->blockImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->sndImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setStopMusic(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideoBG:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->blockImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->sndImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private inflateSimIconLabel()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10033f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100340

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    return-void
.end method

.method private isConferenceMergeProcessing()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/SecTabletMultiPartyCallCardView;->IsMergeProcessing()Z

    move-result v0

    return v0
.end method

.method private manageSwitchToVideoCallMenu()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSwitchBtn:Landroid/widget/Button;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v3, 0x40000

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSwitchBtn:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSwitchBtn:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private needToShowCallerInfoCardView(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setIncomingPrimaryImage(Landroid/graphics/drawable/Drawable;Z)Z
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-static {v7, v12, v9}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v7, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v7, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v7, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    const/4 v10, 0x2

    invoke-virtual {v7, v10, v12}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v10, 0x4

    if-eq v7, v10, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v10, 0x5

    if-ne v7, v10, :cond_5

    :cond_3
    move v5, v8

    :goto_1
    if-eqz p2, :cond_6

    if-eqz v5, :cond_6

    if-eqz p1, :cond_6

    move v6, v8

    :goto_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v7, 0x12c

    if-lt v4, v7, :cond_0

    :cond_4
    :goto_3
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v7, p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->applyBlendedFilterIfNecessary()V

    move v9, v8

    goto :goto_0

    :cond_5
    move v5, v9

    goto :goto_1

    :cond_6
    move v6, v9

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setIncomingPrimaryImage: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private setPrimaryCallElapsedTimeTitle(Z)V
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v8, 0x7f0d02f6

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f0d02f5

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->getLineCtrlEvent(Lcom/android/incallui/Call;)B

    move-result v1

    :cond_0
    const/4 v8, 0x1

    if-ne v1, v8, :cond_3

    move-object v6, v4

    :goto_0
    iget-object v8, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00b6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x2

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_2
    iget-object v7, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    move-object v6, v3

    goto :goto_0

    :cond_4
    const/16 v7, 0x8

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00de

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00df

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2
.end method

.method private setPrimaryCallMoreMenu()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->needToShowMenu()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->needToShowVolumeButton()Z

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->showMenu(Z)V

    new-instance v0, Lcom/android/incallui/SecEventDialpadOptionButtons;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/SecEventDialpadOptionButtons;-><init>(ZZLcom/android/incallui/SecTabletInCallMenuPopup;)V

    sget-object v3, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v3, v0}, Lcom/android/incallui/SecEventBusManager;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private setupWaveEffectInternal(I)V
    .locals 17

    const/4 v1, 0x4

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v14, 0x1

    :goto_0
    const-string v13, "#ff4fa630"

    const-string v12, "#664fa630"

    const-string v11, "#fffafafa"

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const-string v1, "create WaveEffect"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectHeight:I

    if-eqz v14, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-eqz v14, :cond_3

    const/4 v6, 0x0

    :goto_2
    const-string v7, "#fffafafa"

    if-eqz v14, :cond_4

    sget-object v8, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    :goto_3
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setAutoStopOnWindowFocusChanged(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setWaveSineEffect(Z)V

    return-void

    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    const-string v5, "#ff4fa630"

    goto :goto_1

    :cond_3
    const-string v6, "#664fa630"

    goto :goto_2

    :cond_4
    sget-object v8, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->CENTER:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    goto :goto_3
.end method

.method private showInternetCallLabel(Z)V
    .locals 0

    return-void
.end method

.method private startAnswerAnimation()V
    .locals 8

    const/4 v7, 0x1

    const-string v4, "animateForAnswerCall"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mAnimationRunning:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v7, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mAnimationRunning:Z

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    aput v6, v4, v5

    aput v2, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/SecTabletCallCardVoiceView$7;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecTabletCallCardVoiceView$7;-><init>(Lcom/android/incallui/SecTabletCallCardVoiceView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->animateIncomingPhotoForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->animateInfoContainerForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->animateWaveEffectForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->animateInfoCardForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/SecTabletCallCardVoiceView$8;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecTabletCallCardVoiceView$8;-><init>(Lcom/android/incallui/SecTabletCallCardVoiceView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private switchToVideoCallClicked()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    return-void
.end method

.method private updateBgColorForCallState(I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eq v2, p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    const v1, 0x7f0201b0

    const v0, 0x7f0201b3

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0201b1

    const v0, 0x7f0201b4

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0201b2

    const v0, 0x7f0201b5

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x8

    iput-object p2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->manageCallEndTimeBlink(I)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->removeMessageForBlinkTime()V

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object p2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mLastestCallTime:Ljava/lang/String;

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->hasMessageForBlinkTime()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "not update stateLabel for blink call time"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->hasMessageForBlinkTime()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "not update stateLabel for blink call time"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateHDIcon(I)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "display_hd_icon"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDLayout:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSKTSIM()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDIconImageSKT:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDIconImageSKT:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isLGTSIM()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDVoiceTextLGT:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDVoiceTextLGT:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3
.end method

.method private updateIncomingPopupMsg(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingCallPopupMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingCallPopupMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v2, "updateIncomingPopupMsg"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method private updatePanelForCallState(I)V
    .locals 4

    const/4 v2, 0x2

    if-eq v2, p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :cond_3
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updatePhotoViewForCallState(I)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

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

    iget v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mOldCallState:I

    if-eq v2, v4, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_3
    iget v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mOldCallState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    :cond_4
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mOldCallState:I

    if-eq v2, p1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->arrangePrimaryLayout()V

    goto :goto_0
.end method

.method private updateWaveEffect(I)V
    .locals 2

    iget v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectWidth:I

    if-lez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updateWaveEffectForCallState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/incallui/SecTabletCallCardVoiceView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/SecTabletCallCardVoiceView$1;-><init>(Lcom/android/incallui/SecTabletCallCardVoiceView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getAppearanceAnimator()Landroid/animation/AnimatorSet;
    .locals 1

    const-string v0, "getAppearanceAnimator..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const v0, 0x7f120001

    return v0
.end method

.method protected inflateRecordInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mRecordInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mRecordIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mRecordTime:Landroid/widget/Chronometer;

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040137

    const/4 v4, 0x1

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPulseAnimation:Landroid/view/animation/Animation;

    const v3, 0x7f10017b

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIndicatorArea:Landroid/view/ViewGroup;

    const v3, 0x7f1000d6

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    const v3, 0x7f1000d4

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    const v3, 0x7f10008e

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mNumberLabel:Landroid/widget/TextView;

    const v3, 0x7f100137

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    const v3, 0x7f10003b

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoto:Landroid/widget/ImageView;

    const v3, 0x7f1001a0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    const v3, 0x7f1000d1

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateIcon:Landroid/widget/ImageView;

    const v3, 0x7f1000d3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateLabel:Landroid/widget/TextView;

    const v3, 0x7f1000d5

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallNumberAndLabel:Landroid/view/View;

    const v3, 0x7f1000d7

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTime:Landroid/widget/TextView;

    const v3, 0x7f10026a

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryContainer:Landroid/view/View;

    const v3, 0x7f100038

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallCardContainer:Landroid/view/View;

    const v3, 0x7f1000cf

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v3, 0x7f100139

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateContainer:Landroid/view/View;

    const v3, 0x7f10017c

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallInfoContainer:Landroid/view/View;

    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f1000b8

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    const v3, 0x7f1000b9

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocator:Landroid/widget/TextView;

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const v3, 0x7f1001a5

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPresenceIcon:Landroid/widget/ImageView;

    const v3, 0x7f10017d

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mResumeButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mResumeButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "show_switch_icon_in_button"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f1001a3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSwitchBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSwitchBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v3, 0x7f10013c

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPeriodMarkContainer:Landroid/view/View;

    new-array v3, v6, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPeriodMarkList:[Landroid/widget/ImageView;

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const v3, 0x7f1001ab

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingCallPopupStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingCallPopupStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingCallPopupStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f100092

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingCallPopup:Landroid/view/ViewGroup;

    const v3, 0x7f100093

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingCallPopupMsg:Landroid/widget/TextView;

    :cond_3
    const-string v3, "feature_multisim_display_sim_icon"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->inflateSimIconLabel()V

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-nez v3, :cond_5

    const v3, 0x7f1001a1

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f100094

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTimeTitle:Landroid/widget/TextView;

    :cond_6
    const-string v3, "ims_support_multimedia_caller_id"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->inflatePhotoringView()V

    :cond_7
    const-string v3, "cnap_supplementary_service"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "ims_call_message"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallMessageStub:Landroid/view/ViewStub;

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10014d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallMessageStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_9
    const-string v3, "cdnip_supplementary_service"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1001a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipNumberStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipNumberStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_a
    const-string v3, "display_hd_icon"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const v3, 0x7f10013a

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDIconStub:Landroid/view/ViewStub;

    if-nez v3, :cond_b

    const v3, 0x7f10013b

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDIconStub:Landroid/view/ViewStub;

    :cond_b
    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDIconStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDIconStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "feature_kor_open"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSKTSIM()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_c
    const v3, 0x7f1001c0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDIconImageSKT:Landroid/widget/ImageView;

    :cond_d
    :goto_1
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "mpcs_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVolteCameraStub:Landroid/view/ViewStub;

    if-nez v3, :cond_f

    const v3, 0x7f10022b

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVolteCameraStub:Landroid/view/ViewStub;

    :cond_f
    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVolteCameraStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVolteCameraStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f100326

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVolteCameraText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVolteCameraText:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    const-string v3, "linkedin_integration"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const v3, 0x7f100270

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mLinkedinIcon:Landroid/view/ViewStub;

    :cond_11
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->initVolumePanelLayout()V

    return-void

    :cond_12
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "feature_kor_open"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isLGTSIM()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_13
    const v3, 0x7f1001c1

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mHDVoiceTextLGT:Landroid/widget/TextView;

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x7f10013d
        0x7f10013e
        0x7f10013f
    .end array-data
.end method

.method manageElapsedTimeTitle(I)V
    .locals 5

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manageElapsedTimeTitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v4, p1, :cond_0

    if-ne v3, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryCallElapsedTimeTitle(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-eq v0, p1, :cond_2

    const/16 v0, 0x8

    if-eq v0, p1, :cond_2

    if-eq v3, p1, :cond_2

    if-ne v4, p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryCallElapsedTimeTitle(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryCallElapsedTimeTitle(Z)V

    goto :goto_0
.end method

.method managePhoneNumberLocator(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "managePhoneNumberLocator, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public needToShowMenu()Z
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->needToShowMenu()Z

    move-result v0

    return v0
.end method

.method public onAnswerTriggered(Lcom/android/incallui/SecEventAnswerTriggered;)V
    .locals 2
    .annotation runtime Lcom/android/incallui/SecEventBus;
    .end annotation

    invoke-virtual {p1}, Lcom/android/incallui/SecEventAnswerTriggered;->getState()Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/SecEventAnswerTriggered$STATE;->TRIGGERED:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->startAnswerAnimation()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->onAttachedToWindow()V

    sget-object v0, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecEventBusManager;->register(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryCallMoreMenu()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

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

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletCallCardView;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "onClick video View was clicked"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video playing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVideoPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVideoPlaying:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    iput-boolean v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVideoPlaying:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    iput-boolean v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVideoPlaying:Z

    goto :goto_0

    :sswitch_2
    const-string v2, "onClick switch video Button was clicked"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->switchToVideoCallClicked()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->doPhotoringBlock()V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVideoMute:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSilentRing:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/TelecomAdapter;->silentRinger()V

    iput-boolean v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSilentRing:Z

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v7, v7}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput-boolean v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVideoMute:Z

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->sndImg:Landroid/widget/ImageView;

    const v3, 0x7f02004a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v6, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput-boolean v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVideoMute:Z

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->sndImg:Landroid/widget/ImageView;

    const v3, 0x7f020049

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :sswitch_5
    if-eqz v0, :cond_0

    const-string v2, "onClick camera Text Button was clicked"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->foreceUpdateModifyRequestDummyType()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000bc -> :sswitch_1
        0x7f1000be -> :sswitch_3
        0x7f1000bf -> :sswitch_4
        0x7f10017d -> :sswitch_0
        0x7f1001a3 -> :sswitch_2
        0x7f100326 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    sget-object v0, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecEventBusManager;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallCardView;->onFinishInflate()V

    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 4

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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetAnswerCallAnimator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updatePanelForCallState(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updateWaveEffect(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->arrangePrimaryLayout()V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v1, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto :goto_0
.end method

.method public resetRevealAnimator()V
    .locals 9

    const/4 v8, 0x0

    sget-boolean v5, Lcom/android/incallui/SecTabletCallCardVoiceView;->sIsWindowRevealed:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "resetRevealAnimator"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    invoke-static {v4, v8, v8, v5, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    sput-boolean v8, Lcom/android/incallui/SecTabletCallCardVoiceView;->sIsWindowRevealed:Z

    goto :goto_0
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mAnimationRunning:Z

    if-eqz v3, :cond_1

    new-instance v11, Lcom/android/incallui/SecTabletCallCardView$CallStateCache;

    invoke-direct {v11}, Lcom/android/incallui/SecTabletCallCardView$CallStateCache;-><init>()V

    move/from16 v0, p1

    iput v0, v11, Lcom/android/incallui/SecTabletCallCardView$CallStateCache;->state:I

    move/from16 v0, p2

    iput v0, v11, Lcom/android/incallui/SecTabletCallCardView$CallStateCache;->videoState:I

    move/from16 v0, p3

    iput v0, v11, Lcom/android/incallui/SecTabletCallCardView$CallStateCache;->sessionModificationState:I

    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/android/incallui/SecTabletCallCardView$CallStateCache;->disconnectCause:Landroid/telecom/DisconnectCause;

    move-object/from16 v0, p5

    iput-object v0, v11, Lcom/android/incallui/SecTabletCallCardView$CallStateCache;->connectionLabel:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, v11, Lcom/android/incallui/SecTabletCallCardView$CallStateCache;->connectionIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p7

    iput-object v0, v11, Lcom/android/incallui/SecTabletCallCardView$CallStateCache;->gatewayNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/incallui/SecTabletCallCardVoiceView;->pendCallStateChanging(Lcom/android/incallui/SecTabletCallCardView$CallStateCache;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisconnectCause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Landroid/telecom/DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gateway "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->managePhoneNumberLocator(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->isConferenceMergeProcessing()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    const-string v3, "setCallState: current state is multi-party call"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->manageElapsedTimeTitle(I)V

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mOldCallState:I

    move/from16 v0, p1

    if-ne v3, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    const-string v3, "extended_restrict_international_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "feature_kor_open"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/InCallUtils;->isIntIncomingCall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_14

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updateIntCalNoti(Z)V

    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updatePanelForCallState(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updateBgColorForCallState(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updatePhotoViewForCallState(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updateWaveEffect(I)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v12, v2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updatePeriodMark(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryCallMoreMenu()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setCallerInfoCardView()V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->manageSwitchToVideoCallMenu()V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updateHDIcon(I)V

    const-string v3, "ims_call_message"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v13

    if-eqz v13, :cond_b

    iget-object v3, v13, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_15

    :cond_a
    iget-object v3, v13, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryMessage(Ljava/lang/String;)V

    :cond_b
    :goto_3
    const-string v3, "cdnip_supplementary_service"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v13

    if-eqz v13, :cond_c

    iget-object v3, v13, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryCdnip(Ljava/lang/String;)V

    :cond_c
    const-string v3, "att_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "tmo_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "mpcs_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVolteCameraStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_e

    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVolteCameraText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    :goto_4
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/InCallUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v14}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_f
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v3, " "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "-"

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {v15}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_11
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryContainer:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryContainer:Landroid/view/View;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_13
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/SecTabletCallCardVoiceView;->mOldCallState:I

    goto/16 :goto_0

    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_15
    iget-object v3, v13, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mVolteCameraText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public setCallerInfoCardView()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallerInfoCardView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->needToShowCallerInfoCardView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

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

    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v2, :cond_0

    const-string v2, "- queryCompleted"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardStub:Landroid/view/ViewStub;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1001a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100153

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v1, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->update(Landroid/content/Context;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v2, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setPhotoringViewVisibility(I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoring:Landroid/view/View;

    and-int/lit8 v0, p1, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringImage:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    and-int/lit8 v0, p1, 0x4

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->blockImg:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x8

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->sndImg:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideoBG:Landroid/view/View;

    and-int/lit8 v3, p1, 0x4

    if-ne v3, v5, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method public setPresenceIcon(I)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPresenceIcon MODE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/incallui/ContactAgentUtils;->getPresenceIcon(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11

    const-string v8, "Setting primary call"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->isConferenceMergeProcessing()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const-string v8, "setPrimary: current state is multi-party call"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p6, :cond_3

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p6

    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_3
    if-eqz p4, :cond_9

    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const/4 p3, 0x0

    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryLabel(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/incallui/SecTabletCallCardVoiceView;->showInternetCallLabel(Z)V

    invoke-virtual {p0, v6, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setCallerInfoCardView()V

    const-string v8, "cnap_supplementary_service"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz p6, :cond_5

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryMessage(Ljava/lang/String;)V

    :cond_5
    const-string v8, "cdnip_supplementary_service"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz p6, :cond_6

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimaryCdnip(Ljava/lang/String;)V

    :cond_6
    const-string v8, "feature_multisim_display_sim_icon"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPrimarySimIconLabel(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updateBgColorForCallState(I)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->needToShowVolumeButton()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/incallui/SecTabletCallCardVoiceView;->showVolumeButton(Z)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-static {v8}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "ims_support_multimedia_caller_id"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState()V

    goto/16 :goto_0

    :cond_9
    if-eqz p6, :cond_4

    move-object/from16 v0, p6

    iget-boolean v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v8, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v8, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object p2, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    const/4 p3, 0x0

    :cond_a
    iget-object v8, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4

    iget-object v6, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v8, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    iput-object p2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mEndCallTime:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mLastestCallTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setTTS(JLandroid/widget/TextView;)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecDialpadUi()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->getSecDialpadUi()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/SecDialpadUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mElapsedTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryCdnip(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f1001a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipNumberStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipNumberStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f100171

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipNumberStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCdnipNumberStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-static {v5, v8, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->isConferenceMergeProcessing()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string v5, "setPrimaryImage: current state is multi-party call"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setIncomingPrimaryImage(Landroid/graphics/drawable/Drawable;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIsShowingIncomingPhoto:Z

    move v4, p2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v7, :cond_6

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v8}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    const v8, 0x7f0201cc

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mResumeButton:Landroid/widget/Button;

    if-eqz v3, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    if-eqz v4, :cond_a

    iget-boolean v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIsShowingIncomingPhoto:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x4

    :goto_4
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingPhoto:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIsShowingIncomingPhoto:Z

    if-eqz v5, :cond_b

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->arrangePrimaryLayout()V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "ims_support_multimedia_caller_id"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState()V

    :cond_5
    const-string v5, "linkedin_integration"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mLinkedinIcon:Landroid/view/ViewStub;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-boolean v5, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedin:Z

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIsShowingIncomingPhoto:Z

    if-nez v5, :cond_c

    if-eqz v4, :cond_c

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mLinkedinIcon:Landroid/view/ViewStub;

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v3, v6

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a00c5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoContainer:Landroid/view/View;

    const v8, 0x7f0201c8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_8
    move v5, v7

    goto/16 :goto_3

    :cond_9
    move v5, v6

    goto/16 :goto_4

    :cond_a
    move v5, v7

    goto/16 :goto_4

    :cond_b
    move v5, v7

    goto/16 :goto_5

    :cond_c
    iget-object v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mLinkedinIcon:Landroid/view/ViewStub;

    invoke-virtual {v5, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryMessage(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallMessageStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallMessageStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallMessageStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhoneNumberLocator:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimarySimIconLabel(I)V
    .locals 3

    const/4 v2, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabel:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showIncomingPopupForSecondCall(III)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingCallPopup:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/incallui/Call;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showIncomingPopupForSecondCall mFirstPhoneType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v1, v6, :cond_4

    if-ne p2, v6, :cond_4

    const v2, 0x7f0d01ef

    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updateIncomingPopupMsg(I)V

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingCallPopup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eq p2, v5, :cond_5

    if-eq p2, v7, :cond_5

    if-eq p2, v8, :cond_5

    const/4 v2, 0x5

    if-eq p2, v2, :cond_5

    if-ne v1, v5, :cond_3

    :cond_5
    const v2, 0x7f0d01ee

    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletCallCardVoiceView;->updateIncomingPopupMsg(I)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    if-ne p1, v8, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingCallPopup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIncomingCallPopup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMenu(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletCallCardView;->showMenu(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public updateIntCalNoti(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f10026f

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIntCallNotiStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIntCallNotiStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    const v0, 0x7f100201

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIntCallNotiText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIntCallNotiText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIntCallNotiText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIntCallNotiStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mIntCallNotiStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
    .locals 9

    const v8, 0x7f0d02fe

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePhotoringState - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoring:Landroid/view/View;

    if-nez v4, :cond_1

    const-string v4, "photoring view is null"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringstate:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->arrangePhotoringLayout()V

    sget-object v4, Lcom/android/incallui/SecTabletCallCardVoiceView$13;->$SwitchMap$com$android$services$telephony$common$PhotoringCommon$PhotoringMTState:[I

    invoke-virtual {p1}, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_1
    :pswitch_1
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPhotoringViewVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->blockImg:Landroid/widget/ImageView;

    if-nez p2, :cond_4

    const v4, 0x7f020047

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    const v5, 0x7f0d0302

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-static {v4, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    const v4, 0x7f020048

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "photoring_content"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "photoring content : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v4, "image content"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPhotoringViewVisibility(I)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "video content"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v4, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const/16 v4, 0x1d

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPhotoringViewVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->sndImg:Landroid/widget/ImageView;

    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    new-instance v5, Lcom/android/incallui/SecTabletCallCardVoiceView$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecTabletCallCardVoiceView$2;-><init>(Lcom/android/incallui/SecTabletCallCardVoiceView;)V

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    new-instance v5, Lcom/android/incallui/SecTabletCallCardVoiceView$3;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecTabletCallCardVoiceView$3;-><init>(Lcom/android/incallui/SecTabletCallCardVoiceView;)V

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPhotoringViewVisibility(I)V

    goto :goto_3

    :pswitch_3
    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_8
    iget-object v4, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v4, v7}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iput-object v7, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setPhotoringViewVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateWaveEffectForCallState(I)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const-string v3, "support_wave_effect"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->needToStartEffect(I)Z

    move-result v1

    iget v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mOldCallState:I

    if-eq v3, v5, :cond_2

    iget v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mOldCallState:I

    if-ne v3, v6, :cond_3

    :cond_2
    if-nez v1, :cond_3

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->stopWaveEffect(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v3, :cond_4

    const v3, 0x7f10018a

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallCardVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eq p1, v5, :cond_5

    if-ne p1, v6, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    :cond_6
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-nez v3, :cond_7

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setupWaveEffectInternal(I)V

    :cond_7
    invoke-super {p0, p1}, Lcom/android/incallui/SecTabletCallCardView;->updateWaveEffectForCallState(I)V

    goto :goto_0
.end method
