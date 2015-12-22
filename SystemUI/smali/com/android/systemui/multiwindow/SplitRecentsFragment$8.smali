.class Lcom/android/systemui/multiwindow/SplitRecentsFragment$8;
.super Ljava/lang/Object;
.source "SplitRecentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$8;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$8;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->access$200(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->updateSelectedPackageName(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Recents_SplitRecentsFragment"

    const-string v2, "Activity is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
