.class public Lcom/android/settings/location/DimmableIconPreference;
.super Landroid/preference/Preference;
.source "DimmableIconPreference.java"


# instance fields
.field private final mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/location/DimmableIconPreference;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/location/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method private dimIcon(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/location/DimmableIconPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0x66

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/location/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0xff

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/location/DimmableIconPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0d0017

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0d000e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/settings/location/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/location/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onParentChanged(Landroid/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/settings/location/DimmableIconPreference;->dimIcon(Z)V

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/location/DimmableIconPreference;->dimIcon(Z)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
