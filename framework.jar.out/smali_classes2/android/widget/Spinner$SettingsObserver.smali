.class Landroid/widget/Spinner$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/widget/Spinner$SettingsObserver;->this$0:Landroid/widget/Spinner;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Landroid/widget/Spinner$SettingsObserver;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Spinner$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Landroid/widget/Spinner$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "show_button_background"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Landroid/widget/Spinner$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "show_button_background"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    # invokes: Landroid/widget/Spinner;->setShowButtonBackgroundChange(Z)V
    invoke-static {p1, v0}, Landroid/widget/Spinner;->access$800(Landroid/widget/Spinner;Z)V

    :goto_0
    return-void

    :cond_0
    # invokes: Landroid/widget/Spinner;->setShowButtonBackgroundChange(Z)V
    invoke-static {p1, v2}, Landroid/widget/Spinner;->access$800(Landroid/widget/Spinner;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Landroid/widget/Spinner$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "show_button_background"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner$SettingsObserver;->this$0:Landroid/widget/Spinner;

    const/4 v1, 0x1

    # invokes: Landroid/widget/Spinner;->setShowButtonBackgroundChange(Z)V
    invoke-static {v0, v1}, Landroid/widget/Spinner;->access$800(Landroid/widget/Spinner;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner$SettingsObserver;->this$0:Landroid/widget/Spinner;

    # invokes: Landroid/widget/Spinner;->setShowButtonBackgroundChange(Z)V
    invoke-static {v0, v2}, Landroid/widget/Spinner;->access$800(Landroid/widget/Spinner;Z)V

    goto :goto_0
.end method

.method public unregisterObserver()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Spinner$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Spinner$SettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method
