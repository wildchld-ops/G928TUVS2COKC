.class public Lcom/sec/android/inputmethod/SpinnerPreference;
.super Landroid/preference/Preference;
.source "SpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/SpinnerPreference$Callback;
    }
.end annotation


# static fields
.field private static mInputManager:Lcom/ime/framework/common/InputManager;


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

.field private mCallback:Lcom/sec/android/inputmethod/SpinnerPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private final mSpinner:Landroid/widget/Spinner;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/inputmethod/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    sput-object v0, Lcom/sec/android/inputmethod/SpinnerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object p1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/inputmethod/SpinnerPreference$1;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/inputmethod/SpinnerPreference$1;-><init>(Lcom/sec/android/inputmethod/SpinnerPreference;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/sec/android/inputmethod/SpinnerPreference$2;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/SpinnerPreference$2;-><init>(Lcom/sec/android/inputmethod/SpinnerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/SpinnerPreference;->setPersistent(Z)V

    new-instance v0, Lcom/sec/android/inputmethod/SpinnerPreference$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/SpinnerPreference$3;-><init>(Lcom/sec/android/inputmethod/SpinnerPreference;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/SpinnerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method static synthetic access$000()Lcom/ime/framework/common/InputManager;
    .locals 1

    sget-object v0, Lcom/sec/android/inputmethod/SpinnerPreference;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/SpinnerPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/SpinnerPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setSelectedItem(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/SpinnerPreference;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private getValueIndex()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/SpinnerPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setSelectedItem(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/inputmethod/SpinnerPreference;->setSelectedItem(IZ)V

    return-void
.end method

.method private setSelectedItem(IZ)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v2, p1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mCallback:Lcom/sec/android/inputmethod/SpinnerPreference$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mCallback:Lcom/sec/android/inputmethod/SpinnerPreference$Callback;

    invoke-interface {v2, p1, v1}, Lcom/sec/android/inputmethod/SpinnerPreference$Callback;->onItemSelected(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/SpinnerPreference;->setValueIndex(I)V

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/SpinnerPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setValueIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/SpinnerPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearItems()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SpinnerPreference;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SpinnerPreference;->getValueIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/SpinnerPreference;->setSelectedItem(I)V

    goto :goto_0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mValue:Ljava/lang/String;

    return-void
.end method

.method public setEntries(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    iget-object v5, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mValueSet:Z

    if-nez v2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mValue:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SpinnerPreference;->mValueSet:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/SpinnerPreference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SpinnerPreference;->notifyChanged()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
