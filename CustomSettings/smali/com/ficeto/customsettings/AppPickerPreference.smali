.class public Lcom/ficeto/customsettings/AppPickerPreference;
.super Landroid/preference/DialogPreference;
.source "AppPickerPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ficeto/customsettings/AppPickerPreference$AppItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/DialogPreference;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final SEPARATOR:Ljava/lang/String; = "##"

.field private static sAppIconCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppIconSizePx:I

.field private mAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultSummaryText:Ljava/lang/String;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ficeto/adapters/IIconListAdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mResources:Landroid/content/res/Resources;

.field private mSearch:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit8 v1, v1, 0x6

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Lcom/ficeto/customsettings/AppPickerPreference$1;

    invoke-direct {v1, v0}, Lcom/ficeto/customsettings/AppPickerPreference$1;-><init>(I)V

    sput-object v1, Lcom/ficeto/customsettings/AppPickerPreference;->sAppIconCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/ficeto/customsettings/AppPickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mDefaultSummaryText:Ljava/lang/String;

    const/4 v0, 0x1

    const/high16 v1, 0x42200000    # 40.0f

    iget-object v2, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mAppIconSizePx:I

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/ficeto/customsettings/AppPickerPreference;->setDialogLayoutResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ficeto/customsettings/AppPickerPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$0()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Lcom/ficeto/customsettings/AppPickerPreference;->sAppIconCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ficeto/customsettings/AppPickerPreference;)I
    .locals 1

    iget v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mAppIconSizePx:I

    return v0
.end method

.method static synthetic access$3(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ficeto/customsettings/AppPickerPreference;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mListData:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$7(Lcom/ficeto/customsettings/AppPickerPreference;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mSearch:Landroid/widget/EditText;

    return-object v0
.end method

.method private getAppNameFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v4

    :cond_0
    :try_start_0
    const-string v5, "##"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSettingApp(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, ""

    goto :goto_0
.end method

.method private setData()V
    .locals 2

    new-instance v0, Lcom/ficeto/customsettings/AppPickerPreference$3;

    invoke-direct {v0, p0}, Lcom/ficeto/customsettings/AppPickerPreference$3;-><init>(Lcom/ficeto/customsettings/AppPickerPreference;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ficeto/customsettings/AppPickerPreference$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public static setSettingApp(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://settings/system/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ficeto/customsettings/AppPickerPreference;->persistString(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ficeto/customsettings/AppPickerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/ficeto/customsettings/AppPickerPreference;->setSettingApp(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/high16 v0, 0x7f090000

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mSearch:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mSearch:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/ficeto/customsettings/AppPickerPreference$2;

    invoke-direct {v1, p0}, Lcom/ficeto/customsettings/AppPickerPreference$2;-><init>(Lcom/ficeto/customsettings/AppPickerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f090001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/ficeto/customsettings/AppPickerPreference;->setData()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mAsyncTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;

    invoke-virtual {v0}, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ficeto/customsettings/AppPickerPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mDefaultSummaryText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/ficeto/customsettings/AppPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ficeto/customsettings/AppPickerPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->getAppName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/ficeto/customsettings/AppPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ficeto/customsettings/AppPickerPreference;->getAppNameFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mDefaultSummaryText:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ficeto/customsettings/AppPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/ficeto/customsettings/AppPickerPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mDefaultSummaryText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/ficeto/customsettings/AppPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setDefaultSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ficeto/customsettings/AppPickerPreference;->mDefaultSummaryText:Ljava/lang/String;

    return-void
.end method
