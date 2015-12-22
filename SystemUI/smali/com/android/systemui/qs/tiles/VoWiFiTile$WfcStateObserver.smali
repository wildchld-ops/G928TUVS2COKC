.class Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;
.super Landroid/database/ContentObserver;
.source "VoWiFiTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VoWiFiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcStateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    new-instance v0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;Lcom/android/systemui/qs/tiles/VoWiFiTile$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
