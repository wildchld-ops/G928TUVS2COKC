.class public Lcom/android/settings/applications/ProcessStatsPreference;
.super Landroid/preference/Preference;
.source "ProcessStatsPreference.java"


# instance fields
.field private mEntry:Lcom/android/settings/applications/ProcStatsEntry;

.field private mProgress:I

.field private mProgressText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7f040150

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getEntry()Lcom/android/settings/applications/ProcStatsEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    return-object v0
.end method

.method public init(Landroid/graphics/drawable/Drawable;Lcom/android/settings/applications/ProcStatsEntry;)V
    .locals 1

    iput-object p2, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mProgressText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPercent(DD)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mProgress:I

    double-to-int v0, p3

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mProgressText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsPreference;->notifyChanged()V

    return-void
.end method
