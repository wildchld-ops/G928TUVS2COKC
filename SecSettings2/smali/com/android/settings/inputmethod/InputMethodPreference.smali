.class Lcom/android/settings/inputmethod/InputMethodPreference;
.super Landroid/preference/SwitchPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mHasPriorityInSorting:Z

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodPreference;->setPersistent(Z)V

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iput-boolean p4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    iput-object p5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    if-nez p3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    :cond_0
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, p2, p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    invoke-virtual {p0, p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v7, :cond_0

    const v7, 0x7f0a08ed

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0, v7, v8}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v7, ", "

    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private isImeEnabler()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getWidgetLayoutResource()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0a0829

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/inputmethod/InputMethodPreference$1;

    invoke-direct {v4, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/inputmethod/InputMethodPreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method compareTo(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/text/Collator;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v2, -0x1

    if-ne p0, p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    iget-boolean v5, p1, Lcom/android/settings/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    const-string v5, "IME\'s Settings Activity Not Found"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v4, 0x7f0a082d

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method updatePreferenceViews()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1, v2}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
