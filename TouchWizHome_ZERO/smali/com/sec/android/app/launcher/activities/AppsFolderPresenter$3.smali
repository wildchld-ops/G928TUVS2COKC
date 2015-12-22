.class Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$3;
.super Ljava/lang/Object;
.source "AppsFolderPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->moveToPage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

.field final synthetic val$toMove:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    iput p2, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$3;->val$toMove:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "Check"

    const-string v1, "FolderPresenterBase::onDragExit() left run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->mParentPresenter:Lcom/sec/android/app/launcher/activities/PresenterBase;

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$3;->val$toMove:I

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/PresenterBase;->moveToPage(IF)V

    return-void
.end method
