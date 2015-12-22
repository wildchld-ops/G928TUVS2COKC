.class public Lcom/android/settings/fuelgauge/PowerGaugePreference;
.super Landroid/preference/Preference;
.source "PowerGaugePreference.java"


# instance fields
.field private final mContentDescription:Ljava/lang/CharSequence;

.field private mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

.field private mProgress:I

.field private mProgressText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040150

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setLayoutResource(I)V

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iput-object p4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    return-void

    :cond_0
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v3, 0x102000d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:I

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgressText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPercent(DD)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p3

    double-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgressText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    return-void
.end method
