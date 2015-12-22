.class public Lcom/sec/android/app/launcher/activities/AppsSortPreference;
.super Landroid/preference/ListPreference;
.source "AppsSortPreference.java"


# instance fields
.field private mClickedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/launcher/activities/AppsSortPreference;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->mClickedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/AppsSortPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->setValueIndex()V

    return-void
.end method

.method private getValueIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setValueIndex()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->mClickedIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->mClickedIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->mClickedIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->mClickedIndex:I

    new-instance v2, Lcom/sec/android/app/launcher/activities/AppsSortPreference$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/AppsSortPreference$1;-><init>(Lcom/sec/android/app/launcher/activities/AppsSortPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    new-instance v1, Lcom/sec/android/app/launcher/activities/AppsSortPreference$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/AppsSortPreference$2;-><init>(Lcom/sec/android/app/launcher/activities/AppsSortPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
