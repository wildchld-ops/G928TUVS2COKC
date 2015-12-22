.class public Lcom/sec/android/app/launcher/activities/AppsPopupMenu;
.super Lcom/sec/android/app/launcher/activities/PopupMenuBase;
.source "AppsPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/AppsPopupMenu$ViewTypeSelectDialog;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z = false

.field private static final MORE_SERVICE_DOWNLOADABLE_APP_LIST_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.moreservices.moreservices"

.field private static final MORE_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.moreservices"

.field private static final SAMSUNG_APPS_DOWNLOADABLE_APP_LIST_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps.downloadableapps.DownloadableAppsActivity"

.field private static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field private static final TAG:Ljava/lang/String;

.field private static mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# instance fields
.field private mAppsForGalaxyItem:Landroid/view/MenuItem;

.field private mCreateFolder:Landroid/view/MenuItem;

.field private mDownloadedItem:Landroid/view/MenuItem;

.field private mEditItem:Landroid/view/MenuItem;

.field private mHomeHelpItem:Landroid/view/MenuItem;

.field private mSelAppsToHideItem:Landroid/view/MenuItem;

.field private mSelAppsToUnHideItem:Landroid/view/MenuItem;

.field private mSelappstoEnableItem:Landroid/view/MenuItem;

.field private mUninstallItem:Landroid/view/MenuItem;

.field private mViewTypeItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 4

    const v2, 0x7f0b00d1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/app/launcher/activities/PopupMenuBase;-><init>(Landroid/app/Activity;IZ)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v2, 0x7f0f0000

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0b013e

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mEditItem:Landroid/view/MenuItem;

    const v2, 0x7f0b013f

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mCreateFolder:Landroid/view/MenuItem;

    const v2, 0x7f0b0142

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mUninstallItem:Landroid/view/MenuItem;

    const v2, 0x7f0b0140

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mViewTypeItem:Landroid/view/MenuItem;

    const v2, 0x7f0b0144

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelappstoEnableItem:Landroid/view/MenuItem;

    const v2, 0x7f0b0143

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelAppsToHideItem:Landroid/view/MenuItem;

    const v2, 0x7f0b0145

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelAppsToUnHideItem:Landroid/view/MenuItem;

    const v2, 0x7f0b0146

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsForGalaxyItem:Landroid/view/MenuItem;

    const v2, 0x7f0b0141

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mDownloadedItem:Landroid/view/MenuItem;

    const v2, 0x7f0b0147

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mHomeHelpItem:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    new-instance v3, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$1;-><init>(Lcom/sec/android/app/launcher/activities/AppsPopupMenu;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->setOnMenuItemClickListener(Lcom/sec/android/app/launcher/activities/popup/PopupMenu$OnMenuItemClickListener;)V

    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/app/launcher/activities/AppsPresenter;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/AppsPopupMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->selectViewType()V

    return-void
.end method

.method private selectViewType()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$ViewTypeSelectDialog;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$ViewTypeSelectDialog;-><init>()V

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "Homescreen"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu$ViewTypeSelectDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 10

    const/high16 v6, 0x10000000

    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    sget-object v6, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shortcut extras:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "shortcutIntent"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v6, 0x0

    :try_start_1
    invoke-static {v2, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    :try_start_2
    sget-object v6, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v6, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    const/4 v6, 0x1

    :goto_2
    return v6

    :catch_0
    move-exception v0

    sget-object v6, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->TAG:Ljava/lang/String;

    const-string v7, "failed to parse shortcut intent URI"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v6, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    const v7, 0x7f0d0015

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {p1, v6, v7, v8, v9}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v3

    sget-object v6, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v6, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    const v7, 0x7f0d0015

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    :try_start_4
    sget-object v6, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v6, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1
.end method


# virtual methods
.method protected onButtonClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->showMenu()V

    return-void
.end method

.method public onClickOnlineHelp()V
    .locals 9

    const v8, 0x7f0d0015

    const/4 v7, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "helphub:section"

    const-string v5, "homescreen"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "helphub:appid"

    const-string v5, "home_screen"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-static {v4, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    const v5, 0x7f0d0079

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v4, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mParentActivity:Landroid/app/Activity;

    invoke-static {v4, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onClickstartDownloadableApps()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseMoreService:Z

    if-eqz v1, :cond_0

    const-string v1, "com.sec.android.app.moreservices"

    const-string v2, "com.sec.android.app.moreservices.moreservices"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "samsungapps downloadable page"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v1, "com.sec.android.app.samsungapps"

    const-string v2, "com.sec.android.app.samsungapps.downloadableapps.DownloadableAppsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setAppsPresenter(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    sput-object p1, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    return-void
.end method

.method public showMenu()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListType()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mCreateFolder:Landroid/view/MenuItem;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isAppListAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->getListType()Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DOWNLOADED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mUninstallItem:Landroid/view/MenuItem;

    const v1, 0x7f0d0093

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mUninstallItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mViewTypeItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelAppsToHideItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelappstoEnableItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelAppsToUnHideItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsForGalaxyItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mDownloadedItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mHomeHelpItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mEditItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PopupMenuBase;->mPopupMenu:Lcom/sec/android/app/launcher/activities/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/popup/PopupMenu;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mCreateFolder:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mEditItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mUninstallItem:Landroid/view/MenuItem;

    const v1, 0x7f0d008c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mUninstallItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mViewTypeItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelAppsToHideItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelappstoEnableItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelAppsToUnHideItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsForGalaxyItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mDownloadedItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mHomeHelpItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mEditItem:Landroid/view/MenuItem;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isAppListAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mUninstallItem:Landroid/view/MenuItem;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isAppListAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mViewTypeItem:Landroid/view/MenuItem;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isAppListAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mDownloadedItem:Landroid/view/MenuItem;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isDownloadedAppsAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelAppsToHideItem:Landroid/view/MenuItem;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isAppListAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelappstoEnableItem:Landroid/view/MenuItem;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isDisabledAppsAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mSelAppsToUnHideItem:Landroid/view/MenuItem;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsPresenter:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->isHiddenAppsAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPopupMenu;->mAppsForGalaxyItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method
