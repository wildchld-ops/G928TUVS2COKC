.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$audioServiceF:Landroid/media/AudioService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mountServiceF:Lcom/android/server/MountService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

.field final synthetic val$sLocationF:Landroid/os/IBinder;

.field final synthetic val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$vrManagerF:Lcom/android/server/VRManagerService;

.field final synthetic val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/VRManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/cover/CoverManagerService;Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$mountServiceF:Lcom/android/server/MountService;

    iput-object p4, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p5, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p6, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p7, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p8, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p9, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Landroid/media/AudioService;

    iput-object p10, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p11, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iput-object p12, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object p13, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    iput-object p14, p0, Lcom/android/server/SystemServer$2;->val$sLocationF:Landroid/os/IBinder;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$vrManagerF:Lcom/android/server/VRManagerService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v3, "SystemServer"

    const-string v4, "Making services ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v3

    const/16 v4, 0x226

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "SystemServer"

    const-string v4, "WebViewFactory preparation"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer()V

    const/4 v3, -0x2

    :try_start_1
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/SystemServer;->startFingerprintService(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # invokes: Lcom/android/server/SystemServer;->startThemeService()V
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$mountServiceF:Lcom/android/server/MountService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$mountServiceF:Lcom/android/server/MountService;

    invoke-virtual {v3}, Lcom/android/server/MountService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v3}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_4
    :try_start_5
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v3}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_5
    :try_start_6
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    :cond_3
    :goto_6
    :try_start_7
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    :cond_4
    :goto_7
    :try_start_8
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    :cond_5
    :goto_8
    :try_start_9
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Landroid/media/AudioService;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Landroid/media/AudioService;

    invoke-virtual {v3}, Landroid/media/AudioService;->systemReady()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    :cond_6
    :goto_9
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/Watchdog;->start()V

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v3

    const/16 v4, 0x258

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    :try_start_a
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemRunning()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    :cond_7
    :goto_a
    :try_start_b
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    :cond_8
    :goto_b
    :try_start_c
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    :cond_9
    :goto_c
    :try_start_d
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$sLocationF:Landroid/os/IBinder;

    if-eqz v3, :cond_a

    const-string v3, "com.samsung.location.SLocationLoader"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "systemReady"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/SystemServer$2;->val$sLocationF:Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    :cond_a
    :goto_d
    :try_start_e
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v3}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    :cond_b
    :goto_e
    :try_start_f
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v3}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    :cond_c
    :goto_f
    :try_start_10
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v3}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    :cond_d
    :goto_10
    :try_start_11
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v3}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    :cond_e
    :goto_11
    :try_start_12
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$vrManagerF:Lcom/android/server/VRManagerService;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$vrManagerF:Lcom/android/server/VRManagerService;

    invoke-virtual {v3}, Lcom/android/server/VRManagerService;->systemReady()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    :cond_f
    :goto_12
    :try_start_13
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v3}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    :cond_10
    :goto_13
    :try_start_14
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    :cond_11
    :goto_14
    :try_start_15
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v3}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    :cond_12
    :goto_15
    :try_start_16
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    :cond_13
    :goto_16
    :try_start_17
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/SystemServer;->startEmergencyModeService(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    :goto_17
    :try_start_18
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$coverServiceF:Lcom/android/server/cover/CoverManagerService;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverManagerService;->systemReady()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_18

    :cond_14
    :goto_18
    :try_start_19
    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$sAccessoryManagerF:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->systemReady()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    :cond_15
    :goto_19
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "observing native crashes"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "starting System UI"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "starting Theme Service"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making Mount Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making Network Score Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catch_5
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making Network Managment Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_6
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making Network Stats Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catch_7
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making Network Policy Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_8
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making Connectivity Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :catch_9
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying AudioService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catch_a
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying WallpaperService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :catch_b
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying InputMethodService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_c
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying Location Service running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :catch_d
    move-exception v0

    const-string v3, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "making SLocation Service ready :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :catch_e
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CountryDetectorService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    :catch_f
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying NetworkTimeService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :catch_10
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CommonTimeManagementService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :catch_11
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying TextServicesManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    :catch_12
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v4, "making VR Manager Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :catch_13
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying AssetAtlasService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_14
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying InputManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    :catch_15
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying TelephonyRegistry running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    :catch_16
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying MediaRouterService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :catch_17
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying EmergencyModeService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    :catch_18
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying CoverManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    :catch_19
    move-exception v0

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v4, "Notifying SAccessoryManager running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19
.end method
