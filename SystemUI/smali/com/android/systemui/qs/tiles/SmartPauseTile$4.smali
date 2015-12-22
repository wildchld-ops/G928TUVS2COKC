.class Lcom/android/systemui/qs/tiles/SmartPauseTile$4;
.super Ljava/lang/Object;
.source "SmartPauseTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SmartPauseTile;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v4, 0x1

    const-string v2, "SmartPauseTile"

    const-string v3, "showConfirmPopup() - P"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->CHAGALL:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->KLIMT:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    # getter for: Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$600(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->dismissKeyguard()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    # getter for: Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$700(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SMotionGuideHub2014Activity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    const-string v3, "merged_mute_or_pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "hasAdvancedSettings"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "AdvancedSettingsIsTop"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    # getter for: Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$800(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SmartPauseTile"

    const-string v3, "startActivity failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SmartScreenSettingsActivity"

    # invokes: Lcom/android/systemui/qs/tiles/SmartPauseTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$900(Lcom/android/systemui/qs/tiles/SmartPauseTile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
