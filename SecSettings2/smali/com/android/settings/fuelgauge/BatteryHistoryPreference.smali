.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private final mBatteryBroadcast:Landroid/content/Intent;

.field private mHideLabels:Z

.field private mLabelHeader:Landroid/view/View;

.field private final mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040152

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f100076

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    return-void
.end method

.method public setHideLabels(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mHideLabels:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mHideLabels:Z

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
