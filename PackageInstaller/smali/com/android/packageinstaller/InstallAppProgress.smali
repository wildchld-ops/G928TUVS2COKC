.class public Lcom/android/packageinstaller/InstallAppProgress;
.super Landroid/app/Activity;
.source "InstallAppProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;
    }
.end annotation


# instance fields
.field private final INSTALL_COMPLETE:I

.field private final TAG:Ljava/lang/String;

.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mDoneButton:Landroid/widget/Button;

.field private mExplanationTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLaunchButton:Landroid/widget/Button;

.field private mLaunchIntent:Landroid/content/Intent;

.field private mOkPanel:Landroid/view/View;

.field private mPackageURI:Landroid/net/Uri;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStatusTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "InstallAppProgress"

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->localLOGV:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->INSTALL_COMPLETE:I

    new-instance v0, Lcom/android/packageinstaller/InstallAppProgress$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/InstallAppProgress$1;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/InstallAppProgress;)Lcom/android/packageinstaller/InstallFlowAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/packageinstaller/InstallAppProgress;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/packageinstaller/InstallAppProgress;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->getExplanationFromErrorCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getExplanationFromErrorCode(I)I
    .locals 3

    const-string v0, "InstallAppProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installation error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f060011

    goto :goto_0

    :sswitch_1
    const v0, 0x7f060012

    goto :goto_0

    :sswitch_2
    const v0, 0x7f060013

    goto :goto_0

    :sswitch_3
    const v0, 0x7f060014

    goto :goto_0

    :sswitch_4
    const v0, 0x104086e

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74 -> :sswitch_4
        -0x68 -> :sswitch_1
        -0x10 -> :sswitch_3
        -0xc -> :sswitch_2
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private showDialogInner(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->removeDialog(I)V

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->showDialog(I)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 19

    const v3, 0x7f030004

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/InstallAppProgress;->setContentView(I)V

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x2000

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    if-eqz v17, :cond_0

    or-int/lit8 v11, v11, 0x2

    :cond_0
    :goto_0
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_1

    const-string v3, "InstallAppProgress"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Replacing package:"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "package"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v15, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v15, v3, v9}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v3, v15, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mLabel:Ljava/lang/CharSequence;

    const/high16 v3, 0x7f080000

    move-object/from16 v0, p0

    invoke-static {v0, v15, v3}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Lcom/android/packageinstaller/PackageUtil$AppSnippet;I)Landroid/view/View;

    const v3, 0x7f080012

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    const v9, 0x7f060008

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f080013

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;

    const v3, 0x7f080004

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v3, 0x7f08000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    const v3, 0x7f080010

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    const v3, 0x7f080011

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v9, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v9, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v9, "android.intent.extra.REFERRER"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v9, "android.intent.extra.ORIGINATING_UID"

    const/4 v13, -0x1

    invoke-virtual {v3, v9, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v9, "com.android.packageinstaller.extras.manifest_digest"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ManifestDigest;

    new-instance v2, Landroid/content/pm/VerificationParams;

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    new-instance v10, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    const-string v3, "package"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->installExistingPackage(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v10, v3, v9}, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-void

    :cond_2
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v15

    goto/16 :goto_1

    :catch_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, -0x2

    invoke-virtual {v10, v3, v9}, Lcom/android/packageinstaller/InstallAppProgress$PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    const/4 v14, 0x0

    move-object v13, v2

    invoke-virtual/range {v8 .. v14}, Landroid/content/pm/PackageManager;->installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    goto :goto_2

    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "InstallAppProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished installing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/InstallAppProgress;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const-string v2, "com.android.packageinstaller.extras.install_flow_analytics"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/packageinstaller/InstallFlowAnalytics;

    iput-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    invoke-virtual {v2, p0}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setContext(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mInstallFlowAnalytics:Lcom/android/packageinstaller/InstallFlowAnalytics;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/packageinstaller/InstallFlowAnalytics;->setFlowFinished(B)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->initView()V

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    const v1, 0x7f060027

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/packageinstaller/InstallAppProgress;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060022

    new-instance v3, Lcom/android/packageinstaller/InstallAppProgress$3;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/InstallAppProgress$3;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060006

    new-instance v3, Lcom/android/packageinstaller/InstallAppProgress$2;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/InstallAppProgress$2;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
