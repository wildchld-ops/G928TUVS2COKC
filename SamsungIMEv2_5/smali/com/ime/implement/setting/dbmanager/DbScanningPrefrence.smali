.class public Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;
.super Landroid/preference/PreferenceCategory;
.source "DbScanningPrefrence.java"


# instance fields
.field private mScanning:Z

.field private mScanningLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->mScanning:Z

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getScanningStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->mScanning:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    const v0, 0x7f10003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->mScanningLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->mScanningLayout:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->mScanning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setScanning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->mScanning:Z

    invoke-virtual {p0}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->notifyChanged()V

    return-void
.end method
