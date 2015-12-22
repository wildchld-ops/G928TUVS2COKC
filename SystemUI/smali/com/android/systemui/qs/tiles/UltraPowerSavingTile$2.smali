.class Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;
.super Landroid/telephony/PhoneStateListener;
.source "UltraPowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    # getter for: Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$100(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "UltraPowerSavingTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreciseCallStateChanged callState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVideoCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v2, "UltraPowerSavingTile"

    const-string v3, "onPreciseCallStateChanged :: IS VT call"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$200(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    # setter for: Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mIsVTCall:Z
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$302(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Z)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "UltraPowerSavingTile"

    const-string v3, "onPreciseCallStateChanged :: IS NOT VT call"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    const/4 v3, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->mIsVTCall:Z
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$302(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Z)Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile$2;->this$0:Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;

    # invokes: Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->getMode()I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$400(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;->access$500(Lcom/android/systemui/qs/tiles/UltraPowerSavingTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
