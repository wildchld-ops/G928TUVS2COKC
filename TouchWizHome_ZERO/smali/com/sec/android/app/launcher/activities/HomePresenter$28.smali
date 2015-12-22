.class Lcom/sec/android/app/launcher/activities/HomePresenter$28;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->doneforThemeGrid()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$28;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sget v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageColumn:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    sget v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mBackupPageRow:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$28;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updateDBForPresenters()V

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v0

    sget v1, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    sget v2, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->setHomePageGridSize(II)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$28;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$28;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/HomePresenter;->mMiniPagePresenter:Lcom/sec/android/app/launcher/activities/MiniPagePresenter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$1400(Lcom/sec/android/app/launcher/activities/HomePresenter;)Lcom/sec/android/app/launcher/activities/MiniPagePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/MiniPagePresenter;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$28;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->clearTempPagePresenters()V

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_COLUMNS:I

    sput v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->PREVIOUS_HOME_ROWS:I

    sput v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_COLUMNS:I

    sput v0, Lcom/sec/android/app/launcher/activities/HomePresenter;->NEW_HOME_ROWS:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$28;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->NORMAL_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    return-void
.end method
