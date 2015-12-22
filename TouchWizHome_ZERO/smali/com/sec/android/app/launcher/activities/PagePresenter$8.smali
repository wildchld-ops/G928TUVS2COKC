.class Lcom/sec/android/app/launcher/activities/PagePresenter$8;
.super Ljava/lang/Object;
.source "PagePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/PagePresenter;->runPopulateViewTask(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/PagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$8;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/PagePresenter;->checkEmptyHomeFolder()V

    return-void
.end method
