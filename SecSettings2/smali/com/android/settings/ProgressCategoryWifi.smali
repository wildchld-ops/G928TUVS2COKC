.class public Lcom/android/settings/ProgressCategoryWifi;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategoryWifi.java"


# instance fields
.field private mEmptyTextRes:I

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ProgressCategoryWifi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategoryWifi;->mProgress:Z

    const v0, 0x7f040178

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategoryWifi;->setLayoutResource(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ProgressCategoryWifi;->mEmptyTextRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/ProgressCategoryWifi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategoryWifi;->mProgress:Z

    const v0, 0x7f040178

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategoryWifi;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    const v1, 0x7f10008d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/ProgressCategoryWifi;->mProgress:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategoryWifi;->mProgress:Z

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategoryWifi;->notifyChanged()V

    return-void
.end method
