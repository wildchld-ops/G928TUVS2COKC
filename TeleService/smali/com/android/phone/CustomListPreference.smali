.class public Lcom/android/phone/CustomListPreference;
.super Landroid/preference/ListPreference;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;
    }
.end annotation


# instance fields
.field customListPreferenceAdapter:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;

.field editor:Landroid/content/SharedPreferences$Editor;

.field entries:[Ljava/lang/CharSequence;

.field entryValues:[Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field prefs:Landroid/content/SharedPreferences;

.field rButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CustomListPreference;->customListPreferenceAdapter:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;

    iput-object p1, p0, Lcom/android/phone/CustomListPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CustomListPreference;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CustomListPreference;->rButtonList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/phone/CustomListPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CustomListPreference;->prefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/phone/CustomListPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CustomListPreference;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CustomListPreference;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0    # Lcom/android/phone/CustomListPreference;

    iget-object v0, p0, Lcom/android/phone/CustomListPreference;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1    # Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CustomListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CustomListPreference;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/phone/CustomListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CustomListPreference;->entryValues:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/phone/CustomListPreference;->entries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CustomListPreference;->entryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CustomListPreference;->entries:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/phone/CustomListPreference;->entryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array which are both the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;

    iget-object v1, p0, Lcom/android/phone/CustomListPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;-><init>(Lcom/android/phone/CustomListPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CustomListPreference;->customListPreferenceAdapter:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;

    iget-object v0, p0, Lcom/android/phone/CustomListPreference;->customListPreferenceAdapter:Lcom/android/phone/CustomListPreference$CustomListPreferenceAdapter;

    new-instance v1, Lcom/android/phone/CustomListPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/CustomListPreference$1;-><init>(Lcom/android/phone/CustomListPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
