.class Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DualScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dualscreen/DualScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/dualscreen/DualScreenSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/dualscreen/DualScreenSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/dualscreen/DualScreenSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v1, "DualScreenSettings"

    const-string/jumbo v2, "observe()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/dualscreen/DualScreenSettings;

    # getter for: Lcom/samsung/android/dualscreen/DualScreenSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenSettings;->access$000(Lcom/samsung/android/dualscreen/DualScreenSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_screen_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "desktop_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "dual_screen_display_chooser_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "dual_screen_opposite_launch_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "dualscreen_prototype"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "subhome_package_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/dualscreen/DualScreenSettings;

    # invokes: Lcom/samsung/android/dualscreen/DualScreenSettings;->updateSettings()V
    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenSettings;->access$100(Lcom/samsung/android/dualscreen/DualScreenSettings;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/DualScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/dualscreen/DualScreenSettings;

    # invokes: Lcom/samsung/android/dualscreen/DualScreenSettings;->updateSettings()V
    invoke-static {v0}, Lcom/samsung/android/dualscreen/DualScreenSettings;->access$100(Lcom/samsung/android/dualscreen/DualScreenSettings;)V

    return-void
.end method
