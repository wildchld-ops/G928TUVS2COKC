.class Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;
.super Landroid/database/ContentObserver;
.source "GenericPowerSavingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/GenericPowerSavingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    # invokes: Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->access$000(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    # getter for: Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->access$100(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    # getter for: Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->access$100(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    # getter for: Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->access$200(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings/notification/DropDownPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;->this$0:Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    # getter for: Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->access$300(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings/SettingsListPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsListPreference;->setEnabled(Z)V

    goto :goto_0
.end method
