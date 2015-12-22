.class Lcom/sec/android/cover/sviewcover/SViewCoverView$3;
.super Ljava/lang/Object;
.source "SViewCoverView.java"

# interfaces
.implements Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    :cond_0
    return-void
.end method
