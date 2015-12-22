.class public Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "DisableAppConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DisableAppConfirmationDialog"

.field private static isUninstall:Z = false

.field private static mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter; = null

.field private static mHomeRestorePage:I = 0x0

.field private static mPackageName:Ljava/lang/String; = null

.field private static mUserId:J = 0x0L

.field private static sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem; = null

.field private static final sFragmentTag:Ljava/lang/String; = "DisableAppConfirm"

.field private static sItem:Lcom/sec/android/app/launcher/data/HomeItem;


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mPackageLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sput v0, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mHomeRestorePage:I

    sput-boolean v0, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->isUninstall:Z

    sput-object v1, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;IZ)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p2}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;

    invoke-direct {v1}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package"

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "label"

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    const-string v2, "DisableAppConfirm"

    invoke-virtual {v1, p2, v2}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    sput-object p3, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sput-object p4, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    sput p5, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mHomeRestorePage:I

    sput-boolean p6, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->isUninstall:Z

    sput-object p1, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    sget-object v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mPackageName:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v2

    sput-wide v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mUserId:J

    sget-object v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v3, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    sget v4, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mHomeRestorePage:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->restoreHomeIcon(Lcom/sec/android/app/launcher/data/HomeItem;IZ)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v3, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    sget-object v4, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    sget v5, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mHomeRestorePage:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->restoreHomeIconToFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/data/HomeItem;IZ)V

    goto :goto_0
.end method

.method static createAndShow(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/app/FragmentManager;Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;IZ)V

    return-void
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const-string v1, "DisableAppConfirm"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "DisableAppConfirm"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    :try_start_0
    sget-wide v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mUserId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-wide v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mUserId:J

    invoke-virtual {v8, v2, v3}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getInternalPackageManager()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setApplicationEnabledSetting"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v11}, Landroid/os/UserHandle;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v10, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DisableAppConfirmationDialog"

    const-string v2, "Problem uninstalling package. This should only happen when installed outside of /system/app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Not installed with permissions needed for uninstalling"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "HSDS"

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DisableAppConfirmationDialog"

    const-string v2, "Problem uninstalling package. This should only happen when either Activity or PackageManager is NULL."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Unable to install, please try again !"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mUserId:J

    const-string v0, "packageName"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mPackageName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    const v8, 0x7f0d0054

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d002a

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-boolean v3, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->isUninstall:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0038

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0036

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "userId"

    sget-wide v2, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mUserId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "packageName"

    sget-object v1, Lcom/sec/android/app/launcher/activities/DisableAppConfirmationDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
