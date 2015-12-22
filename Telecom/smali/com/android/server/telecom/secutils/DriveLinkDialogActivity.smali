.class public Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;
.super Landroid/app/Activity;
.source "DriveLinkDialogActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

.field private mContext:Landroid/content/Context;

.field private mDismissButton:Landroid/widget/Button;

.field mHandler:Landroid/os/Handler;

.field private mIsNumberSaved:Z

.field private mIsPrivate:Z

.field private mMissedIconLand:Landroid/view/ViewGroup;

.field private mMissedIconPort:Landroid/widget/ImageView;

.field private mName:Ljava/lang/String;

.field private mPreviousLocale:Ljava/util/Locale;

.field private mRejectDialog:Landroid/view/ViewGroup;

.field private mRejectDialogBody:Landroid/view/ViewGroup;

.field private mRejectMsgView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsNumberSaved:Z

    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mDismissButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialog:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialogBody:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    new-instance v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;-><init>(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsNumberSaved:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    return-object p1
.end method

.method private formatPhoneNumberDriveLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    const/16 v4, 0x23

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_2

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarmodeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialog:Landroid/view/ViewGroup;

    const v0, 0x7f0d0004

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialogBody:Landroid/view/ViewGroup;

    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    const v0, 0x7f0d0003

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    const/high16 v0, 0x7f0d0000

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mDismissButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mDismissButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mDismissButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;-><init>(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->setRejectMsgView()V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->updateDialogLayout()V

    goto :goto_0
.end method

.method private playNotiSoundAndReadOutRejectMsg()V
    .locals 5

    const/16 v4, 0x65

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method private setContentView()V
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarmodeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeNaviOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->setContentView(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->setContentView(I)V

    goto :goto_0
.end method

.method private setRejectMsgView()V
    .locals 4

    const v2, 0x7f08006e

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarmodeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08006d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->formatPhoneNumberDriveLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateDialogLayout()V
    .locals 6

    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarmodeHome()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_6

    move v1, v0

    :goto_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeNaviOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialog:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialog:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v1, :cond_7

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2
    iget-object v3, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialog:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialogBody:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialogBody:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_3
    iget-object v3, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialogBody:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    :cond_8
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    iput-object v2, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->updateDialogLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "private_num"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number_saved_extra"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsNumberSaved:Z

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->setContentView()V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->init()V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->playNotiSoundAndReadOutRejectMsg()V

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name_number_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "private_num"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number_saved_extra"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsNumberSaved:Z

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->setRejectMsgView()V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->playNotiSoundAndReadOutRejectMsg()V

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    const-string v0, "name_number_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarmodeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->finish()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
