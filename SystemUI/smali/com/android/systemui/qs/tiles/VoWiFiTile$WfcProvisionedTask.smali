.class Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;
.super Landroid/os/AsyncTask;
.source "VoWiFiTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VoWiFiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcProvisionedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;Lcom/android/systemui/qs/tiles/VoWiFiTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    # invokes: Lcom/android/systemui/qs/tiles/VoWiFiTile;->isWfcProvisioned()Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$200(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z

    move-result v2

    # setter for: Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$102(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$100(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    # invokes: Lcom/android/systemui/qs/tiles/VoWiFiTile;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$300(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    const-string v2, "com.oem.smartwifi.WFC_AIR_PLANE_MODE"

    # invokes: Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$400(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # invokes: Lcom/android/systemui/qs/tiles/VoWiFiTile;->updateWfcState(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$500(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    const-string v2, "com.oem.smartwifisupport.WIFI_CALLING"

    # invokes: Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$600(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VoWiFiTile"

    const-string v2, "Cannot find WfcStartupActivity!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
