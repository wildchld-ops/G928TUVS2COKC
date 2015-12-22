.class public Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "UninstallConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field private static final TAG:Ljava/lang/String; = "UninstallConfirmDialogFragment"

.field private static mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter; = null

.field private static mHomeRestorePage:I = 0x0

.field private static sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem; = null

.field private static final sFragmentTag:Ljava/lang/String; = "UninstallConfirm"

.field private static sItem:Lcom/sec/android/app/launcher/data/HomeItem;


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mPackageLabel:Ljava/lang/String;

.field private mReset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomeRestorePage:I

    sput-object v1, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    sput-object v1, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mReset:Z

    return v0
.end method

.method private blockUninsatll()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v3

    const-string v4, "UninstallConfirmDialogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnterpriseDeviceManager is not getting started"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static createAndShow(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/app/FragmentManager;Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/FolderItem;I)V
    .locals 3

    sput-object p3, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sput p5, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomeRestorePage:I

    sput-object p4, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    sput-object p1, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    const-string v0, "UninstallConfirmDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAndShow mHomeRestorePage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomeRestorePage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/sec/daliviews/views/Item;Landroid/app/FragmentManager;Z)V

    return-void
.end method

.method static createAndShow(Landroid/content/Context;Lcom/sec/daliviews/views/Item;Landroid/app/FragmentManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/sec/daliviews/views/Item;Landroid/app/FragmentManager;Z)V

    return-void
.end method

.method static createAndShow(Landroid/content/Context;Lcom/sec/daliviews/views/Item;Landroid/app/FragmentManager;Z)V
    .locals 14

    const-string v9, "UninstallConfirmDialogFragment"

    const-string v10, "createAndShow()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-wide/16 v6, -0x1

    instance-of v9, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v9, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v6

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-nez v9, :cond_3

    :cond_1
    const-string v9, "UninstallConfirmDialogFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UninstallConfirmDialogFragment return!! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    instance-of v9, p1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v9, :cond_0

    move-object v8, p1

    check-cast v8, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v6

    goto :goto_0

    :cond_3
    sget-object v9, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v9, :cond_4

    sget-object v9, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "UninstallConfirmDialogFragment"

    const-string v10, "createAndShow : Try to restore item"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v9, :cond_5

    sget-object v9, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v10, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    sget v11, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomeRestorePage:I

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/android/app/launcher/activities/HomePresenter;->restoreHomeIcon(Lcom/sec/android/app/launcher/data/HomeItem;IZ)V

    :cond_4
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.DELETE"

    const-string v10, "package"

    invoke-static {v10, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v9, 0x10800000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v9, "user"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v4

    const-string v9, "android.intent.extra.USER"

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v9, "fromLauncher"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    sget-object v9, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v10, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    sget-object v11, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    sget v12, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomeRestorePage:I

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sec/android/app/launcher/activities/HomePresenter;->restoreHomeIconToFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/data/HomeItem;IZ)V

    goto :goto_2
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "UninstallConfirm"

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

    const-string v0, "UninstallConfirm"

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
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    new-instance v3, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment$1;-><init>(Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;Landroid/content/pm/PackageManager;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "UninstallConfirmDialogFragment"

    const-string v3, "Problem uninstalling package. This should only happen when installed outside of /system/app."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Not installed with permissions needed for uninstalling"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "UninstallConfirmDialogFragment"

    const-string v3, "Problem uninstalling package. This should only happen when either Activity or PackageManager is NULL."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Unable to install, please try again !"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v3, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    sget v4, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomeRestorePage:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->restoreHomeIcon(Lcom/sec/android/app/launcher/data/HomeItem;IZ)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    sget-object v3, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sFolderItem:Lcom/sec/android/app/launcher/data/FolderItem;

    sget-object v4, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->sItem:Lcom/sec/android/app/launcher/data/HomeItem;

    sget v5, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mHomeRestorePage:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/launcher/activities/HomePresenter;->restoreHomeIconToFolder(Lcom/sec/android/app/launcher/data/FolderItem;Lcom/sec/android/app/launcher/data/HomeItem;IZ)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reset"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mReset:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00cb

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->mReset:Z

    if-eqz v3, :cond_0

    const v1, 0x7f0d0039

    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d00c9

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    :cond_0
    const v1, 0x7f0d00ca

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->blockUninsatll()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/UninstallConfirmDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
