.class Lcom/android/settings/spen/SPenSettingsMenu$3;
.super Landroid/database/ContentObserver;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/spen/SPenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spen/SPenSettingsMenu$3;->this$0:Lcom/android/settings/spen/SPenSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu$3;->this$0:Lcom/android/settings/spen/SPenSettingsMenu;

    # invokes: Lcom/android/settings/spen/SPenSettingsMenu;->updateState()V
    invoke-static {v0}, Lcom/android/settings/spen/SPenSettingsMenu;->access$100(Lcom/android/settings/spen/SPenSettingsMenu;)V

    return-void
.end method
