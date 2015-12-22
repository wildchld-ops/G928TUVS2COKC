.class public Lcom/android/incallui/CallCardPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;
.implements Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardPresenter$CallCardUi;,
        Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;",
        "Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;


# instance fields
.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mDialingCallType:I

.field private mEcidListener:Lcom/android/incallui/EcidClient$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private mPrimary:Lcom/android/incallui/Call;

.field protected mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondary:Lcom/android/incallui/Call;

.field private mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mShowMessageVoiceFromVideo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallCardPresenter;->mDialingCallType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/CallCardPresenter;->mShowMessageVoiceFromVideo:I

    new-instance v0, Lcom/android/incallui/CallCardPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardPresenter$1;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$2;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallCardPresenter$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardPresenter$3;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mEcidListener:Lcom/android/incallui/EcidClient$Listener;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallCardPresenter;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onEcidUpdate(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private areCallsSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private checkManageConferenceVisibleConditionforGED()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getAccountForCall(Lcom/android/incallui/Call;)Landroid/telecom/PhoneAccount;
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v1

    goto :goto_0
.end method

.method private getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const-string v3, "provider_name_display_disable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->getAccountForCall(Lcom/android/incallui/Call;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->hasMultipleCallCapableAccounts()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCallStateIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getIconResId()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/StatusHints;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getCdmaLatestCallFromId()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getCdmaEarliestCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eq v0, p2, :cond_5

    move-object v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private getConferencePhoto(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/16 v3, 0x4000

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConferencePhoto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const v2, 0x7f0200ee

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-object v1

    :cond_0
    const v2, 0x7f0200ea

    goto :goto_0
.end method

.method private getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x4000

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConferenceString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const v1, 0x7f0d013a

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const v1, 0x7f0d0135

    goto :goto_0
.end method

.method private getConnectionLabel()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/GatewayInfo;->getGatewayProviderPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Gateway Application Not Found."

    invoke-static {p0, v4, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getGatewayNumber()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getGatewayAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/CallCardPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/CallCardPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const-string v1, "UNKNOWN NAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubscriptionNumber()Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasOutgoingGatewayCall()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private maybeShowManageConferenceCallButton()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowManageConference()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showManageConferenceCallButton(Z)V

    :cond_0
    return-void
.end method

.method private maybeStartSearch(Lcom/android/incallui/Call;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 4

    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_3
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/incallui/CallerInfoUtils;->sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_5
    return-void
.end method

.method private onEcidUpdate(Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {p1, v0}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_0
    return-void
.end method

.method private onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ecid_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_2
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/SecCallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private setCallbackNumber()V
    .locals 7

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getSubscriptionNumber()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v3

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/telecom/TelecomManager;->getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Numbers are the same; not showing the callback number"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v6, v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallbackNumber(Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, "android.telecom.extra.CALL_BACK_NUMBER"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private shouldShowManageConference()Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    goto :goto_0
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableIMSConferenceInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;-><init>(Lcom/android/incallui/CallCardPresenter;Z)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_0
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    goto :goto_0
.end method

.method private updatePrimaryCallState()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getConnectionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getCallStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->setCallbackNumber()V

    :cond_0
    return-void
.end method

.method private updatePrimaryDisplayInfo()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v0, :cond_1

    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v5, "updatePrimaryDisplayInfo called but ui is null!"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v4, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v4}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v4}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v2

    :goto_1
    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callcardpresenter name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callcardpresenter number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update primary display info for conference call."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v5}, Lcom/android/incallui/CallCardPresenter;->getConferencePhoto(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-interface/range {v1 .. v7}, Lcom/android/incallui/SecCallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    move-object v2, v13

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v12

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presenceMode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v5, "presenceMode From Contact"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presenceMode:I

    invoke-interface {v4, v5}, Lcom/android/incallui/SecCallCardUi;->setPresenceIcon(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update primary display info for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v5, "updateSecondaryDisplayInfo() srvcc"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Conference call"

    :goto_3
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    :goto_4
    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "feature_att"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v5}, Lcom/android/incallui/EcidClient;->getCityId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/incallui/SecCallCardUi;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v9

    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-interface/range {v4 .. v10}, Lcom/android/incallui/SecCallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto/16 :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    const-string v4, "feature_vzw"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/EcidClient;->getCityId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    invoke-interface {v4, v11}, Lcom/android/incallui/SecCallCardUi;->setPrimaryCityId(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v4, v5}, Lcom/android/incallui/SecCallCardUi;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    invoke-interface/range {v4 .. v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/incallui/SecCallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_9
    move-object v2, v13

    goto/16 :goto_2

    :cond_a
    if-eqz v12, :cond_0

    iget v4, v12, Lcom/android/incallui/coreapps/CoreAppsContact;->mPresenceMode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v5, "presenceMode From ContactAgent"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    iget v5, v12, Lcom/android/incallui/coreapps/CoreAppsContact;->mPresenceMode:I

    invoke-interface {v4, v5}, Lcom/android/incallui/SecCallCardUi;->setPresenceIcon(I)V

    goto/16 :goto_0

    :cond_b
    move-object v2, v13

    goto/16 :goto_3

    :cond_c
    move-object v13, v2

    goto/16 :goto_1
.end method

.method private updateSecondaryDisplayInfo()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v5}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v5}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v8

    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-interface/range {v1 .. v9}, Lcom/android/incallui/SecCallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSecondaryDisplayInfo() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v4, "updateSecondaryDisplayInfo() srvcc"

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Conference call"

    :cond_4
    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    :goto_1
    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v5}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v11

    iget-object v12, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object v6, v2

    move v7, v3

    invoke-interface/range {v4 .. v12}, Lcom/android/incallui/SecCallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    invoke-interface/range {v4 .. v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v4 .. v12}, Lcom/android/incallui/SecCallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public endCallClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnecting call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCallTime()J
    .locals 6

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v4, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    goto :goto_0
.end method

.method public getMessageVoiceFromVideo()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/CallCardPresenter;->mShowMessageVoiceFromVideo:I

    return v0
.end method

.method public getPrimaryCall()Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getSecUi()Lcom/android/incallui/SecCallCardUi;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    instance-of v1, v0, Lcom/android/incallui/SecCallCardUi;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/incallui/SecCallCardUi;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryCall()Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getSecondaryCallTime()J
    .locals 6

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v4, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, p2, v1, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mEcidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {p2, v0, v1, v2}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto :goto_1
.end method

.method public onAudioMode(I)V
    .locals 0

    return-void
.end method

.method public onCallStateButtonTouched()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incalluibind/ObjectFactory;->getCallStateButtonBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Sending call state button broadcast: "

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 5

    const/16 v4, 0x80

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableIMSConferenceInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/SecCallCardUi;->needToShowMenu()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/SecCallCardUi;->showMenu(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    if-eqz p1, :cond_2

    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v1

    invoke-static {v1, v4}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v0, p1, v1, p0}, Lcom/android/incallui/secutils/SecCallerInfoUtils;->refreshContactInfoCache(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;)V

    goto :goto_1
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 0

    return-void
.end method

.method public onNumberChanged(Lcom/android/incallui/Call;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    return-void
.end method

.method public onStateChange()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 18

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStateChange() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v14, 0x0

    const/16 v16, 0x0

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v6, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v14

    :cond_2
    :goto_1
    if-eqz v14, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "onStateChange - not update because of conference ended"

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-eq v0, v6, :cond_4

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v6, :cond_6

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v14

    if-nez v14, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v14

    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6, v7}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v16

    goto :goto_1

    :cond_6
    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v6, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSecUi()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "roaming_enhancement"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->dismissCallRoamingGuardDialog(Z)V

    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6, v7}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v14

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v14, v6}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v16

    goto :goto_1

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Primary call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Secondary call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v6, v14}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v6

    if-nez v6, :cond_16

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v6

    if-nez v6, :cond_17

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const-string v6, "ecid_enable"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/CallCardPresenter;->mEcidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {v6, v7, v8, v9}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/CallCardPresenter;->mEcidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {v6, v7, v8, v9}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    :cond_9
    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getOutgoingCallMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    if-nez v16, :cond_a

    const/4 v15, 0x1

    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v6, :cond_d

    if-nez v15, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v6, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->checkManageConferenceVisibleConditionforGED()Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v9, 0x4

    if-ne v6, v9, :cond_18

    const/4 v6, 0x1

    :goto_4
    invoke-static {v7, v8, v6}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    const-string v6, "ecid_enable"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v6}, Lcom/android/incallui/EcidClient;->onCallStateChange(Lcom/android/incallui/Call;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getPhoneId()I

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Lcom/android/incallui/SecCallCardUi;->showIncomingPopupForSecondCall(III)V

    :cond_e
    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/incallui/SecCallCardUi;->setCallCharge(I)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v6, :cond_19

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1c

    const-string v6, "Starting the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v8, v9}, Lcom/android/incallui/CallTimer;->start(J)Z

    :goto_6
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    :goto_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1e

    :cond_11
    const/4 v6, 0x1

    :goto_8
    invoke-interface {v4, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPhotoVisible(Z)V

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    invoke-static {v5}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v6, :cond_1f

    const/4 v12, 0x1

    :goto_9
    const/4 v6, 0x4

    if-eq v5, v6, :cond_20

    const/4 v6, 0x1

    :goto_a
    invoke-interface {v4, v12, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setEndCallButtonEnabled(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/incallui/SecCallCardUi;->needToShowMenu()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/incallui/SecCallCardUi;->showMenu(Z)V

    const-string v6, "tablet_device"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v13

    if-eqz v13, :cond_13

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/incallui/SecCallCardUi;->needToShowVolumeButton()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/incallui/SecCallCardUi;->showVolumeButton(Z)V

    :cond_13
    const-string v6, "phone_number_locator"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v6, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/incallui/SecCallCardUi;->setPrimaryPhoneNumberLocator(Ljava/lang/String;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/SecCallCardUi;->updateDisplayChildCallChanged()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v7

    const/4 v6, 0x4

    if-ne v5, v6, :cond_21

    const/4 v6, 0x1

    :goto_b
    invoke-interface {v7, v6}, Lcom/android/incallui/SecCallCardUi;->manageMultiTouchStub(Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/incallui/SecModifyCallAdapter;->getInstance()Lcom/android/incallui/SecModifyCallAdapter;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/incallui/SecModifyCallAdapter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto/16 :goto_0

    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_19
    if-eqz v17, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v9, 0x4

    if-ne v6, v9, :cond_1b

    const/4 v6, 0x1

    :goto_c
    invoke-static {v7, v8, v6}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    const-string v6, "ecid_enable"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-static {v6}, Lcom/android/incallui/EcidClient;->onCallStateChange(Lcom/android/incallui/Call;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto/16 :goto_5

    :cond_1b
    const/4 v6, 0x0

    goto :goto_c

    :cond_1c
    const-string v6, "Canceling the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v6}, Lcom/android/incallui/CallTimer;->cancel()V

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-interface {v4, v6, v8, v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    goto/16 :goto_6

    :cond_1d
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/telecom/DisconnectCause;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/telecom/DisconnectCause;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1f
    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_20
    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_21
    const/4 v6, 0x0

    goto/16 :goto_b
.end method

.method public onSupportedAudioMode(I)V
    .locals 0

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2

    const-string v0, "onUiReady()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerToFirst(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->addListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState()V

    :cond_2
    iget v0, p0, Lcom/android/incallui/CallCardPresenter;->sPresenters:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/CallCardPresenter;->sPresenters:I

    iget v0, p0, Lcom/android/incallui/CallCardPresenter;->sPresenters:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->onStateChange()V

    :cond_3
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 1

    const-string v0, "onUiResume()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "onUiUnready()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    iget v0, p0, Lcom/android/incallui/CallCardPresenter;->sPresenters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallCardPresenter;->sPresenters:I

    iget v0, p0, Lcom/android/incallui/CallCardPresenter;->sPresenters:I

    if-lez v0, :cond_0

    const-string v0, "onUiUnready-abort, still using presenter"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    goto :goto_0
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUpdateCoreAppsContact()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public secondaryInfoClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    const-string v0, "Secondary info clicked but no secondary call."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swapping call to foreground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMessageVoiceFromVideo(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/CallCardPresenter;->mShowMessageVoiceFromVideo:I

    return-void
.end method

.method public updateCallTime()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const-string v10, "support_mobilecarrier"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneMode()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v10}, Lcom/android/incallui/CallTimer;->cancel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_2

    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_5

    :cond_2
    if-eqz v3, :cond_3

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-interface {v3, v10, v12, v13}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    :cond_3
    const-string v10, "vzw_volte_ui"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/android/incallui/SecCallCardUi;->setSecondaryCallElapsedTime(ZLjava/lang/String;)V

    :cond_4
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v10}, Lcom/android/incallui/CallTimer;->cancel()V

    goto :goto_0

    :cond_5
    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    const-string v10, "ctc_call_time_duration"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v0

    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_7

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_7

    const/4 v10, 0x1

    invoke-interface {v3, v10, v4, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    :cond_7
    const-string v10, "vzw_volte_ui"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v6

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getSecUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11, v8, v9}, Lcom/android/incallui/SecCallCardUi;->setSecondaryCallElapsedTime(ZJ)V

    goto/16 :goto_0
.end method

.method public updateEri()V
    .locals 2

    const-string v1, "updateERI"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/SecCallCardUi;->updateEri()V

    goto :goto_0
.end method

.method public updatePhotoForLinkedin(Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhoto callId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->callId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
