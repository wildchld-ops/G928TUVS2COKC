.class public abstract Lcom/android/systemui/qs/QSTile;
.super Ljava/lang/Object;
.source "QSTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTile$MultiState;,
        Lcom/android/systemui/qs/QSTile$SignalState;,
        Lcom/android/systemui/qs/QSTile$BooleanState;,
        Lcom/android/systemui/qs/QSTile$State;,
        Lcom/android/systemui/qs/QSTile$UserBoolean;,
        Lcom/android/systemui/qs/QSTile$AnimationIcon;,
        Lcom/android/systemui/qs/QSTile$AnimType;,
        Lcom/android/systemui/qs/QSTile$ResourceIcon;,
        Lcom/android/systemui/qs/QSTile$Icon;,
        Lcom/android/systemui/qs/QSTile$Host;,
        Lcom/android/systemui/qs/QSTile$Callback;,
        Lcom/android/systemui/qs/QSTile$H;,
        Lcom/android/systemui/qs/QSTile$DetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TState:",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/Listenable;"
    }
.end annotation


# static fields
.field public static final ACTION_ON_COVER_ERROR:I = 0x3

.field public static final ACTION_ON_COVER_JUST_SET:I = 0x2

.field public static final ACTION_ON_COVER_NEED_TO_OPEN_COVER:I = 0x1

.field public static final ACTION_ON_COVER_NONE:I = 0x0

.field protected static final DEBUG:Z

.field private static final DEFAULT_SCREENREADER_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field public static final DISABLE_ALPHA:F = 0.4f

.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field private static final ENABLED_SERVICES_SEPARATOR:C = ':'

.field public static final ENABLE_ALPHA:F = 1.0f

.field public static final QSTILE_DETAILVIEW_TYPE_ROTATE:I = 0x2

.field public static final QSTILE_DETAILVIEW_TYPE_SILENT:I = 0x1

.field public static final QSTILE_DETAILVIEW_TYPE_TORCH:I = 0x3

.field private static final SAMSUNG_SCREENREADER_NAME:Ljava/lang/String; = "com.samsung.android.app.talkback"

.field private static mDiagnosticLogs:Z

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnnounceNextStateChange:Z

.field private mCallback:Lcom/android/systemui/qs/QSTile$Callback;

.field protected final mContext:Landroid/content/Context;

.field protected mCoverState:Z

.field private mEditCallback:Lcom/android/systemui/qs/QSTile$Callback;

.field protected final mHandler:Lcom/android/systemui/qs/QSTile$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<TTState;>.H;"
        }
    .end annotation
.end field

.field protected final mHost:Lcom/android/systemui/qs/QSTile$Host;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mNeedFontChange:Z

.field protected final mState:Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mTmpState:Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTState;"
        }
    .end annotation
.end field

.field protected final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "QSTile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTile;->DEBUG:Z

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/systemui/qs/QSTile;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/QSTile;->mDiagnosticLogs:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QSTile."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSTile;->mNeedFontChange:Z

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSTile;->mCoverState:Z

    new-instance v0, Lcom/android/systemui/qs/QSTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSTile$1;-><init>(Lcom/android/systemui/qs/QSTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/qs/QSTile$H;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSTile$H;-><init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;Lcom/android/systemui/qs/QSTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleSetCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/QSTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleShowDetail(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;->handleSetEditCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    :cond_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lcom/android/systemui/qs/QSTile;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected static getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-ltz v0, :cond_0

    array-length v5, v4

    if-ge v0, v5, :cond_0

    aget-object v5, v4, v0

    if-eqz v5, :cond_0

    aget-object v2, v4, v0

    :cond_0
    if-nez v2, :cond_1

    :goto_0
    return-object p2

    :cond_1
    move-object p2, v2

    goto :goto_0
.end method

.method private handleScanStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private handleSetCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private handleSetEditCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/QSTile;->mEditCallback:Lcom/android/systemui/qs/QSTile$Callback;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private handleShowDetail(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onShowDetail(Z)V

    :cond_0
    return-void
.end method

.method private handleStateChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->shouldAnnouncementBeDelayed()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-interface {v2, v3}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->composeChangeAnnouncement()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v2, v0}, Lcom/android/systemui/qs/QSTile$Callback;->onAnnouncementRequested(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mEditCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mEditCallback:Lcom/android/systemui/qs/QSTile$Callback;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-interface {v2, v3}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleToggleStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onToggleStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTile;->mDiagnosticLogs:Z

    return-void
.end method

.method private sendLogs(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CLICK"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "feature"

    const-string v3, "QP06"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v2, "extra"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Tile"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v2, "LONGCLICK"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "feature"

    const-string v3, "QS03"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public click()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/QSTile;->mDiagnosticLogs:Z

    if-eqz v0, :cond_0

    const-string v0, "CLICK"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSTile;->sendLogs(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->sendCoverLogs()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public coverStateChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v3, 0xb

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTileView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public doNext()V
    .locals 0

    return-void
.end method

.method public doPrevious()V
    .locals 0

    return-void
.end method

.method public fireScanStateChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v3, 0x9

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public fireToggleStateChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getActionMessageOnCover()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getActionTypeOnCover()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method public getNeedFontChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTile;->mNeedFontChange:Z

    return v0
.end method

.method protected getReadySimCount()I
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsDGGDuos:Z

    if-eqz v7, :cond_6

    :cond_0
    new-array v3, v10, [I

    iget-object v7, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v9

    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9,9"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    if-eq v7, v10, :cond_1

    :goto_0
    return v6

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->hasSlotSwiching()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v6, :cond_3

    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mIsUseIPC:Z

    if-eqz v6, :cond_4

    aget v6, v3, v5

    if-ne v6, v9, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget v6, v3, v5

    if-ne v6, v9, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v6, v2

    goto :goto_0

    :cond_6
    const-string v4, "NOT_READY"

    const/4 v5, 0x0

    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_8

    const-string v6, "gsm.sim.state"

    const-string v7, "NOT_READY"

    invoke-static {v6, v5, v7}, Lcom/android/systemui/qs/QSTile;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v2, v2, 0x1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    move v6, v2

    goto :goto_0
.end method

.method public getState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method protected abstract handleClick()V
.end method

.method protected handleCoverStateChanged(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    return-void
.end method

.method protected handleRefreshState(Ljava/lang/Object;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/qs/QSTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mTmpState:Lcom/android/systemui/qs/QSTile$State;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile;->mCoverState:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->isCoveredState()Z

    move-result v3

    if-eq v2, v3, :cond_4

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTile;->onCoverStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile;->isCoveredState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSTile;->mCoverState:Z

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile;->handleStateChanged()V

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile;->mNeedFontChange:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTile;->setTileFontSizeForApn(Lcom/android/systemui/qs/QSTile$State;)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleSecondaryClick()V
    .locals 0

    return-void
.end method

.method protected abstract handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTState;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected handleUserSwitch(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public isCoveredState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    goto :goto_0
.end method

.method protected isEnabledScreenReaderService()Z
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/QSTile;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "com.samsung.android.app.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected isMSim()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longClick()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/QSTile;->mDiagnosticLogs:Z

    if-eqz v0, :cond_0

    const-string v0, "LONGCLICK"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSTile;->sendLogs(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected makeContentDescription(II)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, -0x1

    iget-object v5, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method protected abstract newTileState()Lcom/android/systemui/qs/QSTile$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTState;"
        }
    .end annotation
.end method

.method public onCoverStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Callback;->onCoverStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    :cond_0
    return-void
.end method

.method protected final refreshState()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected final refreshState(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected removeEnabledScreenReaderValue()V
    .locals 22

    const/16 v4, 0x3a

    new-instance v15, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/qs/QSTile;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_0

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    :cond_0
    const-string v18, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    const-string v18, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v17

    :try_start_0
    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v5, 0x1

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_4

    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "enabled_accessibility_services"

    const/16 v20, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v12, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    if-eqz v12, :cond_6

    move-object v6, v15

    invoke-virtual {v6, v12}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v5, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.samsung.settings.action.talkback_toggled"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v18, "Utils Accessibility"

    const-string v19, "All sound off broadcast"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "accessibility_enabled"

    if-eqz v5, :cond_7

    const/16 v18, 0x1

    :goto_2
    const/16 v21, -0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_7
    const/16 v18, 0x0

    goto :goto_2

    :catch_0
    move-exception v18

    goto/16 :goto_0
.end method

.method public secondaryClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendCoverLogs()V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.sec.android.cover"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    const-string v3, "CQ01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Tile"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEditCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setQsTileViewSoundEffectsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Callback;->setTileViewSoundEffectsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setStatusbar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public setTileFontSizeForApn(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mCallback:Lcom/android/systemui/qs/QSTile$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Callback;->setTileFontSizeForApn(Lcom/android/systemui/qs/QSTile$State;)V

    :cond_0
    return-void
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showDetail(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected showTalkBackDisablePopup(II)V
    .locals 7

    const/16 v6, 0x7d8

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0414

    new-instance v5, Lcom/android/systemui/qs/QSTile$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/QSTile$3;-><init>(Lcom/android/systemui/qs/QSTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/systemui/qs/QSTile$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/QSTile$2;-><init>(Lcom/android/systemui/qs/QSTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/QSTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_4

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/QSTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method protected startSettingsActivity(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected startSettingsActivity(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$Host;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public supportsDualTargets()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public userSwitch(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/qs/QSTile$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
