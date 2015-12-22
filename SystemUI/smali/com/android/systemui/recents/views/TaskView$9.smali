.class Lcom/android/systemui/recents/views/TaskView$9;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->handleOnClickMultiWindowBtn(ILandroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$9;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$9;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.systemui.recents.SHOW_SPLIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.multiwindow.RecentsMultiWindowActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10818000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    const-string v3, "recentUI.multiwindow.package"

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$9;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$9;->this$0:Lcom/android/systemui/recents/views/TaskView;

    # getter for: Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recents/views/TaskView;->access$000(Lcom/android/systemui/recents/views/TaskView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
