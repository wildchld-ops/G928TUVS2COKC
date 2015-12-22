.class Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$2;
.super Ljava/lang/Object;
.source "HomeScreenModeSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->access$000(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->access$200(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v1

    # invokes: Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->setApplyButtonEnabled(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->access$300(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;Z)V

    return-void
.end method
