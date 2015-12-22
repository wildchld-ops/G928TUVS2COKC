.class Lcom/android/systemui/volume/ZenModePanel$10;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Lcom/android/systemui/volume/SegmentedButtons$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$2300(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method

.method public onSelected(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$2200(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/SegmentedButtons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SegmentedButtons;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZenButtonsCallback selected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/ZenModePanel$10$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/ZenModePanel$10$1;-><init>(Lcom/android/systemui/volume/ZenModePanel$10;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
