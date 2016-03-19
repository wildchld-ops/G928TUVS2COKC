.class Lcom/android/phone/ProgressButtonListPreference;
.super Landroid/preference/ListPreference;
.source "NetworkSetting.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mlistprogressBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ProgressButtonListPreference;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/ProgressButtonListPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ProgressButtonListPreference;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/ProgressButtonListPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ProgressButtonListPreference;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/ProgressButtonListPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f10019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ProgressButtonListPreference;->mlistprogressBar:Landroid/view/View;

    return-void
.end method

.method public setProgressVisible(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/ProgressButtonListPreference;->mlistprogressBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ProgressButtonListPreference;->mlistprogressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/ProgressButtonListPreference;->mlistprogressBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ProgressButtonListPreference;->mlistprogressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
