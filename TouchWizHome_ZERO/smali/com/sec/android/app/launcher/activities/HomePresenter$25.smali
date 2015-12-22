.class Lcom/sec/android/app/launcher/activities/HomePresenter$25;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->runChangeGrid(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$25;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$25;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->addNewPageOnChangingGrid()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$6100(Lcom/sec/android/app/launcher/activities/HomePresenter;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$25;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->mChangeGridHandler:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->access$5402(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;Z)Z

    const-string v0, "HomePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen Grid :: runChangeGrid completed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
