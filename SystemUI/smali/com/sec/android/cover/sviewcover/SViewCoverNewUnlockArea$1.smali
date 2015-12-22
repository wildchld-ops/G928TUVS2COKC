.class Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverNewUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SViewCoverNewUnlockArea"

    const-string v1, "StylizedClockSettingObserver.onChange : StylizedClockSetting changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setupStylizedClockStyle()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    :cond_0
    return-void
.end method
