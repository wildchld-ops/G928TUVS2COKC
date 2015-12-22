.class public Lcom/android/settings/deviceinfo/UsageBarPreference;
.super Landroid/preference/Preference;
.source "UsageBarPreference.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private emptyColor:I

.field private mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object p1, Lcom/android/settings/deviceinfo/UsageBarPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sput-object p1, Lcom/android/settings/deviceinfo/UsageBarPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sput-object p1, Lcom/android/settings/deviceinfo/UsageBarPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    const v0, 0x7f040173

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    sput-object p1, Lcom/android/settings/deviceinfo/UsageBarPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addEntry(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/settings/deviceinfo/PercentageBarChart;->createEntry(IFI)Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public commit()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f100339

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/PercentageBarChart;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    iget v2, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->emptyColor:I

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/PercentageBarChart;->setBackgroundColor(I)V

    sget-object v1, Lcom/android/settings/deviceinfo/UsageBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    const v2, 0x7f02029f

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/PercentageBarChart;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setStorageEmptyColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/UsageBarPreference;->emptyColor:I

    return-void
.end method
