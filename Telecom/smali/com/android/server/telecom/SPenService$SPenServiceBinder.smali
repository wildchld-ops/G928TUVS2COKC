.class final Lcom/android/server/telecom/SPenService$SPenServiceBinder;
.super Lcom/android/services/telephony/common/ISPenService$Stub;
.source "SPenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/SPenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SPenServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/SPenService;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/SPenService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/SPenService$SPenServiceBinder;->this$0:Lcom/android/server/telecom/SPenService;

    invoke-direct {p0}, Lcom/android/services/telephony/common/ISPenService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/SPenService;Lcom/android/server/telecom/SPenService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/SPenService$SPenServiceBinder;-><init>(Lcom/android/server/telecom/SPenService;)V

    return-void
.end method


# virtual methods
.method public getMWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    :try_start_0
    # getter for: Lcom/android/server/telecom/SPenService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/SPenService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPenServiceBinder getMWindowStyle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getMWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPenWindow()Z
    .locals 2

    :try_start_0
    # getter for: Lcom/android/server/telecom/SPenService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/SPenService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPenServiceBinder isPenWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->isPenWindow()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
