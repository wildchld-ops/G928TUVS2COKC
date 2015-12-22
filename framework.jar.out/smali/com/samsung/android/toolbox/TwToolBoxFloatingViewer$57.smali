.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

.field final synthetic val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iput-object p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;->val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;->val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->toggleTorch()V
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "toolbox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TorchLight Runtime error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onUpdateEnableStatus()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;->val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "activity_zone_is_using_torch_light"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isEnabled:Z

    return-void
.end method

.method public onUpdateToggleStatus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;->val$m:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$57;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z
    invoke-static {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$7400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    return-void
.end method
