.class public Lcom/android/incallui/SecTabletCallButtonVoiceView;
.super Lcom/android/incallui/SecTabletCallButtonView;
.source "SecTabletCallButtonVoiceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;,
        Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;
    }
.end annotation


# static fields
.field private static final BUTTONS_FOR_STOPPING_SERVICE:[I

.field private static final BUTTON_TABLE_UNDER:[I

.field private static final BUTTON_TABLE_UPPER:[I

.field private static mCurrentPageScrollState:I


# instance fields
.field private final DIALPADMANAGER_CLASSNAME:Ljava/lang/String;

.field private isHovering:Z

.field private mAddCallButton:Landroid/widget/Button;

.field private mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

.field private mContactButton:Landroid/widget/Button;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEmailButton:Landroid/widget/Button;

.field private mExtraVolumeButton:Landroid/widget/ToggleButton;

.field private mHandler:Landroid/os/Handler;

.field private mHoldButton:Landroid/widget/ToggleButton;

.field private mInCallButtonLayout:Landroid/view/ViewGroup;

.field private mInCallButtons:Landroid/view/View;

.field private mInCallButtonsUpper:Landroid/view/View;

.field private mInternetButton:Landroid/widget/Button;

.field private mIsEnabled:Z

.field private mLastestPagePosition:I

.field private mMemoButton:Landroid/widget/Button;

.field private mMessageButton:Landroid/widget/Button;

.field private mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mOutgoingButtonLayout:Landroid/view/ViewGroup;

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

.field private mPagerAdapter:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;

.field private mPagerIndicator:Landroid/view/View;

.field private mPagerIndicatorLeft:Landroid/view/View;

.field private mPagerIndicatorRight:Landroid/view/View;

.field private mPlannerButton:Landroid/widget/Button;

.field private mPrevAudioMode:I

.field private mRecordButtonStubUnder:Landroid/view/ViewStub;

.field private mRecordButtonStubUpper:Landroid/view/ViewStub;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSwitchCallButton:Landroid/widget/Button;

.field private mSwitchCallButtonStub:Landroid/view/ViewStub;

.field private mWebexButton:Landroid/widget/Button;

.field private mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mCurrentPageScrollState:I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->BUTTONS_FOR_STOPPING_SERVICE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->BUTTON_TABLE_UPPER:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->BUTTON_TABLE_UNDER:[I

    return-void

    :array_0
    .array-data 4
        0x7f100257
        0x7f10025d
        0x7f10025e
        0x7f10025f
        0x7f100261
        0x7f100262
        0x7f100263
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x1
        0x3
        0x3
        0x4
        0x1
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonView;-><init>(Landroid/content/Context;)V

    const-string v0, "com.android.incallui.SecTabletDialpadViewManager"

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->DIALPADMANAGER_CLASSNAME:Ljava/lang/String;

    iput v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPrevAudioMode:I

    iput v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mLastestPagePosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    iput-boolean v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isHovering:Z

    new-instance v0, Lcom/android/incallui/SecTabletCallButtonVoiceView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView$1;-><init>(Lcom/android/incallui/SecTabletCallButtonVoiceView;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/SecTabletCallButtonVoiceView$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView$2;-><init>(Lcom/android/incallui/SecTabletCallButtonVoiceView;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/incallui/SecTabletCallButtonVoiceView$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView$4;-><init>(Lcom/android/incallui/SecTabletCallButtonVoiceView;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecTabletCallButtonVoiceView;)Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mCurrentPageScrollState:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mCurrentPageScrollState:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/incallui/SecTabletCallButtonVoiceView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->inflateInCallButtons(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/SecTabletCallButtonVoiceView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->inflateExtraButtons(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/SecTabletCallButtonVoiceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateVoiceCallButtons()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/SecTabletCallButtonVoiceView;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updatePagerState(Lcom/android/incallui/Call;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/SecTabletCallButtonVoiceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isHovering:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/incallui/SecTabletCallButtonVoiceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isHovering:Z

    return p1
.end method

.method private animateForRevealInCallButtonContainer()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonContainer:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "animateForRevealPagerContainer"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private changePageExtraToInCall()V
    .locals 4

    const/16 v1, 0x65

    const-string v0, "changePageExtraToInCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private emailClicked()V
    .locals 14

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-boolean v0, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, v10, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emailClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    throw v0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_3
    :goto_2
    invoke-static {v6}, Lcom/android/incallui/PackageHelpers;->launchEmail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private enableVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 13

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0x9

    if-eq v11, v12, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_3

    :cond_2
    const/4 v7, 0x0

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "enableVoiceCallButtons - disable buttons becauase conference call is under disconnecting"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_16

    :cond_5
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_17

    const/4 v8, 0x1

    :goto_2
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v11

    if-eqz v11, :cond_18

    if-nez v6, :cond_18

    const/4 v1, 0x1

    :goto_3
    const/4 v11, 0x4

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOtaMode()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    const/4 v1, 0x0

    :cond_7
    const/16 v11, 0x40

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v11

    if-eqz v11, :cond_19

    if-nez v6, :cond_19

    if-nez v8, :cond_19

    const/4 v4, 0x1

    :goto_4
    const/16 v11, 0x10

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v4, 0x0

    :cond_8
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v11

    if-eqz v11, :cond_1a

    if-nez v6, :cond_1a

    const/4 v3, 0x1

    :goto_5
    if-nez v6, :cond_1b

    const/4 v2, 0x1

    :goto_6
    const/4 v11, 0x2

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v2, 0x0

    :cond_9
    const/4 v10, 0x1

    const/16 v11, 0x8

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v10, 0x0

    :cond_a
    const/4 v0, 0x1

    const/16 v11, 0x20

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v0, 0x0

    :cond_b
    const/high16 v11, 0x40000

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v11

    if-nez v11, :cond_1c

    const/4 v9, 0x1

    :goto_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    :cond_c
    if-nez v8, :cond_1d

    const/4 v5, 0x1

    :goto_8
    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_d

    iget-object v12, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_1e

    if-eqz v1, :cond_1e

    const/4 v11, 0x1

    :goto_9
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_d
    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_e

    iget-object v12, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_1f

    if-eqz v2, :cond_1f

    const/4 v11, 0x1

    :goto_a
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_e
    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_f

    iget-object v12, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_20

    if-eqz v0, :cond_20

    const/4 v11, 0x1

    :goto_b
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_f
    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_10

    iget-object v12, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_21

    if-eqz v10, :cond_21

    const/4 v11, 0x1

    :goto_c
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_10
    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    if-eqz v11, :cond_11

    iget-object v12, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    if-eqz v7, :cond_22

    if-eqz v5, :cond_22

    const/4 v11, 0x1

    :goto_d
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_11
    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_12

    iget-object v12, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_23

    if-eqz v4, :cond_23

    const/4 v11, 0x1

    :goto_e
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_12
    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v11, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_13
    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v11, :cond_14

    iget-object v12, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v7, :cond_24

    if-eqz v3, :cond_24

    const/4 v11, 0x1

    :goto_f
    invoke-virtual {v12, v11}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_14
    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mWebexButton:Landroid/widget/Button;

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mWebexButton:Landroid/widget/Button;

    invoke-virtual {v11, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_15
    iget-object v11, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButton:Landroid/widget/Button;

    if-eqz v11, :cond_0

    iget-object v12, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButton:Landroid/widget/Button;

    if-eqz v7, :cond_25

    if-eqz v9, :cond_25

    const/4 v11, 0x1

    :goto_10
    invoke-virtual {v12, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_16
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_1c
    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_1e
    const/4 v11, 0x0

    goto/16 :goto_9

    :cond_1f
    const/4 v11, 0x0

    goto/16 :goto_a

    :cond_20
    const/4 v11, 0x0

    goto :goto_b

    :cond_21
    const/4 v11, 0x0

    goto :goto_c

    :cond_22
    const/4 v11, 0x0

    goto :goto_d

    :cond_23
    const/4 v11, 0x0

    goto :goto_e

    :cond_24
    const/4 v11, 0x0

    goto :goto_f

    :cond_25
    const/4 v11, 0x0

    goto :goto_10
.end method

.method private inflateExtraButtons(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f10025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEmailButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEmailButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEmailButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHoverPopupType(I)V

    const v0, 0x7f10025e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHoverPopupType(I)V

    const v0, 0x7f10025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInternetButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInternetButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInternetButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHoverPopupType(I)V

    const v0, 0x7f100261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mContactButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHoverPopupType(I)V

    const v0, 0x7f100262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPlannerButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPlannerButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPlannerButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHoverPopupType(I)V

    const v0, 0x7f100263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMemoButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMemoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMemoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mLastestPagePosition:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->changePageExtraToInCall()V

    :cond_0
    return-void
.end method

.method private declared-synchronized inflateInCallButtons(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    const v0, 0x7f100255

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtons:Landroid/view/View;

    const v0, 0x7f100248

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonsUpper:Landroid/view/View;

    const v0, 0x7f10024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    const v0, 0x7f10024b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    const v0, 0x7f10002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHoverPopupType(I)V

    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->inflateVariableButtons(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isDialpadVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->returnButtonsForDialpad(Z)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateVoiceCallButtons()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized inflatePagerContainer()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v2, "not_support_extra_view_page"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    const v2, 0x7f100253

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->inflateInCallButtons(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_4

    const v2, 0x7f100253

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->inflateInCallButtons(Landroid/view/View;)V

    const-string v2, "inflatePagerContainer: mOutgoingButtonLayout"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    const v2, 0x7f100254

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;->setFocusable(Z)V

    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mLastestPagePosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mOutgoingButtonLayout:Landroid/view/ViewGroup;

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    if-nez v2, :cond_0

    const v2, 0x7f100254

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v2, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;-><init>(Lcom/android/incallui/SecTabletCallButtonVoiceView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerAdapter:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    iget-object v3, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerAdapter:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;->setFocusable(Z)V

    const-string v2, "inflatePagerContainer: inCallButtonsPager"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private inflateVariableButtons(Landroid/view/View;)V
    .locals 9

    const v8, 0x7f100245

    const/4 v7, 0x0

    const/4 v0, 0x0

    const-string v5, "no_receiver_in_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    const-string v5, "voice_call_recording"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    sget-object v5, Lcom/android/incallui/SecTabletCallButtonVoiceView;->BUTTON_TABLE_UPPER:[I

    aget v4, v5, v0

    sget-object v5, Lcom/android/incallui/SecTabletCallButtonVoiceView;->BUTTON_TABLE_UNDER:[I

    aget v3, v5, v0

    const-string v5, "show_switch_icon_in_button"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSDomain()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v4, 0x5

    :cond_3
    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_0
    :pswitch_0
    packed-switch v3, :pswitch_data_1

    :goto_1
    :pswitch_1
    return-void

    :pswitch_2
    const v5, 0x7f1002a4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButtonStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v5, 0x7f10028c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setHoverPopupType(I)V

    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButton:Landroid/widget/Button;

    const v6, 0x7f0201ad

    invoke-virtual {v5, v7, v6, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :pswitch_3
    const v5, 0x7f100257

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddCallButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setHoverPopupType(I)V

    :cond_5
    new-instance v2, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v2}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->createAddcallButtonListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    goto :goto_0

    :pswitch_4
    const v5, 0x7f1002a5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButtonStubUpper:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButtonStubUpper:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    goto/16 :goto_0

    :pswitch_5
    const v5, 0x7f1002a6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mWebexButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mWebexButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mWebexButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mWebexButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setHoverPopupType(I)V

    goto/16 :goto_0

    :pswitch_6
    const v5, 0x7f100030

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHoldButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    goto/16 :goto_1

    :pswitch_7
    const v5, 0x7f1002a7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButtonStubUnder:Landroid/view/ViewStub;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButtonStubUnder:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    goto/16 :goto_1

    :pswitch_8
    const v5, 0x7f10024d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setHoverPopupType(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method private isClickedViewLaunchOtherApp(I)Z
    .locals 5

    sget-object v0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->BUTTONS_FOR_STOPPING_SERVICE:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    if-ne v1, p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private recordClicked()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->toggleRecord()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateRecordButton()V

    return-void
.end method

.method private removePagerInstance()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    if-eqz v0, :cond_0

    const-string v0, "removePagerInstance"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    :cond_0
    return-void
.end method

.method private switchToVideoCallClicked()V
    .locals 4

    const-string v1, "switchToVideoCallClicked()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/SecModifyCallProcessor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecModifyCallProcessor;->requestModifyCall(I)Z

    :cond_0
    return-void
.end method

.method private updateAudioButtons(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isSupported(I)Z

    move-result v1

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isSupported(I)Z

    move-result v3

    invoke-virtual {p0, v4}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isAudio(I)Z

    move-result v0

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isAudio(I)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bluetoothEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speakerEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateExtraVolumeButton()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateMuteButton()V

    return-void
.end method

.method private updateExtraVolumeButtonAboutModeChanged()V
    .locals 3

    const-string v1, "updateExtraVolumeButtonAboutModeChanged()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/SoundEffect;->isUncertainExtraVolOn()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isUncertainExtraVolOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateMuteButton()V
    .locals 3

    const-string v1, "updateMuteButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isMuted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updatePagerDescription(I)V
    .locals 7

    const/4 v6, 0x2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updatePagerIndicator(I)V
    .locals 3

    const v1, 0x7f0201c4

    const v0, 0x7f0201c3

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->changePageExtraToInCall()V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicatorLeft:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicatorLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicatorRight:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicatorRight:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updatePagerState(Lcom/android/incallui/Call;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/16 v6, 0x8

    if-ne v3, v6, :cond_f

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isDialpadVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    :cond_3
    const-string v6, "support_safetycare"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v2, 0x0

    :cond_4
    const-string v6, "emergency_find_lost_phone"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isLostPhoneLock()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x0

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x0

    :cond_7
    const-string v6, "not_support_extra_view_page"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v2, 0x0

    :cond_8
    const-string v6, "ota_mode_disable_expand"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "true"

    const-string v7, "ril.domesticOtaStart"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v2, 0x0

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKioskMode()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->needToDisableForKnox(I)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    const/4 v2, 0x0

    :cond_b
    iget-object v6, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicator:Landroid/view/View;

    if-eqz v6, :cond_c

    iget-object v7, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicator:Landroid/view/View;

    if-eqz v2, :cond_10

    move v6, v4

    :goto_2
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v6, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    if-eq v3, v6, :cond_d

    const/16 v6, 0xa

    if-ne v3, v6, :cond_11

    :cond_d
    move v1, v5

    :goto_3
    if-eqz v1, :cond_12

    :cond_e
    :goto_4
    iget-object v4, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    invoke-virtual {v4, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;->setScrollable(Z)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    invoke-virtual {v4}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updatePagerIndicator(I)V

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updatePagerDescription(I)V

    goto/16 :goto_0

    :cond_f
    move v2, v4

    goto/16 :goto_1

    :cond_10
    const/4 v6, 0x4

    goto :goto_2

    :cond_11
    move v1, v4

    goto :goto_3

    :cond_12
    if-nez v2, :cond_e

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPager:Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;

    invoke-virtual {v5, v4, v4}, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallViewPager;->setCurrentItem(IZ)V

    iput v4, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mLastestPagePosition:I

    goto :goto_4
.end method

.method private updateRecordButton()V
    .locals 6

    const v5, 0x7f0d01c8

    const-string v1, "updateRecordButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d01d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d01bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateVoiceCallButtons()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private updateVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateAudioButtons(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateExtraVolumeButton()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateDiapadButton()V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updatePagerState(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateRecordButton()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateHoldButton()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_0
.end method


# virtual methods
.method public animateForMoveDialpad(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtons:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v5, 0x4

    :goto_1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0189

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a018b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtons:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v10, [F

    if-eqz p1, :cond_5

    :goto_2
    aput v0, v9, v6

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v10, [F

    if-eqz p1, :cond_6

    :goto_3
    aput v1, v9, v6

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v6}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2

    :cond_6
    move v1, v7

    goto :goto_3
.end method

.method public animateForRevealEndCallButton()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/SecTabletCallButtonVoiceView$5;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView$5;-><init>(Lcom/android/incallui/SecTabletCallButtonVoiceView;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public animateForRevealViews()V
    .locals 7

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtons:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtons:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public createAddcallButtonListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MIME_TYPE"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v3, 0x2

    invoke-direct {v0, p1, v2, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setDirection(I)V

    const/16 v2, -0xc8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setPosition(II)V

    new-instance v2, Lcom/android/incallui/SecTabletCallButtonVoiceView$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView$3;-><init>(Lcom/android/incallui/SecTabletCallButtonVoiceView;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-object v0
.end method

.method public extraVolumeClicked()V
    .locals 0

    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleExtraVolume()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateExtraVolumeButton()V

    return-void
.end method

.method protected initView()V
    .locals 4

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallButtonView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400f3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x7f100247

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonContainer:Landroid/view/View;

    const v2, 0x7f10024e

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    const v2, 0x7f10024f

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->inflatePagerContainer()V

    const v2, 0x7f100250

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicator:Landroid/view/View;

    const v2, 0x7f100251

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicatorLeft:Landroid/view/View;

    const v2, 0x7f100252

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPagerIndicatorRight:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnswerTriggered()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->animateForRevealInCallButtonContainer()V

    goto :goto_0
.end method

.method public onAnswerTriggered(Lcom/android/incallui/SecEventAnswerTriggered;)V
    .locals 2
    .annotation runtime Lcom/android/incallui/SecEventBus;
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/SecEventAnswerTriggered;->getState()Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/SecEventAnswerTriggered$STATE;->ENDED:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallButtonView;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    sget-object v0, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecEventBusManager;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    const-string v3, "onClick: unexpected"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallPresenter;->sendLockScreenEvent(Z)V

    invoke-direct {p0, v1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isClickedViewLaunchOtherApp(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/BaseInCallComponent;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/BaseInCallComponent;->forceFinish()V

    :cond_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->recordClicked()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->switchToVideoCallClicked()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->extraVolumeClicked()V

    goto :goto_0

    :sswitch_4
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isAudio(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->bluetoothClicked()V

    goto :goto_0

    :sswitch_5
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isAudio(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isSupported(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isDialpadVisible()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v4

    :cond_3
    sget-object v3, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    new-instance v5, Lcom/android/incallui/SecEventDialpadClicked;

    invoke-direct {v5, v0, v4}, Lcom/android/incallui/SecEventDialpadClicked;-><init>(ZZ)V

    invoke-virtual {v3, v5}, Lcom/android/incallui/SecEventBusManager;->post(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_0

    :cond_4
    move v4, v0

    goto :goto_1

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter;

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateHoldButton()V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->emailClicked()V

    goto/16 :goto_0

    :sswitch_b
    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchMessage()V

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchInternet()V

    goto/16 :goto_0

    :sswitch_d
    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchContacts()V

    goto/16 :goto_0

    :sswitch_e
    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchPlanner()V

    goto/16 :goto_0

    :sswitch_f
    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchMemo()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10002e -> :sswitch_7
        0x7f10002f -> :sswitch_6
        0x7f100030 -> :sswitch_8
        0x7f100245 -> :sswitch_1
        0x7f10024a -> :sswitch_3
        0x7f10024b -> :sswitch_4
        0x7f10024d -> :sswitch_5
        0x7f10024f -> :sswitch_9
        0x7f100257 -> :sswitch_0
        0x7f10025d -> :sswitch_a
        0x7f10025e -> :sswitch_b
        0x7f10025f -> :sswitch_c
        0x7f100261 -> :sswitch_d
        0x7f100262 -> :sswitch_e
        0x7f100263 -> :sswitch_f
        0x7f10028c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallButtonView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->removePagerInstance()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    sget-object v0, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    invoke-virtual {v0, p0}, Lcom/android/incallui/SecEventBusManager;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDialpadVisibilityChanged(Lcom/android/incallui/SecEventDialpadClicked;)V
    .locals 1
    .annotation runtime Lcom/android/incallui/SecEventBus;
        after = "com.android.incallui.SecTabletDialpadViewManager"
    .end annotation

    invoke-virtual {p1}, Lcom/android/incallui/SecEventDialpadClicked;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateDiapadButton()V

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->animateForMoveDialpad(Z)V

    return-void
.end method

.method public onEmergencyModeChange(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateVoiceCallButtons()V

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4

    const/4 v3, 0x0

    if-ne p2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange oldState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    new-instance v1, Lcom/android/incallui/SecEventDialpadClicked;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Lcom/android/incallui/SecEventDialpadClicked;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecEventBusManager;->post(Ljava/lang/Object;)V

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtons:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "returnButtonsForDialpad"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMoveButtonsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtonsUpper:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0189

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a018b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtons:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3
.end method

.method public setAudio(I)V
    .locals 2

    iget v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPrevAudioMode:I

    if-eq v1, p1, :cond_1

    iget v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPrevAudioMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateAudioButtons(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateExtraVolumeButtonAboutModeChanged()V

    iput p1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mPrevAudioMode:I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mIsEnabled:Z

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHoldButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mWebexButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mWebexButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mRecordButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mSwitchCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_a
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateMuteButton()V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateAudioButtons(I)V

    return-void
.end method

.method public setViewStateBeforeOutgoingAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mEndCallButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mInCallButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public showAddCallButton(Z)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->enableVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->inflatePagerContainer()V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public updateDiapadButton()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->isDialpadVisible()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDiapadButton..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0d0192

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    const v3, 0x7f0d0191

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->animateForMoveDialpad(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateExtraVolumeButton()V
    .locals 3

    const-string v1, "updateExtraVolumeButton()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/SoundEffect;->isExtraVolOn()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isExtraVolOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mExtraVolumeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateHoldButton()V
    .locals 4

    const/4 v1, 0x0

    const-string v2, "updateHoldButton()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHoldButton:Landroid/widget/ToggleButton;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method
