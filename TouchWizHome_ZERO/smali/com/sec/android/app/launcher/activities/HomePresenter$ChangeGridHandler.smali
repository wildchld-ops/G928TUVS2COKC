.class public Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;
.super Landroid/os/Handler;
.source "HomePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeGridHandler"
.end annotation


# static fields
.field private static final MSG_CHANGE_GRID_CANCELED:I = 0x3

.field private static final MSG_CHANGE_GRID_DONE:I = 0x4

.field private static final MSG_CHANGE_GRID_PROGRESS:I = 0x2

.field private static final MSG_CHANGE_GRID_RUN:I = 0x1


# instance fields
.field private mIsGridChanging:Z

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z

    return p1
.end method


# virtual methods
.method public checkOngoingChangeGrid(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->startChangeGrid(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v6, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z

    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sget v9, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "column"

    sget v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "row"

    sget v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1, v0, v9}, Lcom/sec/android/app/launcher/activities/HomePresenter;->runChangeGrid(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->checkOngoingChangeGrid(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "changeMode"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "backPressed"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "homePressed"

    invoke-virtual {v4, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancelChangeGrid(ZZZ)V

    goto :goto_0

    :pswitch_3
    iput-boolean v6, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->mIsGridChanging:Z

    sget v7, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sget v8, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->doneChangeGrid()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4000(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "HSGR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startChangeGrid(Landroid/os/Bundle;)V
    .locals 4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const-string v2, "action"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->RUN:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    :goto_0
    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->CANCEL:Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/HomePresenter$ChangeGridState;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0
.end method
