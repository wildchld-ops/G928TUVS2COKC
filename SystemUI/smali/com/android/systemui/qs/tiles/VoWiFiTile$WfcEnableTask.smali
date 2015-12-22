.class Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;
.super Landroid/os/AsyncTask;
.source "VoWiFiTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VoWiFiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcEnableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;Lcom/android/systemui/qs/tiles/VoWiFiTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    # invokes: Lcom/android/systemui/qs/tiles/VoWiFiTile;->queryWfcState()I
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$700(Lcom/android/systemui/qs/tiles/VoWiFiTile;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v5, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$800(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$900(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    # invokes: Lcom/android/systemui/qs/tiles/VoWiFiTile;->enableWifi()V
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$1000(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    # setter for: Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$1202(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$1100(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
