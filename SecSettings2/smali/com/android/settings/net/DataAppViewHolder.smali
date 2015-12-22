.class public Lcom/android/settings/net/DataAppViewHolder;
.super Ljava/lang/Object;
.source "DataAppViewHolder.java"


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public dataCheckBox:Landroid/widget/CheckBox;

.field public dataCompoundButton:Landroid/widget/CompoundButton;

.field public dataSwitch:Landroid/widget/Switch;

.field public dataTotal:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public wifiCheckBox:Landroid/widget/CheckBox;

.field public wifiTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;Z)Lcom/android/settings/net/DataAppViewHolder;
    .locals 4

    const/16 v3, 0x8

    if-nez p1, :cond_1

    const v1, 0x7f040018

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/net/DataAppViewHolder;

    invoke-direct {v0}, Lcom/android/settings/net/DataAppViewHolder;-><init>()V

    iput-object p1, v0, Lcom/android/settings/net/DataAppViewHolder;->rootView:Landroid/view/View;

    const v1, 0x7f100061

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->appName:Landroid/widget/TextView;

    const v1, 0x7f100060

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->appIcon:Landroid/widget/ImageView;

    const v1, 0x7f100065

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataTotal:Landroid/widget/TextView;

    const v1, 0x7f100066

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->wifiTotal:Landroid/widget/TextView;

    const v1, 0x7f100062

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f100063

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->wifiCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f100064

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataSwitch:Landroid/widget/Switch;

    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataCheckBox:Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataCompoundButton:Landroid/widget/CompoundButton;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->wifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->wifiTotal:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataSwitch:Landroid/widget/Switch;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataCompoundButton:Landroid/widget/CompoundButton;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/net/DataAppViewHolder;

    move-object v0, v1

    goto :goto_1
.end method
