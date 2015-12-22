.class Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$1;
.super Ljava/lang/Object;
.source "HomeScreenModeSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->access$000(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    const v1, 0x7f0d005d

    # invokes: Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->showModeChangeDialog(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->access$100(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->access$200(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    const v1, 0x7f0d005e

    # invokes: Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->showModeChangeDialog(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->access$100(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;I)V

    goto :goto_0
.end method
