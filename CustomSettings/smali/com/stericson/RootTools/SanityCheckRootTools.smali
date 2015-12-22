.class public Lcom/stericson/RootTools/SanityCheckRootTools;
.super Landroid/app/Activity;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;,
        Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;
    }
.end annotation


# instance fields
.field private mPDialog:Landroid/app/ProgressDialog;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/stericson/RootTools/SanityCheckRootTools;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/stericson/RootTools/SanityCheckRootTools;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    sput-boolean v4, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/SanityCheckRootTools;->setContentView(Landroid/view/View;)V

    const-string v3, "?"

    :try_start_0
    invoke-virtual {p0}, Lcom/stericson/RootTools/SanityCheckRootTools;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/stericson/RootTools/SanityCheckRootTools;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SanityCheckRootTools v "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ERROR: No root access to this device.\n"

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "[ TIMEOUT EXCEPTION! ]\n"

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v4, "ERROR: could not determine root access to this device.\n"

    invoke-virtual {p0, v4}, Lcom/stericson/RootTools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    new-instance v4, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;

    new-instance v5, Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;-><init>(Lcom/stericson/RootTools/SanityCheckRootTools;Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;)V

    invoke-direct {v4, p0, p0, v5}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;-><init>(Lcom/stericson/RootTools/SanityCheckRootTools;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v4}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->start()V

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method protected print(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/stericson/RootTools/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/stericson/RootTools/SanityCheckRootTools$1;

    invoke-direct {v1, p0}, Lcom/stericson/RootTools/SanityCheckRootTools$1;-><init>(Lcom/stericson/RootTools/SanityCheckRootTools;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
