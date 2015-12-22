.class Lcom/android/settings/inputmethod/InputMethodSubtypePreference;
.super Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;
.source "InputMethodSubtypePreference.java"


# instance fields
.field private final mIsSystemLanguage:Z

.field private final mIsSystemLocale:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setPersistent(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1, v4, v5}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    iput-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v2, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    iget-boolean v4, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-nez v4, :cond_1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    goto :goto_0
.end method


# virtual methods
.method compareTo(Landroid/preference/Preference;Ljava/text/Collator;)I
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v6, p1, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;

    if-eqz v6, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    iget-boolean v3, v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    iget-boolean v3, v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v3, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    goto :goto_0

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_8
    invoke-super {p0, p1}, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v3

    goto :goto_0
.end method
