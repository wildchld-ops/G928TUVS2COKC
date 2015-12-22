.class final Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowAppListInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v1

    const-string v4, "Recents_MultiWindowAppListInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppListUpdateReceiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListCnt()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemTitle()V

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    # setter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mCurrentDate:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$002(I)I

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.systemui.recents.REFRESH_RECENTS_MULTIWINDOW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$100()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListCnt()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
