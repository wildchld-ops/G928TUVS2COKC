.class public Lcom/android/incallui/SecVoiceCallCardFragment;
.super Lcom/android/incallui/SecCallCardFragment;
.source "SecVoiceCallCardFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/incallui/SecCallCardUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecVoiceCallCardFragment$18;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/SecCallCardFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/incallui/SecCallCardUi;"
    }
.end annotation


# static fields
.field private static final FROM:[Ljava/lang/String;

.field private static final PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private final BLOCK_ICON:I

.field private final PHONE_NUMBER_SIZE_OVER_SEVENTEEN:I

.field private final PHONE_NUMBER_SIZE_OVER_TWENTY:I

.field private final SOUND_ICON:I

.field private final VIEW_IMAGE:I

.field private final VIEW_PHOTORING:I

.field private final VIEW_VIDEO:I

.field private blockImg:Landroid/widget/ImageView;

.field private gUtil:Lcom/android/incallui/secutils/GifUtil;

.field private isCallPlus:Z

.field private mAMStub:Landroid/view/ViewStub;

.field private mAddCallMenuStub:Landroid/view/ViewStub;

.field private mAddCallMenuText:Landroid/widget/TextView;

.field private mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBackground:Ljava/lang/String;

.field private mCallForwardingNumber:Ljava/lang/String;

.field private mCallForwardingPanel:Landroid/widget/TextView;

.field private mCallForwardingPanelStub:Landroid/view/ViewStub;

.field private mCallMessageStub:Landroid/view/ViewStub;

.field private mCallPlusImportance:Landroid/widget/ImageView;

.field private mCallPlusImportanceStub:Landroid/view/ViewStub;

.field private mCallPlusSubject:Landroid/widget/TextView;

.field private mCallPlusSubjectLayout:Landroid/view/View;

.field private mCallerInfoCardStub:Landroid/view/ViewStub;

.field private mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

.field private mCardSubscriber:Landroid/widget/TextView;

.field private mCardSubscriberStub:Landroid/view/ViewStub;

.field private mCdmaMultipartyBtn:Landroid/widget/TextView;

.field private mCdmaMultipartyStub:Landroid/view/ViewStub;

.field private mCdnipNumberStub:Landroid/view/ViewStub;

.field private mCdnipView:Landroid/widget/TextView;

.field private mCityId:Landroid/widget/TextView;

.field private mColorAnimatorSet:Landroid/animation/AnimatorSet;

.field private mConferenceInfoBanner:Landroid/view/ViewStub;

.field private mConferenceInfoText:Landroid/widget/TextView;

.field private mContentURI:Landroid/net/Uri;

.field private mDimPanel:Landroid/view/View;

.field private mElapsedTimeTitle:Landroid/widget/TextView;

.field private mElapsedTimeTitleStub:Landroid/view/ViewStub;

.field private mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

.field private mEpdgNotifyInfoText:Landroid/widget/TextView;

.field private mEriInfoStubMkey:Landroid/view/ViewStub;

.field private mEriInfoText:Landroid/widget/TextView;

.field private mEriInfoTextMkey:Landroid/widget/TextView;

.field private mExtraVolumeIcon:Landroid/widget/ToggleButton;

.field private mExtraVolumeIconStub:Landroid/view/ViewStub;

.field private mHDIconImageCHN:Landroid/widget/ImageView;

.field private mHDIconImageCommon:Landroid/widget/ImageView;

.field private mHDIconImageSKT:Landroid/widget/ImageView;

.field private mHDIconStub:Landroid/view/ViewStub;

.field private mHDLayout:Landroid/view/View;

.field private mHDVoiceTextLGT:Landroid/widget/TextView;

.field protected mHighQualitySoundText:Landroid/widget/TextView;

.field private mImportance:I

.field protected mIncomingCallPopup:Landroid/view/ViewGroup;

.field protected mIncomingCallPopupMsg:Landroid/widget/TextView;

.field protected mIncomingCallPopupStub:Landroid/view/ViewStub;

.field private mIntCallNotiStub:Landroid/view/ViewStub;

.field private mIntCallNotiText:Landroid/widget/TextView;

.field private mIsAnswerProcessing:Z

.field private mIsShowingIncomingPhoto:Z

.field private mLocation:Ljava/lang/String;

.field private mLocation_map:Ljava/lang/String;

.field private mMessageView:Landroid/widget/TextView;

.field private mModifyStateInfoBanner:Landroid/view/ViewStub;

.field private mModifyStateInfoText:Landroid/widget/TextView;

.field private mOnholdLayoutForwardSlash:Landroid/widget/TextView;

.field private mOnholdLayoutText:Landroid/widget/TextView;

.field private mOnholdStub:Landroid/view/ViewStub;

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

.field private mShowConferenceBanner:Z

.field private mSilentRing:Z

.field private mSimIconLabel:Landroid/widget/ImageView;

.field private mSimIconLabelLarge:Landroid/widget/ImageView;

.field private mSimIconLabelLargeStub:Landroid/view/ViewStub;

.field private mSimIconLabelStub:Landroid/view/ViewStub;

.field private mSpamBar:Landroid/view/View;

.field private mSpamCallEndStub:Landroid/view/ViewStub;

.field private mSpamCallStub:Landroid/view/ViewStub;

.field private mSpamNumber:Ljava/lang/String;

.field private mSpamReject:Landroid/widget/ImageView;

.field private mSpamRejectTextView:Landroid/widget/TextView;

.field private mSpamRejectView:Landroid/view/View;

.field private mSpamReport:Landroid/widget/ImageView;

.field private mSpamReportTextView:Landroid/widget/TextView;

.field private mSpamReportView:Landroid/view/View;

.field private mSpamText:Landroid/widget/TextView;

.field private mSpamTextForTalkBack:Landroid/widget/TextView;

.field private mSubject:Ljava/lang/String;

.field private mSwitchBtn:Landroid/widget/Button;

.field private mUHDIconImage:Landroid/widget/ImageView;

.field private mUHDIconStub:Landroid/view/ViewStub;

.field private mUHDLayout:Landroid/view/View;

.field private mUHDVoiceText:Landroid/widget/TextView;

.field private mVideoCallMenuStub:Landroid/view/ViewStub;

.field private mVideoCallMenuText:Landroid/widget/TextView;

.field private mVideoMute:Z

.field private mVideoPlaying:Z

.field private mVoWiFiIcon:Landroid/widget/ImageView;

.field private mVoWiFiIconStub:Landroid/view/ViewStub;

.field private mVolteCameraStub:Landroid/view/ViewStub;

.field private mVolteCameraText:Landroid/widget/TextView;

.field private mplayer:Landroid/media/MediaPlayer;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private sndImg:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.android.phone.callsettings/photoring_reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/SecVoiceCallCardFragment;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "reject_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "reject_match"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/SecVoiceCallCardFragment;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecCallCardFragment;-><init>()V

    new-instance v0, Lcom/android/incallui/SecVoiceCallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$1;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    iput v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->VIEW_PHOTORING:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->VIEW_IMAGE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->VIEW_VIDEO:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->BLOCK_ICON:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->SOUND_ICON:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->PHONE_NUMBER_SIZE_OVER_SEVENTEEN:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->PHONE_NUMBER_SIZE_OVER_TWENTY:I

    iput-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mImportance:I

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSubject:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation_map:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mBackground:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mplayer:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->gUtil:Lcom/android/incallui/secutils/GifUtil;

    iput-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoMute:Z

    iput-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoPlaying:Z

    iput-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSilentRing:Z

    sget-object v0, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringstate:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamNumber:Ljava/lang/String;

    const-string v0, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mContentURI:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mShowConferenceBanner:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecVoiceCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->applyBlendedFilterIfNecessary()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/SecVoiceCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePrimaryLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->colorFromBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/SecVoiceCallCardFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoMute:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/incallui/SecVoiceCallCardFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSilentRing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/SecVoiceCallCardFragment;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mplayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/incallui/SecVoiceCallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->setViewStateBeforeOutgoingAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/SecVoiceCallCardFragment;)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getRevealViewsAnimator()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecVoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method private addAutoRejectNumber()J
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamNumber:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamNumber:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecVoiceCallCardFragment;->isUnknownNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamNumber:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/incallui/SecVoiceCallCardFragment;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    const-string v6, "addAutoRejectNumber number is null or unknown number"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    :cond_1
    :goto_0
    return-wide v2

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAutoRejectNumber number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "reject_number"

    iget-object v7, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamNumber:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "reject_checked"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "reject_match"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mContentURI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    const v7, 0x7f0d03a9

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-wide/16 v2, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_1
.end method

.method private animateForChangeColor(IIII)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p3, p4, :cond_0

    if-ne p1, p2, :cond_0

    const-string v3, "animateForChangeColor: skip"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "animateForChangeColor: already running"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isClearCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    :goto_1
    if-eq p3, p4, :cond_3

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/incallui/SecVoiceCallCardFragment$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$5;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateForChangeColor: before - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", after -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_4
    if-eq p1, p2, :cond_2

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/SecVoiceCallCardFragment$4;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$4;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateForChangeColor: before - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", after -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mColorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_1
.end method

.method private animateIncomingPhotoForAnswer(Landroid/animation/AnimatorSet$Builder;)V
    .locals 14

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00c5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v9

    if-eqz v9, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00c6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    div-float v13, v2, v8

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v9, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    div-float v13, v2, v8

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v9, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00d5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0117

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    :cond_3
    int-to-float v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float v7, v9, v10

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00f6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v1, v9

    const/4 v0, 0x0

    const-string v9, "zero_mass_project"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a048c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    int-to-float v0, v9

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00ca

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    add-float/2addr v0, v9

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00c5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v0, v9

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00f6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    add-float/2addr v0, v9

    sub-float v4, v0, v7

    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v4, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v9, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v9}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/android/incallui/SecVoiceCallCardFragment$16;

    invoke-direct {v9, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$16;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v1, v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    goto :goto_1
.end method

.method private animateInfoCardForAnswer(Landroid/animation/AnimatorSet$Builder;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private animateInfoContainerForAnswer(Landroid/animation/AnimatorSet$Builder;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00d5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0117

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00f6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v9, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00cb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v2, v6

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v6, v0, v2

    div-int/lit8 v1, v6, 0x2

    const-string v6, "zero_mass_project"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsShowingIncomingPhoto:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a048c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    :cond_4
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v6, 0xa

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v8

    const/4 v7, 0x1

    aput v1, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v6, Lcom/android/incallui/SecVoiceCallCardFragment$13;

    invoke-direct {v6, p0, v3}, Lcom/android/incallui/SecVoiceCallCardFragment$13;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Lcom/android/incallui/SecVoiceCallCardFragment$14;

    invoke-direct {v6, p0, v3}, Lcom/android/incallui/SecVoiceCallCardFragment$14;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsShowingIncomingPhoto:Z

    if-eqz v6, :cond_5

    new-instance v6, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v6}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_1
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    :cond_5
    new-instance v6, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method private animateWaveEffectForAnswer(Landroid/animation/AnimatorSet$Builder;)V
    .locals 7

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    neg-float v6, v0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/SecVoiceCallCardFragment$15;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$15;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/view/animation/interpolator/SineInOut60;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized applyBlendedFilterIfNecessary()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SecVoiceCallCardFragment$17;

    invoke-direct {v1, p0, v0}, Lcom/android/incallui/SecVoiceCallCardFragment$17;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecVoiceCallCardFragment$17;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private arrangeForMenuLayout(Lcom/android/incallui/Call;)V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private arrangePhotoringLayout()V
    .locals 6

    const/16 v5, 0x8

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringstate:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    sget-object v4, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090104

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoring:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

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
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_5

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    :cond_4
    const-string v3, "not update callend in hold status"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->getBannerColorForCallState(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private arrangePrimaryLayout()V
    .locals 23

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v20

    if-nez v20, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "arrangePrimaryLayout: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsAnswerProcessing:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    const-string v20, "arrangePrimaryLayout: mIsAnswerProcessing"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/VideoView;->getVisibility()I

    move-result v20

    if-nez v20, :cond_f

    :cond_5
    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsShowingIncomingPhoto:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    if-eqz v19, :cond_11

    :cond_6
    const/16 v20, 0xc

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a011a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v7, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocator:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocator:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getVisibility()I

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocator:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocator:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v7, v10

    :cond_7
    const/4 v9, 0x0

    :goto_3
    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v20, "ims_callplus"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusSubject:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090077

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090077

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTimeTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTimeTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getVisibility()I

    move-result v20

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangeForMenuLayout(Lcom/android/incallui/Call;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a00d9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v16

    const-string v20, "feature_multisim"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a00da

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    :cond_a
    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v20

    if-eqz v20, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a00e9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    :cond_b
    :goto_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v20

    if-eqz v20, :cond_c

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a011b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getExtraVolumeLocation()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a00d1

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v20

    const v21, 0x7f100146

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_e
    iput v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v11, :cond_1b

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v20, "support_spam_call"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a00cf

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v7, v0

    goto/16 :goto_2

    :cond_11
    const/16 v20, 0xd

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    :cond_12
    const-string v20, "zero_mass_project"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-nez v20, :cond_13

    const/16 v20, 0xa

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a048c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v8, v0

    goto/16 :goto_3

    :cond_13
    const/16 v20, 0xd

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090078

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090078

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a00ea

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a012f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a00bc

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-nez v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a00eb

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;FZ)F

    move-result v17

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v20

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a0130

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;FZ)F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a00bd

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_17
    const-string v20, "support_spam_call"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a00eb

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;FZ)F

    move-result v15

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getisSpam()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0480

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0480

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getVisibility()I

    move-result v20

    if-nez v20, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a00dc

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a00ee

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;FZ)F

    move-result v17

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v20

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a0131

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;FZ)F

    move-result v17

    :cond_1a
    const-string v20, "support_spam_call"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a00eb

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryNameSize(Ljava/lang/String;FZ)F

    move-result v15

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getisSpam()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0480

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0480

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6
.end method

.method private cdmaMultipartyButtonClicked()V
    .locals 7

    const/16 v6, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->getSubId()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Swap Clicked, callId =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Merge Clicked, callId =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    const-string v8, "checkAlreadyInUse : string is null"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v7

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v8, "checkAlreadyInUse : cursor is null"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v7

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    move-object v5, p1

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAlreadyInUse : MATCH_EQUAL, rejectNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_3
    if-eq v3, v9, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v7, "NumberFormatException"

    invoke-static {p0, v7, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    throw v7
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
    .locals 19

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v16

    const/16 v17, 0x0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v17

    :cond_0
    const/4 v8, 0x0

    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photoring_reject_number=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "photoring_reject_number"

    invoke-virtual {v12, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "photoring_reject_checked"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/InCallPresenter;->getPhotoringBlocked()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/SecVoiceCallCardFragment;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->setPhotoringBlocked(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->blockImg:Landroid/widget/ImageView;

    const v3, 0x7f020047

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0d02fc

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const v2, 0x7f0d02fd

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0d0300

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const v2, 0x7f0d0301

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const v2, 0x7f0d02fc

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const v2, 0x7f0d02fd

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/SecVoiceCallCardFragment;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_7

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/SecVoiceCallCardFragment;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v12, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->setPhotoringBlocked(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->blockImg:Landroid/widget/ImageView;

    const v3, 0x7f020048

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPhotoringViewVisibility(I)V

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f0d02fb

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_7
    :try_start_1
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/SecVoiceCallCardFragment;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_2
    const-string v2, "doPhotoringBlock exception"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_8
    :try_start_3
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f0d02ff

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_9
    throw v2

    :cond_a
    const v2, 0x7f0d02fb

    const/4 v3, 0x0

    :try_start_4
    invoke-static {v10, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private extraVolumeClicked(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleExtraVolume()V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateExtraVolumeButton(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string v5, "_id desc"

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/SecVoiceCallCardFragment;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getBannerColorForCallState(I)I
    .locals 2

    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringstate:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    sget-object v1, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsShowingIncomingPhoto:Z

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
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

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
    const/4 v6, 0x2

    if-ne p3, v6, :cond_4

    const v4, 0x7f0d013e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-ne p3, v4, :cond_5

    const v4, 0x7f0d013d

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->isVoWifiRegistered()Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0d03a2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    const v4, 0x7f0d0138

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_4
    if-eqz v3, :cond_6

    const v6, 0x7f0d0166

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p5, v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->isVoWifiRegistered()Z

    move-result v6

    if-eqz v6, :cond_7

    const v6, 0x7f0d03a1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCallCardDialingString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "assisted_dialing_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1, v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getDialingLabelFromAssistedDialing(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :pswitch_5
    const v4, 0x7f0d0134

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_6
    if-eqz v2, :cond_8

    const v6, 0x7f0d0167

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const v4, 0x7f0d0136

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p4}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->isVoWifiRegistered()Z

    move-result v6

    if-eqz v6, :cond_9

    const v6, 0x7f0d03a3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p5, v4, v5

    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0d0137

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_8
    const v4, 0x7f0d0135

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

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
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

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

    const v0, 0x7f0d0135

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIndicatorColorForCallState(I)I
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    const v0, 0x7f09007e

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const v0, 0x7f09007f

    goto :goto_0

    :cond_2
    const v0, 0x7f09007d

    goto :goto_0
.end method

.method private getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 12

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v9, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v9, 0x2

    iget v9, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v6, v9, 0x2

    if-eqz p1, :cond_0

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    :cond_0
    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v10, v4, Landroid/graphics/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v9, 0x0

    int-to-float v10, v3

    invoke-static {v8, v5, v6, v9, v10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c000e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v9, Lcom/android/incallui/SecVoiceCallCardFragment$11;

    invoke-direct {v9, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$11;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v7, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v7
.end method

.method private getRevealViewsAnimator()Landroid/animation/Animator;
    .locals 7

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/incallui/SecVoiceCallCardFragment$10;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$10;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private hideCallForwardingPanel()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingPanel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingPanel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private inflatePhotoringView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "inflatePhotoringView getView() is null"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoring:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideoBG:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->blockImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->sndImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setStopMusic(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideoBG:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->blockImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->sndImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private inflateSimIconLabel()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10033f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100340

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelLarge:Landroid/widget/ImageView;

    return-void
.end method

.method private isAvailableSpamCallAddbutton()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallCardFragment;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamRejectView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamRejectView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamRejectView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamRejectView:Landroid/view/View;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamRejectView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamRejectView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamRejectView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamRejectView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
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

.method private isVoWifiRegistered()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.oem.smartwifisupport.vowifi_pref_registration_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private manageCallStateFocusable(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0
.end method

.method private manageCdmaMultipartyCallBtn()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private manageSwitchToVideoCallMenu()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "manageSwitchToVideoCallMenu : isAutoAnswered - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v0, :cond_4

    const/high16 v5, 0x40000

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v1, :cond_4

    :goto_0
    const-string v5, "not_support_switch_button"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "show_switch_icon_in_button"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "showSwitch = false "

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "manageSwitchToVideoCallMenu - showSwitch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "show_switch_icon_on_call_card"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuText:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuText:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    const-string v5, "support_switch_button"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    if-eqz v2, :cond_7

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuText:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private needToShowCallerInfoCardView(I)Z
    .locals 5

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "not_support_caller_info_card"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    :cond_3
    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private needToShowCallerInfoForwardingView(Lcom/android/incallui/Call;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const-string v2, "show_forwarding_number"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowCallerInfoForwardingView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    return v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->isForwardingPresentation(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private queryForCallPlus()V
    .locals 7

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    move v2, v4

    :goto_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryForCallPlus number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "ARG_MSISDN"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ARG_COLUMNS"

    sget-object v6, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_1
.end method

.method private setCallerInfoCardView()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/incallui/SecVoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-boolean v6, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v6, :cond_0

    const-string v6, "- queryCompleted"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f1001a9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    iput-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f100153

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iput-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v6, :cond_0

    const-string v6, "setCallerInfoCardView: update"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v8, v4, v8}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->update(Landroid/content/Context;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v6, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->mStatus:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-object v7, v3, Lcom/android/incallui/coreapps/CoreAppsContact;->mStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setProfileContent(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02f3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0118

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    :cond_4
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v6, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v6, v8}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setCallerInfoForwardingView()V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "setCallerInfoForwardingView"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->hideCallForwardingPanel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->needToShowCallerInfoForwardingView(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->hideCallForwardingPanel()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/InCallUtils;->getForwardingNumber(Lcom/android/incallui/Call;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingPanelStub:Landroid/view/ViewStub;

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100274

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingPanelStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingPanelStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingPanel:Landroid/widget/TextView;

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100042

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingPanel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingPanel:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0398

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingPanel:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingPanel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallForwardingPanel:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setCardName()V
    .locals 6

    const-string v1, ""

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCardSubscriber:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setIncomingPrimaryImage(Landroid/graphics/drawable/Drawable;Z)Z
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-static {v8, v12, v9}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    const/4 v10, 0x2

    invoke-virtual {v8, v10, v12}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v10, 0x4

    if-eq v8, v10, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v10, 0x5

    if-ne v8, v10, :cond_6

    :cond_3
    move v5, v7

    :goto_1
    if-eqz p2, :cond_7

    if-eqz v5, :cond_7

    if-eqz p1, :cond_7

    :goto_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setIncomingPrimaryImage: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    invoke-static {p0, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x140

    if-lt v4, v8, :cond_0

    :cond_4
    :goto_3
    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v8, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v8, Lcom/android/incallui/SecVoiceCallCardFragment$2;

    invoke-direct {v8, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$2;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v6, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_5
    move v9, v7

    goto/16 :goto_0

    :cond_6
    move v5, v9

    goto :goto_1

    :cond_7
    move v7, v9

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setIncomingPrimaryImage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private setPrimaryCallElapsedTimeTitle(Z)V
    .locals 11

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

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

    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->getLineCtrlEvent(Lcom/android/incallui/Call;)B

    move-result v1

    :cond_0
    const/4 v8, 0x1

    if-ne v1, v8, :cond_3

    move-object v6, v4

    :goto_0
    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTimeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v8, v9

    :goto_1
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0a0138

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00b6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x2

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_2
    iget-object v8, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    move-object v6, v3

    goto :goto_0

    :cond_4
    const/16 v8, 0x8

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00de

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00df

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2
.end method

.method private setPrimaryCallMoreMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->needToShowMenu()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->showMenu(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/SecInCallActivity;->setPrimaryCallMenuForDialpad(Z)V

    :cond_0
    return-void
.end method

.method private setViewStateBeforeOutgoingAnimation()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecCallButtonUi;->setViewStateBeforeOutgoingAnimation()V

    :cond_1
    return-void
.end method

.method private setupWaveEffectInternal(I)V
    .locals 16

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/SecInCallActivity;

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/SecInCallActivity;

    :cond_0
    if-nez v11, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x4

    move/from16 v0, p1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    :cond_2
    const/4 v15, 0x1

    :goto_1
    const-string v13, "#ff4fa630"

    const-string v12, "#664fa630"

    const-string v7, "#fffafafa"

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const-string v1, "create WaveEffect"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create WaveEffect fragmentWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectWidth:I

    :cond_3
    new-instance v1, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectHeight:I

    if-eqz v15, :cond_5

    const/4 v5, 0x0

    :goto_2
    if-eqz v15, :cond_6

    const/4 v6, 0x0

    :goto_3
    if-eqz v15, :cond_7

    sget-object v8, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->BOTTOM:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    :goto_4
    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setAutoStopOnWindowFocusChanged(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;->setWaveSineEffect(Z)V

    goto :goto_0

    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    :cond_5
    move-object v5, v13

    goto :goto_2

    :cond_6
    move-object v6, v12

    goto :goto_3

    :cond_7
    sget-object v8, Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;->TOP:Lcom/samsung/android/visualeffect/naturalcurve/wave/AbstractWaveEffect$VerticalAlign;

    goto :goto_4
.end method

.method private showEpdgNotifyBanner(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getEpdgCall()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    const/4 v2, 0x1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showEpdgNotifyBanner - hasEPDG : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsEpdgIcon(Lcom/android/incallui/Call;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "epdg_call_for_vzw"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x0

    const-string v4, "showEpdgNotifyBanner epdg "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v4, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showInternetCallLabel(Z)V
    .locals 0

    return-void
.end method

.method private showMessageVoiceFromvideo(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getMessageVoiceFromVideo()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/secui/SecUiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1, v3}, Lcom/android/incallui/CallCardPresenter;->setMessageVoiceFromVideo(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/incallui/secui/SecUiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    goto :goto_0
.end method

.method private showOnholdLayout()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->isPossibleToShowHoldText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showVZWVoLTEMenu()V
    .locals 8

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowVZWVoLTEUI()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHasBeenVideoCall()Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v6

    if-nez v6, :cond_5

    :goto_3
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showVZWVoLTEMenu, canAdd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", enableAdd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hasbeenVideoCall : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHasBeenVideoCall()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_3

    :cond_6
    const/16 v5, 0x8

    goto :goto_4
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
    .locals 4

    const/4 v3, 0x2

    if-eq v3, p1, :cond_0

    iget v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    if-eq v2, p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "updateBgColorForCallState: skip"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->getIndicatorColorForCallState(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->getBannerColorForCallState(I)I

    move-result v1

    iget v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    if-ne v2, v3, :cond_6

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secui/SecUiAdapter;->isPenMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isClearCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    invoke-direct {p0, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->getIndicatorColorForCallState(I)I

    move-result v2

    iget v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    invoke-direct {p0, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->getBannerColorForCallState(I)I

    move-result v3

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/incallui/SecVoiceCallCardFragment;->animateForChangeColor(IIII)V

    goto :goto_0
.end method

.method private updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x8

    iput-object p2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->manageCallEndTimeBlink(I)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->removeMessageForBlinkTime()V

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object p2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->hasMessageForBlinkTime()Z

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
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->hasMessageForBlinkTime()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "not update stateLabel for blink call time"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateEriInfoText(I)V
    .locals 3

    const-string v2, "eri_info_label_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v2, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEriInfoTextMkey:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    :goto_1
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v0, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEriInfoTextMkey:Landroid/widget/TextView;

    goto :goto_1
.end method

.method private updateExtraVolumeButton(Lcom/android/incallui/Call;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-static {v8}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v6

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-static {v8}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move v2, v6

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-static {v8}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v6

    :goto_2
    invoke-static {}, Lcom/android/incallui/SoundEffect;->isExtraVolOn()Z

    move-result v3

    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    move v5, v6

    :goto_3
    if-nez v2, :cond_7

    if-eqz v5, :cond_7

    move v0, v6

    :goto_4
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isEpdgCall()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "tmo_volte_ui"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- updateExtraVolumeButton: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIcon:Landroid/widget/ToggleButton;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIcon:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIcon:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIcon:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_8

    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v1, v7

    goto :goto_0

    :cond_4
    move v2, v7

    goto :goto_1

    :cond_5
    move v4, v7

    goto :goto_2

    :cond_6
    move v5, v7

    goto :goto_3

    :cond_7
    move v0, v7

    goto :goto_4

    :cond_8
    const/16 v7, 0x8

    goto :goto_5
.end method

.method private updateHDIcon(I)V
    .locals 6

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v1, "display_hd_icon"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDLayout:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_kor_open"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSKTSIM()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconImageSKT:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconImageSKT:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_2
    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mpcs_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mpcs_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v0

    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDLayout:Landroid/view/View;

    if-eqz v0, :cond_12

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const-string v1, "hdvoice_call_status"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDVoiceText:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->isVoWifiRegistered()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_6
    :goto_6
    return-void

    :cond_7
    move v1, v3

    goto/16 :goto_0

    :cond_8
    move v1, v3

    goto :goto_1

    :cond_9
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "feature_kor_open"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isLGTSIM()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDVoiceTextLGT:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDVoiceTextLGT:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    move v1, v3

    goto :goto_7

    :cond_c
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconImageCHN:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconImageCHN:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_d
    move v1, v3

    goto :goto_8

    :cond_e
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconImageCommon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconImageCommon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_f
    move v1, v3

    goto :goto_9

    :cond_10
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsEpdgIcon()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_11
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsHDIcon()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_12
    move v1, v3

    goto/16 :goto_4

    :cond_13
    move v2, v3

    goto/16 :goto_5

    :cond_14
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showHDVoiceCallIcon(Landroid/view/View;Landroid/view/View;Z)V

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDVoiceText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->updateHDVoiceCallText(Landroid/content/Context;Landroid/view/View;I)V

    goto/16 :goto_6
.end method

.method private updateIncomingPopupMsg(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopupMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopupMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v2, "updateIncomingPopupMsg"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method private updatePanelForCallState(I)V
    .locals 5

    const v4, 0x7f0a00d7

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "activity is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :cond_3
    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :cond_5
    :goto_1
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :cond_6
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_1
.end method

.method private updatePhotoViewForCallState(I)V
    .locals 6

    const/16 v5, 0x8

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
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

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

    iget v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    if-eq v2, v5, :cond_2

    if-ne p1, v5, :cond_3

    :cond_2
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_3
    iget v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    :cond_4
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateVoWifiCallIcon()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "hdvoice_call_status"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVoWiFiIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->isVoWifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVoWiFiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "showVoWifiCallIcon - show"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVoWiFiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "showVoWifiCallIcon - notshow"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 8

    const/16 v6, 0x8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "animateForAnswerCall...already running"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "animateForAnswerCall"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsAnswerProcessing:Z

    const-string v4, "eri_info_label_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateEri()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0117

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    :cond_4
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    aput v6, v4, v5

    aput v2, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/SecVoiceCallCardFragment$12;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$12;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/view/animation/interpolator/SineInOut60;

    invoke-direct {v4}, Landroid/view/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->animateInfoContainerForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->animateWaveEffectForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->animateInfoCardForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->animateIncomingPhotoForAnswer(Landroid/animation/AnimatorSet$Builder;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopup:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public animateForMoveDialpad(Z)V
    .locals 10

    const/4 v6, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0c0001

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v6, [F

    if-eqz p1, :cond_2

    move v2, v3

    :goto_1
    aput v2, v9, v5

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    if-eqz p1, :cond_4

    move v2, v5

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    move v2, v6

    goto :goto_3
.end method

.method public animateForNewOutgoingCall(Landroid/graphics/Point;)V
    .locals 3

    const-string v2, "animateForNewOutgoingCall..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsOutgoingAnimationRunning:Z

    move-object v1, p1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/SecVoiceCallCardFragment$9;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/SecVoiceCallCardFragment$9;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/graphics/Point;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public changeCallCardForAM(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateWaveEffectForCallState(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePrimaryLayout()V

    return-void
.end method

.method public changeViewForMoveDialpad(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public clearAMView()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamTextForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamTextForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamTextForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamTextForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const-string v0, "support_folder_single_lcd"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120002

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f120001

    goto :goto_0
.end method

.method protected inflateRecordInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mRecordInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mRecordIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mRecordTime:Landroid/widget/Chronometer;

    new-instance v1, Lcom/android/incallui/SecVoiceCallCardFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$6;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    :cond_0
    return-void
.end method

.method isUnknownNumber(Ljava/lang/String;)Z
    .locals 5

    const-string v2, "-1"

    const-string v1, "-2"

    const-string v0, "-3"

    const/4 v3, 0x0

    const-string v4, "-2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "-3"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "-1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method manageCardName(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCardSubscriber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->setCardName()V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCardSubscriber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCardSubscriber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method manageElapsedTimeTitle(I)V
    .locals 6

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

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

    if-eq v5, p1, :cond_0

    if-ne v4, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryCallElapsedTimeTitle(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryCallElapsedTimeTitle(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-eq v0, p1, :cond_3

    if-eq v3, p1, :cond_3

    if-eq v4, p1, :cond_3

    if-ne v5, p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryCallElapsedTimeTitle(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryCallElapsedTimeTitle(Z)V

    goto :goto_0
.end method

.method managePhoneNumberLocator(I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isPhoneNumberLocatorOn()Z

    move-result v0

    const/4 v4, 0x4

    if-eq v4, p1, :cond_0

    const/4 v4, 0x5

    if-eq v4, p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "managePhoneNumberLocator, needToShow="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isPnlOn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_2
.end method

.method public needToShowMenu()Z
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->needToShowMenu()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

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

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->onClick(Landroid/view/View;)V

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

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video playing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoPlaying:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    iput-boolean v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoPlaying:Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    iput-boolean v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoPlaying:Z

    goto :goto_0

    :sswitch_2
    const-string v2, "onClick switch video Button was clicked"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->switchToVideoCallClicked()V

    :cond_2
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->doPhotoringBlock()V

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoMute:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSilentRing:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/TelecomAdapter;->silentRinger()V

    iput-boolean v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSilentRing:Z

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v7, v7}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput-boolean v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoMute:Z

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->sndImg:Landroid/widget/ImageView;

    const v3, 0x7f02004a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iput-boolean v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoMute:Z

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->sndImg:Landroid/widget/ImageView;

    const v3, 0x7f020049

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :sswitch_5
    if-eqz v0, :cond_0

    const-string v2, "onClick camera Text Button was clicked"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0d02ed

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0d02f0

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d02ef

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    iget-object v2, v2, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/android/incallui/Call;->foreceUpdateModifyRequestDummyType()V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->cdmaMultipartyButtonClicked()V

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "onClick spam_report"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->setReportSpamNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "onClick spam_reject"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->addAutoRejectNumber()J

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "onClick add call menu"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->extraVolumeClicked(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000bc -> :sswitch_1
        0x7f1000be -> :sswitch_3
        0x7f1000bf -> :sswitch_4
        0x7f10016e -> :sswitch_6
        0x7f10017d -> :sswitch_0
        0x7f1001a3 -> :sswitch_2
        0x7f1001bf -> :sswitch_a
        0x7f100285 -> :sswitch_7
        0x7f100288 -> :sswitch_8
        0x7f100325 -> :sswitch_9
        0x7f100326 -> :sswitch_5
        0x7f100327 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ims_callplus"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->queryForCallPlus()V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, "ARG_MSISDN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "ARG_COLUMNS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    move-object v0, v5

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/incallui/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "direction= 1"

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/SecCallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040137

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "onDestroyView..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/secui/SecUiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMcidDownloadble()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const-string v0, "FLAG_SECURE : off"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->onDestroyView()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/SecVoiceCallCardFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "onResume "

    invoke-static {p0, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "Menu_Change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->onResume()V

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setAMView(Z)V

    :cond_0
    :goto_0
    const-string v2, "feature_multisim_display_sim_icon"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimarySimIconLabel(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePrimaryLayout()V

    return-void

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/incallui/SecVoiceCallCardFragment;->setAMView(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/SecCallCardFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    const v11, 0x7f10013a

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/incallui/SecCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v5, 0x7f10017b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v5, 0x7f1000d6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    const v5, 0x7f1000d4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    const v5, 0x7f10008e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const v5, 0x7f100137

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v5, 0x7f10003b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v5, 0x7f1001a0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    const v5, 0x7f1000d1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const v5, 0x7f1000d3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v5, 0x7f1000d5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v5, 0x7f1000d7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const v5, 0x7f100145

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEriInfoText:Landroid/widget/TextView;

    const v5, 0x7f100038

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v5, 0x7f1000cf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0117

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v5, 0x7f100139

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    const v5, 0x7f10017c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    const-string v5, "ims_callplus"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f100271

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusImportanceStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    const v5, 0x7f100162

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    :cond_1
    const v5, 0x7f100272

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusSubjectLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusSubjectLayout:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusSubjectLayout:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f10016a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusSubject:Landroid/widget/TextView;

    :cond_2
    const-string v5, "phone_number_locator"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f1000b8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocatorStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v7}, Landroid/view/ViewStub;->setVisibility(I)V

    const v5, 0x7f1000b9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocator:Landroid/widget/TextView;

    :cond_3
    const-string v5, "ecid_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "feature_vzw"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const-string v5, "geo_description_disable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "feature_spr"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const v5, 0x7f100273

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCityId:Landroid/widget/TextView;

    :cond_6
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    const v5, 0x7f1001a5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPresenceIcon:Landroid/widget/ImageView;

    const v5, 0x7f10017d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mResumeButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mResumeButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectHeight:I

    const v5, 0x7f10013c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPeriodMarkContainer:Landroid/view/View;

    new-array v5, v8, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPeriodMarkList:[Landroid/widget/ImageView;

    new-array v4, v8, [I

    fill-array-data v4, :array_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_7

    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPeriodMarkList:[Landroid/widget/ImageView;

    aget v5, v4, v1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const v5, 0x7f1001a7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    const-string v5, "support_switch_button"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const v5, 0x7f1001a3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const v5, 0x7f1001ab

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopupStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopupStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopupStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f100092

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopup:Landroid/view/ViewGroup;

    const v5, 0x7f100093

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopupMsg:Landroid/widget/TextView;

    :cond_9
    const-string v5, "feature_multisim_display_sim_icon"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->inflateSimIconLabel()V

    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-nez v5, :cond_b

    const v5, 0x7f1001a1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    :cond_b
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTimeTitleStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f100094

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTimeTitle:Landroid/widget/TextView;

    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallUtils;->displayCtcSubscriberName()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCardSubscriberStub:Landroid/view/ViewStub;

    if-nez v5, :cond_d

    const v5, 0x7f100143

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCardSubscriberStub:Landroid/view/ViewStub;

    :cond_d
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCardSubscriberStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCardSubscriberStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f10016d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCardSubscriber:Landroid/widget/TextView;

    :cond_e
    const-string v5, "ims_support_multimedia_caller_id"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->inflatePhotoringView()V

    :cond_f
    const-string v5, "display_hd_icon"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconStub:Landroid/view/ViewStub;

    if-nez v5, :cond_10

    const v5, 0x7f10013b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconStub:Landroid/view/ViewStub;

    :cond_10
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "feature_kor_open"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSKTSIM()Z

    move-result v5

    if-eqz v5, :cond_34

    :cond_11
    const v5, 0x7f1001c0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconImageSKT:Landroid/widget/ImageView;

    :cond_12
    :goto_1
    const-string v5, "att_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "tmo_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "mpcs_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "canada_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_13
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    if-nez v5, :cond_14

    const v5, 0x7f10022b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    :cond_14
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f100326

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-nez v5, :cond_16

    const v5, 0x7f10022c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    :cond_16
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f100325

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAddCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    const-string v5, "show_switch_icon_on_call_card"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuStub:Landroid/view/ViewStub;

    if-nez v5, :cond_18

    const v5, 0x7f10026b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuStub:Landroid/view/ViewStub;

    :cond_18
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f100327

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVideoCallMenuText:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getExtraVolumeLocation()I

    move-result v5

    if-ne v5, v10, :cond_1b

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIconStub:Landroid/view/ViewStub;

    if-nez v5, :cond_1a

    const v5, 0x7f10026c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIconStub:Landroid/view/ViewStub;

    :cond_1a
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIconStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIconStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f1001bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIcon:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIcon:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIcon:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mExtraVolumeIcon:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v10}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    :cond_1b
    const-string v5, "tmo_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "mpcs_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "hdvoice_call_status"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    :cond_1c
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    if-nez v5, :cond_1d

    const v5, 0x7f10013b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    :cond_1d
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f1002aa

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDVoiceText:Landroid/widget/TextView;

    const v5, 0x7f1002ab

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mUHDIconImage:Landroid/widget/ImageView;

    :cond_1e
    const-string v5, "hdvoice_call_status"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    if-nez v5, :cond_1f

    const v5, 0x7f10022a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    :cond_1f
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVoWiFiIconStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f100329

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVoWiFiIcon:Landroid/widget/ImageView;

    :cond_20
    const-string v5, "cnap_supplementary_service"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_21

    const-string v5, "ims_call_message"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_21
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallMessageStub:Landroid/view/ViewStub;

    if-nez v5, :cond_22

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10014d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallMessageStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_22
    const-string v5, "cdnip_supplementary_service"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-nez v5, :cond_23

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f1001a6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipNumberStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipNumberStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_23
    const-string v5, "show_audio_codec_amr_wb"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    const v5, 0x7f10026d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    :cond_24
    const-string v5, "enable_conference_info_banner"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-nez v5, :cond_25

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10023b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    :cond_25
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f100187

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    :cond_26
    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    if-nez v5, :cond_27

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100304

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    :cond_27
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f1001bd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEpdgNotifyInfoText:Landroid/widget/TextView;

    :cond_28
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-nez v5, :cond_29

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10023a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    :cond_29
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f10021f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    :cond_2a
    const-string v5, "us_show_on_hold"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-nez v5, :cond_2b

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10023f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdStub:Landroid/view/ViewStub;

    :cond_2b
    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f100264

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    const v5, 0x7f100265

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    :cond_2c
    const-string v5, "china_cdma_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    if-nez v5, :cond_2d

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f1001a2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f10016e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdmaMultipartyBtn:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2d
    const-string v5, "voice_call_recording"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    :cond_2e
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSwitchBtn:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2f
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->onAMRecorderStateChanged()V

    :cond_30
    const-string v5, "support_spam_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    const v5, 0x7f100148

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    const v5, 0x7f100283

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamText:Landroid/widget/TextView;

    const v5, 0x7f100282

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamBar:Landroid/view/View;

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamTextForTalkBack:Landroid/widget/TextView;

    :cond_31
    const-string v5, "support_spam_call_report"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    const v5, 0x7f100275

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallEndStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallEndStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallEndStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f100285

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamReportView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamReportView:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f100288

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamRejectView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamRejectView:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f100286

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamReport:Landroid/widget/ImageView;

    const v5, 0x7f100289

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamReject:Landroid/widget/ImageView;

    const v5, 0x7f100287

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamReportTextView:Landroid/widget/TextView;

    const v5, 0x7f10028a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamRejectTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallEndStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_32
    const-string v5, "eri_info_label_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    const v5, 0x7f10026e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEriInfoStubMkey:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEriInfoStubMkey:Landroid/view/ViewStub;

    if-eqz v5, :cond_33

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEriInfoStubMkey:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f10021e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mEriInfoTextMkey:Landroid/widget/TextView;

    :cond_33
    const v5, 0x7f100269

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePrimaryLayout()V

    return-void

    :cond_34
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_35

    const-string v5, "feature_kor_open"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isLGTSIM()Z

    move-result v5

    if-eqz v5, :cond_36

    :cond_35
    const v5, 0x7f1001c1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDVoiceTextLGT:Landroid/widget/TextView;

    goto/16 :goto_1

    :cond_36
    const-string v5, "feature_chn"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    const v5, 0x7f1001c2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconImageCHN:Landroid/widget/ImageView;

    goto/16 :goto_1

    :cond_37
    const v5, 0x7f1001c3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHDIconImageCommon:Landroid/widget/ImageView;

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x7f10013d
        0x7f10013e
        0x7f10013f
    .end array-data
.end method

.method public resetAnswerCallAnimator()V
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetAnswerCallAnimator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iput-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsAnswerProcessing:Z

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateWaveEffectForCallState(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v2

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v2, :cond_4

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public resetRevealAnimator()V
    .locals 9

    const/4 v8, 0x0

    sget-boolean v6, Lcom/android/incallui/SecVoiceCallCardFragment;->sIsWindowRevealed:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "resetRevealAnimator"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v6, v2

    const/4 v7, 0x0

    invoke-static {v5, v8, v8, v6, v7}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    sput-boolean v8, Lcom/android/incallui/SecVoiceCallCardFragment;->sIsWindowRevealed:Z

    goto :goto_0
.end method

.method public setAMView(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1001aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mAMStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100117

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100118

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    if-eqz v0, :cond_1

    const v3, 0x7f02007c

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_8

    if-eqz v1, :cond_3

    const v3, 0x7f0d039b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/incallui/SecInCallActivity;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/SecInCallActivity;->updateKeepScreenOnFlag()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    if-eqz v0, :cond_1

    const v3, 0x7f02007b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    if-eqz v0, :cond_2

    const v3, 0x7f02000b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_2

    const v3, 0x7f02000a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_4

    const v3, 0x7f0d039c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setCallPlusImportance(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setCallPlusSubject(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 36

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lcom/android/incallui/SecVoiceCallCardFragment;->getCallStateLabelFromState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisconnectCause "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Landroid/telecom/DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gateway "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "setCallState: current state is multi-party call"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    const-string v4, "enable_conference_info_banner"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v34

    if-eqz v34, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secCallExtra.isVolteConference() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v34 .. v34}, Lcom/android/services/telephony/common/SecCallExtra;->isVolteConference()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mShowConferenceBanner : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mShowConferenceBanner:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    if-eqz v34, :cond_4

    invoke-virtual/range {v34 .. v34}, Lcom/android/services/telephony/common/SecCallExtra;->isVolteConference()Z

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mShowConferenceBanner:Z

    if-eq v4, v5, :cond_4

    invoke-virtual/range {v34 .. v34}, Lcom/android/services/telephony/common/SecCallExtra;->isVolteConference()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mShowConferenceBanner:Z

    invoke-virtual/range {v34 .. v34}, Lcom/android/services/telephony/common/SecCallExtra;->isVolteConference()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In Conference Call with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPrimaryCallerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/secui/SecUiAdapter;->showConferenceStateMessage(ZLjava/lang/String;)V

    :cond_4
    const/4 v4, 0x4

    move/from16 v0, p1

    if-eq v0, v4, :cond_5

    const/4 v4, 0x5

    move/from16 v0, p1

    if-eq v0, v4, :cond_5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsAnswerProcessing:Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mDimPanel:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const-string v4, "phone_number_locator"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->managePhoneNumberLocator(I)V

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->manageElapsedTimeTitle(I)V

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallUtils;->displayCtcSubscriberName()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->manageCardName(I)V

    :cond_9
    const-string v4, "china_cdma_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->manageCdmaMultipartyCallBtn()V

    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_b
    const-string v4, "tmo_echolocate_logger"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TMO_ECHOLOCATE_LOGGER setCallState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_c
    :goto_2
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_e

    const/16 v4, 0xa

    move/from16 v0, p1

    if-eq v0, v4, :cond_d

    const/16 v4, 0x9

    move/from16 v0, p1

    if-ne v0, v4, :cond_e

    :cond_d
    const-string v4, "not update callend in hold status"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_CONNECTED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v6}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->RINGING:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v6}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->CALL_DISCONNECTED:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v6}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    goto :goto_2

    :cond_e
    const/4 v4, 0x2

    move/from16 v0, p1

    if-eq v4, v0, :cond_f

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    const-string v4, "skip setCallState : not update callend in current state"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecUiAdapter;->getSecAnswerUi()Lcom/android/incallui/SecAnswerUi;

    move-result-object v19

    if-eqz v19, :cond_11

    invoke-interface/range {v19 .. v19}, Lcom/android/incallui/SecAnswerUi;->isAnswerAnimationRunning()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "Skip setCallState when answer animation is running"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/incallui/SecInCallActivity;

    if-eqz v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/SecInCallActivity;->dismissInCallMenu()V

    :cond_12
    const-string v4, "extended_restrict_international_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "feature_kor_open"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v20

    if-eqz v20, :cond_14

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/incallui/InCallUtils;->isIntIncomingCall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x4

    move/from16 v0, p1

    if-ne v0, v4, :cond_2a

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateIntCalNoti(Z)V

    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateCallStateLabelForCallState(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updatePeriodMark(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updatePanelForCallState(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateBgColorForCallState(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updatePhotoViewForCallState(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateWaveEffectForCallState(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateEriInfoText(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryCallMoreMenu()V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->manageSwitchToVideoCallMenu()V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateHDIcon(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateVoWifiCallIcon()V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->manageCallStateFocusable(I)V

    const-string v4, "show_audio_codec_amr_wb"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x6

    move/from16 v0, p1

    if-eq v0, v4, :cond_15

    const/16 v4, 0xd

    move/from16 v0, p1

    if-eq v0, v4, :cond_15

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/InCallUtils;->isShowHighQualitySoundText(I)Z

    move-result v4

    if-nez v4, :cond_2b

    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->showHighQualitySoundText(Z)V

    :cond_16
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_17

    const/16 v4, 0xa

    move/from16 v0, p1

    if-ne v0, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v4, :cond_18

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->needToShowCallerInfoCardView(I)Z

    move-result v30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v30, :cond_2d

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v5, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    :cond_18
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->showEpdgNotifyBanner(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->showOnholdLayout()V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->showMessageVoiceFromvideo(I)V

    :cond_19
    const-string v4, "ims_call_message"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v20

    if-eqz v20, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v24

    if-eqz v24, :cond_1b

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2e

    :cond_1a
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryMessage(Ljava/lang/String;)V

    :cond_1b
    :goto_6
    const-string v4, "cdnip_supplementary_service"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v20

    if-eqz v20, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v24

    if-eqz v24, :cond_1c

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryCdnip(Ljava/lang/String;)V

    :cond_1c
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "spam_call_enable"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUltraPowerSavingMode()Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_1d
    const/16 v27, 0x1

    :goto_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_1e
    const/16 v28, 0x1

    :goto_8
    const-string v4, "support_spam_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v20

    if-eqz v20, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v24

    if-eqz v24, :cond_20

    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_20

    if-nez v27, :cond_20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_20

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getisSpam()Z

    move-result v13

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamCount()I

    move-result v14

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagType()I

    move-result v15

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    move/from16 v17, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    move/from16 v18, v0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v18}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimarySpamInfo(Ljava/lang/String;ZIILjava/lang/String;ZZ)V

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_1f

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getisSpam()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1f

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    :cond_1f
    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimarySimIconLabel(I)V

    :cond_20
    const-string v4, "support_spam_call_report"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallEndStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_22

    if-eqz v20, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v24

    if-eqz v24, :cond_22

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_21

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_31

    :cond_21
    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_31

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_31

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_31

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->isUnknownNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUtils;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_31

    if-nez v28, :cond_31

    if-nez v27, :cond_31

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUtils;->checkEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamNumber:Ljava/lang/String;

    if-eqz v4, :cond_31

    const-string v4, "mSpamCallEndStub is shown"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallEndStub:Landroid/view/ViewStub;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->isAvailableSpamCallAddbutton()V

    :cond_22
    :goto_9
    const-string v4, "att_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "canada_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "mpcs_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_23
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v20

    const/16 v26, 0x0

    const-string v4, "common_vt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.phone"

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v32

    move-object/from16 v22, v32

    :goto_a
    const-string v4, "mt_conference_pref"

    const/4 v5, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v33

    const-string v4, "mtconference"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMtConference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_24

    const/16 v26, 0x1

    :cond_24
    if-eqz v20, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_25

    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_33

    if-eqz v35, :cond_33

    if-nez v26, :cond_33

    invoke-static {}, Lcom/android/incallui/InCallUtils;->checkPrimaryEmergencyCall()Z

    move-result v4

    if-nez v4, :cond_33

    if-nez v25, :cond_33

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPSDomain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SESSION_MODIFY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/high16 v5, 0x40000

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_32

    const/high16 v4, 0x40000

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_25
    :goto_b
    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecModifyCallProcessor;->checkAndUpdateModifyDummyState()V

    :cond_26
    const-string v4, "yellowpage_callerid_info"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v20

    if-eqz v20, :cond_27

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v24

    if-eqz v24, :cond_27

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    move-object/from16 v0, v24

    iget-boolean v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/incallui/SecVoiceCallCardFragment;->setYellowPageName(ZZLjava/lang/String;)V

    :cond_27
    const-string v4, "show_forwarding_number"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->setCallerInfoForwardingView()V

    :cond_28
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getExtraVolumeLocation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateExtraVolumeButton(Lcom/android/incallui/Call;)V

    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePrimaryLayout()V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    goto/16 :goto_1

    :cond_2a
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_2b
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getWideBandAMR()I

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->showHighQualitySoundText(Z)V

    goto/16 :goto_4

    :cond_2c
    const/4 v4, 0x0

    goto :goto_c

    :cond_2d
    const/16 v4, 0x8

    goto/16 :goto_5

    :cond_2e
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    if-nez v4, :cond_1b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryMessage(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2f
    const/16 v27, 0x0

    goto/16 :goto_7

    :cond_30
    const/16 v28, 0x0

    goto/16 :goto_8

    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallEndStub:Landroid/view/ViewStub;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_9

    :catch_0
    move-exception v23

    const-string v4, "isMtConference otherAppsContext not found"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_a

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_b

    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mVolteCameraText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setPhotoringViewVisibility(I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoring:Landroid/view/View;

    and-int/lit8 v0, p1, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringImage:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    and-int/lit8 v0, p1, 0x4

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->blockImg:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x8

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->sndImg:Landroid/widget/ImageView;

    and-int/lit8 v0, p1, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideoBG:Landroid/view/View;

    and-int/lit8 v3, p1, 0x4

    if-ne v3, v5, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePrimaryLayout()V

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

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/incallui/ContactAgentUtils;->getPresenceIcon(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 23

    const-string v3, "Setting primary call"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v21

    const/16 v16, 0x0

    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v16

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "setPrimary: current state is multi-party call"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/16 v17, 0x0

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p6

    iget-boolean v15, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p6

    iget-boolean v14, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_2
    if-nez p4, :cond_3

    if-eqz v16, :cond_11

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/incallui/SecVoiceCallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/incallui/SecVoiceCallCardFragment;->getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const/16 p3, 0x0

    if-eqz v16, :cond_4

    const-string p1, ""

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spam_call_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUltraPowerSavingMode()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_5
    const/16 v18, 0x1

    :goto_2
    const-string v3, "support_spam_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_6

    if-nez v18, :cond_6

    if-eqz p6, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getisSpam()Z

    move-result v5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamCount()I

    move-result v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagType()I

    move-result v7

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p6

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    move-object/from16 v0, p6

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimarySpamInfo(Ljava/lang/String;ZIILjava/lang/String;ZZ)V

    invoke-static {v11}, Lcom/android/incallui/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimarySimIconLabel(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePrimaryLayout()V

    :cond_6
    if-eqz p3, :cond_14

    move-object/from16 v3, p2

    :goto_3
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamNumber:Ljava/lang/String;

    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "support_spam_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-eqz p6, :cond_15

    move-object/from16 v0, p6

    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v3, :cond_15

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_15

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getisSpam()Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez v18, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const-string v3, "support_spam_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamTagType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getisSpam()Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz p6, :cond_17

    move-object/from16 v0, p6

    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v3, :cond_17

    if-nez v18, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    :goto_5
    if-nez v16, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/SecVoiceCallCardFragment;->showInternetCallLabel(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryCallMoreMenu()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    const-string v3, "ims_callplus"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_9

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_18

    :cond_9
    const/4 v13, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    if-eqz v3, :cond_19

    if-eqz v13, :cond_19

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mImportance:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setCallPlusImportance(ZI)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSubject:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setCallPlusSubject(ZLjava/lang/String;)V

    :cond_a
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->setCallerInfoCardView()V

    if-eqz p6, :cond_1a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->CheckDisplayPLettrering()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1a

    :cond_b
    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryMessage(Ljava/lang/String;)V

    :cond_c
    :goto_8
    if-eqz p6, :cond_d

    const-string v3, "cdnip_supplementary_service"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryCdnip(Ljava/lang/String;)V

    :cond_d
    const-string v3, "geo_description_disable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "feature_spr"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCityId:Landroid/widget/TextView;

    move-object/from16 v0, p6

    invoke-static {v3, v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setPrimaryGeoDescription(Landroid/widget/TextView;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_e
    const-string v3, "feature_multisim_display_sim_icon"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/incallui/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimarySimIconLabel(I)V

    :cond_f
    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->managePhoneNumberLocator(I)V

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePrimaryLayout()V

    goto/16 :goto_0

    :cond_11
    if-eqz p6, :cond_4

    move-object/from16 v0, p6

    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v11

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v12

    if-eqz v12, :cond_4

    iget-object v3, v12, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 p1, v0

    iget-object v0, v12, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    move-object/from16 p2, v0

    const/16 p3, 0x0

    :cond_12
    iget-object v3, v12, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    iget-object v0, v12, Lcom/android/incallui/coreapps/CoreAppsContact;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_14
    move-object/from16 v3, p1

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_17
    invoke-virtual/range {p0 .. p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_18
    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusImportance:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallPlusSubject:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_1a
    if-eqz p6, :cond_c

    const-string v3, "cnap_supplementary_service"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryMessage(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    iput-object p2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLastestCallTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->hidePeriodMark()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getCallTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->setTTS(JLandroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/SecInCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/SecInCallActivity;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryCdnip(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f1001a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipNumberStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipNumberStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipNumberStub:Landroid/view/ViewStub;

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
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipNumberStub:Landroid/view/ViewStub;

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

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f100171

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipNumberStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCdnipNumberStub:Landroid/view/ViewStub;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryCityId(Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v2, 0x0

    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SVL_VUX Caller Name ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCityId:Landroid/widget/TextView;

    if-nez v3, :cond_1

    const-string v2, "mCityId is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v2, "call is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "isOutgoing is true"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCityId:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCityId:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-static {v5, v7, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowMultiparty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "setPrimaryImage: current state is multi-party call"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecVoiceCallCardFragment;->setIncomingPrimaryImage(Landroid/graphics/drawable/Drawable;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsShowingIncomingPhoto:Z

    move v3, p2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v6, :cond_7

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallMenu;->getUniqueMenuItem()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v2, 0x0

    :cond_5
    if-eqz v2, :cond_8

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v7}, Lcom/android/incallui/SecVoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v7, 0x7f0201cc

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mResumeButton:Landroid/widget/Button;

    if-eqz v2, :cond_9

    move v5, v4

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    if-eqz v3, :cond_b

    iget-boolean v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsShowingIncomingPhoto:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x4

    :goto_4
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingPhoto:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsShowingIncomingPhoto:Z

    if-eqz v7, :cond_c

    :goto_5
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePrimaryLayout()V

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a00c5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v5, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    const v7, 0x7f0201c8

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_9
    move v5, v6

    goto :goto_3

    :cond_a
    move v5, v4

    goto :goto_4

    :cond_b
    move v5, v6

    goto :goto_4

    :cond_c
    move v4, v6

    goto :goto_5
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePrimaryLayout()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mNumberLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryMessage(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallMessageStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallMessageStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallMessageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallMessageStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallMessageStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimaryNameSize(Ljava/lang/String;FZ)F
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, p1, v8, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    move v3, p2

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0486

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v6

    if-le v5, v6, :cond_2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, p1, v8, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v3, v6

    cmpg-float v6, v3, v1

    if-gez v6, :cond_0

    move v4, v3

    :goto_1
    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00ea

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryNameForTalkBack:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumberLocator(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocator:Landroid/widget/TextView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocator:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->managePhoneNumberLocator(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocator:Landroid/widget/TextView;

    new-instance v4, Lcom/android/incallui/SecVoiceCallCardFragment$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$3;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberLocator:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPrimarySimIconLabel(I)V
    .locals 3

    const/4 v2, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelLarge:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabel:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabelLarge:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimarySpamInfo(Ljava/lang/String;ZIILjava/lang/String;ZZ)V
    .locals 6

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallStub:Landroid/view/ViewStub;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPrimarySpamInfo mTagName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSpam : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTagType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isContactExist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isYellowPage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eq p4, v3, :cond_6

    if-eqz p2, :cond_6

    if-nez p6, :cond_6

    if-nez p7, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getSpamReportOwn()I

    move-result v3

    if-le p4, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Lcom/android/incallui/InCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamTextForTalkBack:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamTextForTalkBack:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallStub:Landroid/view/ViewStub;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    if-ne p4, v3, :cond_4

    if-eqz p1, :cond_4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Lcom/android/incallui/InCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamTextForTalkBack:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhoneNumberForTalkBack:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSpamCallStub:Landroid/view/ViewStub;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p6, :cond_0

    if-nez p7, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getView is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setYellowPageName(ZZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yellowPageName isYellowPage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contactExists :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yellowPageName name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/incallui/TelecomAdapter;->setYellowPageName(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->setYellowPageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setupWaveEffect()V
    .locals 0

    return-void
.end method

.method public showConferenceStateInfoBanner(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "showConferenceStateInfoBanner"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mConferenceInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHighQualitySoundText(Z)V
    .locals 4

    const/16 v3, 0xb

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHighQualitySoundText, show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->needToShowMenu()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mHighQualitySoundText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showIncomingPopupForSecondCall(III)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopup:Landroid/view/ViewGroup;

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

    invoke-direct {p0, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateIncomingPopupMsg(I)V

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopup:Landroid/view/ViewGroup;

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

    invoke-direct {p0, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateIncomingPopupMsg(I)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    if-ne p1, v8, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIncomingCallPopup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMenu(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->showMenu(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->showVZWVoLTEMenu()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public showModifyStateInfoBanner(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showModifyStateInfoBanner message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoBanner:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mModifyStateInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showModifySwitchButtonAM()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->manageSwitchToVideoCallMenu()V

    return-void
.end method

.method public updateEri()V
    .locals 1

    const-string v0, "updateEri"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eri_info_label_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mOldCallState:I

    invoke-direct {p0, v0}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateEriInfoText(I)V

    goto :goto_0
.end method

.method public updateHDIconByIntent()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHDIconByIntent - call.getState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateHDIcon(I)V

    :cond_0
    return-void
.end method

.method public updateIntCalNoti(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10026f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIntCallNotiStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIntCallNotiStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIntCallNotiStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIntCallNotiText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIntCallNotiText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIntCallNotiText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIntCallNotiStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIntCallNotiStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
    .locals 11

    const/16 v10, 0x2000

    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePhotoringState - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", block : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->inflatePhotoringView()V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoring:Landroid/view/View;

    if-nez v4, :cond_1

    const-string v4, "photoring view is null"

    invoke-static {p0, v4, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringstate:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-direct {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->arrangePhotoringLayout()V

    sget-object v4, Lcom/android/incallui/SecVoiceCallCardFragment$18;->$SwitchMap$com$android$services$telephony$common$PhotoringCommon$PhotoringMTState:[I

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

    const v5, 0x7f0d02fe

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_1
    :pswitch_1
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPhotoringViewVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->blockImg:Landroid/widget/ImageView;

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

    const v5, 0x7f0d02fe

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

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

    if-eqz v4, :cond_7

    :cond_5
    const-string v4, "image content"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/incallui/secutils/GifUtil;->isAGIF(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "Animated GIF image"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/android/incallui/secutils/GifUtil;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-direct {v4, v5}, Lcom/android/incallui/secutils/GifUtil;-><init>(Landroid/widget/ImageView;)V

    iput-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->gUtil:Lcom/android/incallui/secutils/GifUtil;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->gUtil:Lcom/android/incallui/secutils/GifUtil;

    invoke-virtual {v4, v2}, Lcom/android/incallui/secutils/GifUtil;->setImagePath(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPhotoringViewVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->gUtil:Lcom/android/incallui/secutils/GifUtil;

    invoke-virtual {v4}, Lcom/android/incallui/secutils/GifUtil;->startAnimate()V

    :goto_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMcidDownloadble()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/Window;->addFlags(I)V

    const-string v4, " FLAG_SECURE : on"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v9}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPhotoringViewVisibility(I)V

    goto :goto_3

    :cond_7
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

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v4, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    const/16 v4, 0x1d

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPhotoringViewVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->sndImg:Landroid/widget/ImageView;

    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    new-instance v5, Lcom/android/incallui/SecVoiceCallCardFragment$7;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$7;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    new-instance v5, Lcom/android/incallui/SecVoiceCallCardFragment$8;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$8;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_3

    :cond_8
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPhotoringViewVisibility(I)V

    goto :goto_4

    :pswitch_3
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_9
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->gUtil:Lcom/android/incallui/secutils/GifUtil;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->gUtil:Lcom/android/incallui/secutils/GifUtil;

    invoke-virtual {v4}, Lcom/android/incallui/secutils/GifUtil;->clear()V

    iput-object v7, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->gUtil:Lcom/android/incallui/secutils/GifUtil;

    :cond_a
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPhotoringVideo:Landroid/widget/VideoView;

    invoke-virtual {v4, v7}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iput-object v7, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecVoiceCallCardFragment;->setPhotoringViewVisibility(I)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMcidDownloadble()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/Window;->clearFlags(I)V

    const-string v4, "FLAG_SECURE : off"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateView(Landroid/database/Cursor;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1001a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100153

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v6, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mImportance:I

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSubject:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation_map:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mBackground:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mImportance:I

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setCallPlusImportance(ZI)V

    iget-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSubject:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setCallPlusSubject(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x2bc

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v2, 0x546

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v2, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    invoke-virtual {v2, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    invoke-virtual {v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->removeInfo(Z)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mBackground:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mBackground:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mBackground:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mBackground:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iput-boolean v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    invoke-virtual {v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->removeInfo(Z)V

    iget-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mImportance:I

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setCallPlusImportance(ZI)V

    iget-boolean v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mSubject:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/SecVoiceCallCardFragment;->setCallPlusSubject(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mBackground:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    iget-boolean v3, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->isCallPlus:Z

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateWaveEffectForCallState(I)V
    .locals 6

    const-string v4, "support_wave_effect"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsAnswerProcessing:Z

    if-eqz v4, :cond_2

    const-string v4, "updateWaveEffectForCallState: mIsAnswerProcessing"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->needToStartEffect(I)Z

    move-result v2

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-nez v4, :cond_3

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f10018a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffect:Lcom/samsung/android/visualeffect/naturalcurve/WaveEffect;

    if-nez v4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/incallui/SecVoiceCallCardFragment;->setupWaveEffectInternal(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0117

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    :cond_5
    const/4 v4, 0x4

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-ne p1, v4, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0116

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    int-to-float v5, v1

    sub-float/2addr v4, v5

    float-to-int v3, v4

    :cond_7
    :goto_1
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    :cond_8
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment;->mWaveEffectContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_9
    invoke-super {p0, p1}, Lcom/android/incallui/SecCallCardFragment;->updateWaveEffectForCallState(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/SecVoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    int-to-float v5, v1

    sub-float/2addr v4, v5

    float-to-int v3, v4

    goto :goto_1
.end method
