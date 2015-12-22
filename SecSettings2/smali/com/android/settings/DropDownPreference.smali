.class public Lcom/android/settings/DropDownPreference;
.super Landroid/preference/Preference;
.source "DropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DropDownPreference$Callback;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/settings/DropDownPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DropDownPreference;->mValues:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/settings/DropDownPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DropDownPreference$1;-><init>(Lcom/android/settings/DropDownPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/DropDownPreference;->setPersistent(Z)V

    new-instance v0, Lcom/android/settings/DropDownPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DropDownPreference$2;-><init>(Lcom/android/settings/DropDownPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DropDownPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public addItem(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/settings/DropDownPreference;->notifyChanged()V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/settings/DropDownPreference$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DropDownPreference;->mCallback:Lcom/android/settings/DropDownPreference$Callback;

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/DropDownPreference;->setSelectedItem(IZ)V

    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mCallback:Lcom/android/settings/DropDownPreference$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mCallback:Lcom/android/settings/DropDownPreference$Callback;

    invoke-interface {v2, p1, v1}, Lcom/android/settings/DropDownPreference$Callback;->onItemSelected(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/DropDownPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSelectedValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    :cond_0
    return-void
.end method
