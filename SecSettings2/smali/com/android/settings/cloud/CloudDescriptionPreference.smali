.class public Lcom/android/settings/cloud/CloudDescriptionPreference;
.super Landroid/preference/Preference;
.source "CloudDescriptionPreference.java"


# instance fields
.field private cloudDescriptionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudDescriptionPreference;->cloudDescriptionTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f1000b8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/cloud/CloudDescriptionPreference;->cloudDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/cloud/CloudDescriptionPreference;->cloudDescriptionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a1165

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudDescriptionPreference;->cloudDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
