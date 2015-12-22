.class public Lcom/samsung/android/cocktailbar/CocktailBarManager;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarShowDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$SysFs;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$States;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$WindowTypes;
    }
.end annotation


# static fields
.field public static final ACTION_COCKTAIL_BAR_COCKTAIL_UNINSTALLED:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_COCKTAIL_UNINSTALLED"

.field public static final ACTION_COCKTAIL_BAR_WAKE_UP_STATE:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_WAKE_UP_STATE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_COCKTAIL_DISABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

.field public static final ACTION_COCKTAIL_DROPED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DROPED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_COCKTAIL_ENABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

.field public static final ACTION_COCKTAIL_UPDATE:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

.field public static final ACTION_COCKTAIL_UPDATE_FEEDS:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE_FEEDS"

.field public static final ACTION_COCKTAIL_VISIBILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_CALLING:I = 0x10002

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_COMMAND:I = 0x10007

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_HEADSET:I = 0x10005

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_INCOMING_CALL:I = 0x10001

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_NOTIFICATION:I = 0x10004

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_SPEN:I = 0x10006
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_TICKER:I = 0x10003

.field public static final COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_ALL:I = 0x9f

.field public static final COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_INDEX_MODE:I = 0x10

.field public static final COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final COCKTAIL_DISPLAY_POLICY_NOT_PROVISION:I = 0x80

.field public static final COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field public static final EXTRA_COCKTAIL_BAR_WAKE_UP_STATE:Ljava/lang/String; = "cocktailbarWakeupState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_COCKTAIL_ID:Ljava/lang/String; = "cocktailId"

.field public static final EXTRA_COCKTAIL_IDS:Ljava/lang/String; = "cocktailIds"

.field public static final EXTRA_COCKTAIL_PROVIDER:Ljava/lang/String; = "cocktailProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_COCKTAIL_VISIBILITY:Ljava/lang/String; = "cocktailVisibility"

.field public static final EXTRA_DRAG_EVENT:Ljava/lang/String; = "com.samsung.android.intent.extra.DRAG_EVENT"

.field public static final INVALID_COCKTAIL_ID:I = 0x0

.field public static final META_DATA_COCKTAIL_PROVIDER:Ljava/lang/String; = "com.samsung.android.cocktail.provider"

.field private static final TAG:Ljava/lang/String; = "CocktailBarManager"

.field public static final TYPE_WAKEUP_GESTURE_PICKUP:I = 0x1

.field public static final TYPE_WAKEUP_GESTURE_RUB:I = 0x2

.field private static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;


# instance fields
.field private final mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFeedsListnerDelegatesLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private mStateListnerDelegatesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mFeedsListnerDelegatesLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .locals 6

    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v3, :cond_0

    const-string v3, "CocktailBarService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    :cond_0
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public activateCocktailBar()V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->activateCocktailBar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public closeCocktail(II)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->closeCocktail(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cocktailBarreboot()V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->cocktailBarreboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cocktailBarshutdown()V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->cocktailBarshutdown(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deactivateCocktailBar()V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->deactivateCocktailBar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllCocktailIds()[I
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getAllCocktailIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktaiBarVisibilityIfChangeLock(IZ)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktaiBarVisibilityIfChangeLock(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktaiBarWakeUpState()Z
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktaiBarWakeUpState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailBarVisibility()I
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarVisibility()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailId(Landroid/content/ComponentName;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    aput v3, v0, v3

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEnabledCocktailIds()[I
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getEnabledCocktailIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowTransientBarCocktailBar()Z
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isAllowTransientBarCocktailBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCocktailBarShifted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabledCocktail(Landroid/content/ComponentName;)Z
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isImmersiveMode()Z
    .locals 4

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getWindowType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .locals 5

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailVisibiltyChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public notifyKeyguardState(Z)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyKeyguardState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onScreenTurnedOn(Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    new-instance v2, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarShowDelegate;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarShowDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->onScreenTurnedOn(Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "registerClient : name or client is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .locals 9

    sget-object v6, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v6, "CocktailBarManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v5

    move-object v4, v3

    :goto_1
    if-nez v4, :cond_4

    :try_start_1
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v3, p0, p1, v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :try_start_3
    sget-object v6, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6, v3, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_3
    :try_start_4
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    :catch_0
    move-exception v1

    :try_start_5
    const-string v6, "CocktailBarManager"

    const-string/jumbo v8, "registerListener : RemoteException : "

    invoke-static {v6, v8, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_4

    :cond_4
    move-object v3, v4

    goto :goto_2

    :cond_5
    move-object v4, v3

    goto :goto_1
.end method

.method public registerOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V
    .locals 9

    sget-object v6, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v6, "CocktailBarManager"

    const-string/jumbo v7, "registerOnFeedsUpdatedListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mFeedsListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v5

    move-object v4, v3

    :goto_1
    if-nez v4, :cond_4

    :try_start_1
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v3, p0, p1, v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :try_start_3
    sget-object v6, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6, v3, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_3
    :try_start_4
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    :catch_0
    move-exception v1

    :try_start_5
    const-string v6, "CocktailBarManager"

    const-string/jumbo v8, "registerOnFeedsUpdatedListener : RemoteException : "

    invoke-static {v6, v8, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_4

    :cond_4
    move-object v3, v4

    goto :goto_2

    :cond_5
    move-object v4, v3

    goto :goto_1
.end method

.method public removeCocktailUIService()V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->removeCocktailUIService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktail(I)Z
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktail(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktailByCategory(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktailByPrivateMode(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktailByPrivateMode(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktail(I)Z
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktail(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktailByCategory(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktailByPrivateMode(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktailByPrivateMode(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendDragEvent(ILandroid/view/DragEvent;)V
    .locals 5

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->sendDragEvent(ILandroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCocktailBarStatus(ZZ)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarStatus(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCocktailBarWakeUpState(Z)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarWakeUpState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDisableTickerView(I)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setDisableTickerView(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setEnabledCocktailIds([I)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setEnabledCocktailIds([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showAndLockCocktailBar()V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showAndLockCocktailBar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showCocktail(I)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showCocktail(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public switchDefaultCocktail()V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->switchDefaultCocktail()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unlockCocktailBar(I)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unlockCocktailBar(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterClient(Landroid/os/IBinder;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "unregisterClient : client is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterClient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .locals 7

    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v4, "CocktailBarManager"

    const-string/jumbo v5, "unregisterListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    :cond_3
    if-nez v2, :cond_4

    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterListener : cannot find the listener"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_4
    :try_start_1
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterListener : RemoteException : "

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public unregisterOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V
    .locals 7

    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v4, "CocktailBarManager"

    const-string/jumbo v5, "unregisterOnFeedsUpdatedListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mFeedsListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    :cond_3
    if-nez v2, :cond_4

    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterOnFeedsUpdatedListener : cannot find the listener"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_4
    :try_start_1
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarFeedsListenerCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterOnFeedsUpdatedListener : RemoteException : "

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .locals 5

    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :try_start_0
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktailBarPosition(I)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarStateFromSystem(I)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarStateFromSystem(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarVisibility(I)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateFeeds(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "updateFeeds : feedsInfoList is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateFeeds(Ljava/lang/String;ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateLongpressGesture(Z)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateLongpressGesture(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsBarLength(I)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsBarLength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsDeadZone(I)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsDeadZone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsGripDisable(Z)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsGripDisable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateWakeupGesture(IZ)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateWakeupGesture(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public wakeupCocktailBar(ZI)V
    .locals 3

    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->wakeupCocktailBar(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
