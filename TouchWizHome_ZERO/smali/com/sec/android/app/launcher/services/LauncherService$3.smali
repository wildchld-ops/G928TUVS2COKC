.class Lcom/sec/android/app/launcher/services/LauncherService$3;
.super Ljava/lang/Object;
.source "LauncherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/services/LauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/services/LauncherService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/services/LauncherService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/services/LauncherService$3;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/services/LauncherService$3;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    # getter for: Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/launcher/services/LauncherService;->access$000(Lcom/sec/android/app/launcher/services/LauncherService;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/services/LauncherService$3;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    # getter for: Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/launcher/services/LauncherService;->access$000(Lcom/sec/android/app/launcher/services/LauncherService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/services/LauncherService$3;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    # invokes: Lcom/sec/android/app/launcher/services/LauncherService;->getInstalledWidgets()Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/launcher/services/LauncherService;->access$100(Lcom/sec/android/app/launcher/services/LauncherService;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/launcher/services/LauncherService$3;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    # getter for: Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/launcher/services/LauncherService;->access$000(Lcom/sec/android/app/launcher/services/LauncherService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/sec/android/app/launcher/services/LauncherService$3;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    # invokes: Lcom/sec/android/app/launcher/services/LauncherService;->doPackageUpdateWidget(Ljava/util/List;Landroid/util/Pair;)V
    invoke-static {v3, v0, v2}, Lcom/sec/android/app/launcher/services/LauncherService;->access$200(Lcom/sec/android/app/launcher/services/LauncherService;Ljava/util/List;Landroid/util/Pair;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/launcher/services/LauncherService$3;->this$0:Lcom/sec/android/app/launcher/services/LauncherService;

    # getter for: Lcom/sec/android/app/launcher/services/LauncherService;->mWidgetUpdateItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/launcher/services/LauncherService;->access$000(Lcom/sec/android/app/launcher/services/LauncherService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
