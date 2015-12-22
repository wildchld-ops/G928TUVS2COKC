.class Lcom/android/systemui/qs/tiles/SmartPauseTile$2;
.super Lcom/android/systemui/qs/SystemSetting;
.source "SmartPauseTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SmartPauseTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$2;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$2;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z
    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$202(Lcom/android/systemui/qs/tiles/SmartPauseTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$2;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    # getter for: Lcom/android/systemui/qs/tiles/SmartPauseTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$300(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$2;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    # getter for: Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$200(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iput v2, v0, Lcom/android/systemui/qs/QSTile$MultiState;->alpha:F

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$2;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$2;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    # getter for: Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$200(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$2;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    # invokes: Lcom/android/systemui/qs/tiles/SmartPauseTile;->getSmartPauseMode()I
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$400(Lcom/android/systemui/qs/tiles/SmartPauseTile;)I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$500(Lcom/android/systemui/qs/tiles/SmartPauseTile;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v2, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    goto :goto_2
.end method
