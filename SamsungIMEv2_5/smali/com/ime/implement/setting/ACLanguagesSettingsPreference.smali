.class public Lcom/ime/implement/setting/ACLanguagesSettingsPreference;
.super Landroid/preference/Preference;
.source "ACLanguagesSettingsPreference.java"

# interfaces
.implements Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;


# static fields
.field private static final DOWNLOAD_AVAILABLE:I = 0x0

.field private static final DOWNLOAD_COMPLETE:I = 0x1

.field private static final DOWNLOAD_ING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "KLDownloadManager"

.field private static final UPDATE_AVAILABLE:I = 0x3

.field private static final WILL_BE_DOWNLOAD:I = 0x4


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private downloadButton:Landroid/widget/ImageView;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field public enableCheckBox:Landroid/widget/Switch;

.field private key:Ljava/lang/String;

.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;",
            ">;"
        }
    .end annotation
.end field

.field mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

.field public mCurrentState:I

.field private mIsCheckboxDontShowDownloadForRoam:Z

.field private mIsCheckboxDontShowDownloadForWifi:Z

.field private mLanguage:Lcom/ime/framework/common/Language;

.field public mLanguageName:Ljava/lang/String;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

.field private mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

.field public mXt9LanguageCode:I

.field private final parent:Lcom/ime/implement/setting/ACLanguagesSettings;

.field public selfView:Landroid/view/View;

.field private titleTextView:Landroid/widget/TextView;

.field private updateButton:Landroid/widget/Button;

.field public updateFlag:I


# direct methods
.method public constructor <init>(Lcom/ime/implement/setting/ACLanguagesSettings;Lcom/ime/framework/common/Language;II)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$3;-><init>(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)V

    iput-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const v0, 0x7f03008e

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->setLayoutResource(I)V

    const-string v0, "0x%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/ime/framework/common/Language;

    iput-object p1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    iput p3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iput p4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    invoke-static {}, Lcom/ime/framework/acmanager/ACDownloadManager;->newInstance()Lcom/ime/framework/acmanager/ACDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->register()V

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    const-string v1, "selected"

    invoke-virtual {v0, v1, v3}, Lcom/ime/implement/setting/ACLanguagesSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/ime/framework/common/Language;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/ime/framework/common/Language;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Lcom/ime/implement/setting/ACLanguagesSettings;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->cancelDownload()V

    return-void
.end method

.method static synthetic access$300(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V

    return-void
.end method

.method static synthetic access$500(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mSelectedLanguageSharedPreferenceEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private cancelDownload()V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget v2, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v1, v2}, Lcom/ime/framework/acmanager/ACDownloadManager;->cancelDownload(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget v2, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v1, v2}, Lcom/ime/framework/acmanager/ACDownloadManager;->unregister(I)V

    const v0, 0x7f0d015b

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v3, v0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private getDownloadGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f030051

    return v0
.end method

.method private register()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iget-object v2, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    return-void
.end method

.method private startDownload()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v0, v1}, Lcom/ime/framework/acmanager/ACDownloadManager;->download(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/acmanager/ACDownloadManager;->setUpdateState(IZ)V

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iget-object v2, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->listenerList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/acmanager/ACDownloadManager;->register(ILjava/util/List;)V

    goto :goto_0
.end method

.method private unregister()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v0, v1}, Lcom/ime/framework/acmanager/ACDownloadManager;->unregister(I)V

    return-void
.end method


# virtual methods
.method public IntentForDialog(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v4, "com.sec.android.app.popupuireceiver.popupNetworkError"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "network_err_type"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "mobile_data_only"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "KLDownloadManager"

    const-string v4, "ActivityNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public MobileDataWarningForRoam()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getDownloadGuideLayoutRscId()I

    move-result v2

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Lcom/ime/implement/setting/ACLanguagesSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    invoke-virtual {v4, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    const v9, 0x7f0d01dd

    invoke-virtual {v8, v9}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f100085

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    const v9, 0x7f0d01de

    invoke-virtual {v8, v9}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0d0154

    invoke-virtual {v0, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0d00b5

    new-instance v9, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$4;

    invoke-direct {v9, p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$4;-><init>(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public MobileDataWarningForWiFi()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getDownloadGuideLayoutRscId()I

    move-result v2

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Lcom/ime/implement/setting/ACLanguagesSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    invoke-virtual {v4, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v8, "VZW"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    const v9, 0x7f0d017b

    invoke-virtual {v8, v9}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v8, 0x7f100085

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    const v9, 0x7f0d01dc

    invoke-virtual {v8, v9}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0d0154

    invoke-virtual {v0, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0d00b5

    new-instance v9, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$5;

    invoke-direct {v9, p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$5;-><init>(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    const v9, 0x7f0d01db

    invoke-virtual {v8, v9}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected checkAndSetViewState(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const v4, 0x7f1000df

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->titleTextView:Landroid/widget/TextView;

    const v4, 0x7f10003d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    const v4, 0x7f1000e2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    const v4, 0x7f10003c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    const v4, 0x7f1000e1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadButton:Landroid/widget/ImageView;

    const v4, 0x7f1000e0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->titleTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    :cond_3
    iget v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_4
    iget v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    :cond_5
    iget v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    return v0
.end method

.method public getLanguageId()I
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/ime/framework/common/Language;

    invoke-virtual {v0}, Lcom/ime/framework/common/Language;->getId()I

    move-result v0

    return v0
.end method

.method public getProgressBarListener()Lcom/ime/framework/acmanager/ACDownloadManager$ProgressBarListener;
    .locals 0

    return-object p0
.end method

.method public getXt9LanguageCode()I
    .locals 1

    iget v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$1;-><init>(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateButton:Landroid/widget/Button;

    new-instance v1, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$2;

    invoke-direct {v1, p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference$2;-><init>(Lcom/ime/implement/setting/ACLanguagesSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v0}, Lcom/ime/implement/setting/ACLanguagesSettings;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onClick()V
    .locals 10

    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getInstance()Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->hasInit()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->isTosAccept()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v4}, Lcom/ime/implement/setting/ACLanguagesSettings;->showChinaModeLegalInformationDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-eq v6, v4, :cond_2

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    iget-object v6, v6, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-eq v6, v9, :cond_2

    const v2, 0x7f0d015e

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v6, v2}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/ACLanguagesSettings;->mDownloadableLanguageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "KLDownloadManager"

    const-string v5, "DownloadableLanguageList is Empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mACDownloadManager:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget-object v5, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v4, v5}, Lcom/ime/framework/acmanager/ACDownloadManager;->runCases(Lcom/ime/implement/setting/ACLanguagesSettings;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWIFIorETHERNETConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "KLDownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-eq v6, v4, :cond_3

    iget v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-ne v6, v9, :cond_5

    :cond_3
    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    if-nez v1, :cond_4

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    const-string v4, "fr"

    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/ime/framework/common/Language;

    invoke-virtual {v6}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    iget v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    iget-object v7, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lcom/ime/implement/setting/ACLanguagesSettings;->downloadFrenchLanguage(ILjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateDownloadState()V

    invoke-direct {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->startDownload()V

    goto/16 :goto_0

    :cond_7
    iget v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-eq v6, v4, :cond_8

    iget v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    if-ne v6, v9, :cond_a

    :cond_8
    iget-object v6, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->enableCheckBox:Landroid/widget/Switch;

    if-nez v1, :cond_9

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_9
    move v4, v5

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->showDownloadGuideDialog()V

    goto/16 :goto_0
.end method

.method public setCurrentState(I)V
    .locals 0

    iput p1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    return-void
.end method

.method public showDownloadGuideDialog()V
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isFlightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isMobileDataOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isRoamming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isDataRoammingOff(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->MobileDataWarningForRoam()V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isReachToDataLimit(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isNoSignal(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->IntentForDialog(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->MobileDataWarningForWiFi()V

    goto :goto_0
.end method

.method public updateCancelState()V
    .locals 2

    iget v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateFlag:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    iget-object v0, v0, Lcom/ime/implement/setting/ACLanguagesSettings;->mUpdateableLanguageList:Ljava/util/List;

    iget v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    goto :goto_0
.end method

.method public updateDownloadState()V
    .locals 2

    iget v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateFlag:I

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    iget v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mXt9LanguageCode:I

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/ACLanguagesSettings;->isAlreadyDownloading(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    iget-object v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->updateFlag:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    goto :goto_1
.end method

.method public updated(I)V
    .locals 7

    const v6, 0x66724652

    const v4, 0x66724341

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    iput v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    iget-object v2, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    const-string v1, "fr"

    iget-object v2, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/ime/framework/common/Language;

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/ime/framework/common/Language;

    invoke-virtual {v1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    const-string v2, "0x%08x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const v0, 0x7f0d015a

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    invoke-virtual {v3, v0}, Lcom/ime/implement/setting/ACLanguagesSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mLanguage:Lcom/ime/framework/common/Language;

    invoke-virtual {v1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->parent:Lcom/ime/implement/setting/ACLanguagesSettings;

    const-string v2, "0x%08x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/ime/implement/setting/ACLanguagesSettings;->updateOrder(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->mCurrentState:I

    iget-object v1, p0, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->selfView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ime/implement/setting/ACLanguagesSettingsPreference;->checkAndSetViewState(Landroid/view/View;)V

    goto :goto_1
.end method
