.class Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkStatsViewr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$300(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_network_statsr"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "status_bar_network_stats_update_frequency"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "status_bar_network_upload_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "status_bar_network_download_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "status_bar_network_link_upload_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "theme_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "status_bar_network_link_download_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "status_bar_network_hide"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(Z)V
    .locals 12

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$500(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$600(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$700(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "status_bar_network_statsr"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_7

    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    const/4 v7, 0x1

    :goto_1
    # setter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mActivated:Z
    invoke-static {v8, v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$002(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;Z)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$900(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "status_bar_network_stats_update_frequency"

    const-wide/16 v10, 0x1f4

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mRefreshInterval:J
    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$802(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;J)J

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "status_bar_network_link_download_color"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "theme_color"

    const v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "theme_color"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "status_bar_network_download_color"

    const v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "status_bar_network_download_color"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    :goto_2
    const/high16 v7, -0x80000000

    if-eq v4, v7, :cond_1

    const/4 v7, -0x2

    if-ne v4, v7, :cond_2

    :cond_1
    move v4, v2

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mTextViewRx:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "status_bar_network_link_upload_color"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "theme_color"

    const v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "theme_color"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "status_bar_network_upload_color"

    const v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "status_bar_network_upload_color"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    :goto_3
    const/high16 v7, -0x80000000

    if-eq v4, v7, :cond_4

    const/4 v7, -0x2

    if-ne v4, v7, :cond_5

    :cond_4
    move v4, v2

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mTextViewTx:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "status_bar_network_hide"

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_8

    const/4 v7, 0x1

    :goto_4
    # setter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mNetStatsHide:Z
    invoke-static {v8, v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$1402(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;Z)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->updateStats()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$200(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)V

    return-void

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public unobserver()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->access$400(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
