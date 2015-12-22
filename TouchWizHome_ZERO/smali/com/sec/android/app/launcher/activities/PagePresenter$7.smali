.class Lcom/sec/android/app/launcher/activities/PagePresenter$7;
.super Ljava/lang/Object;
.source "PagePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/PagePresenter;->onItemLoadCompleted(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/PagePresenter;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$7;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$7;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$7;->val$options:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter;->runPopulateViewTask(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
