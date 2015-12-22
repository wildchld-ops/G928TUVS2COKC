.class Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverMissedEventActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->finish()V

    return-void
.end method
