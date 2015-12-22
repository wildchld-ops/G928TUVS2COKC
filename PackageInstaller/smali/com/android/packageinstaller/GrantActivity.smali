.class public Lcom/android/packageinstaller/GrantActivity;
.super Landroid/app/Activity;
.source "GrantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancel:Landroid/widget/Button;

.field private mOk:Landroid/widget/Button;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRequestingPackage:Ljava/lang/String;

.field private requested_permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getPermissionList(Landroid/widget/AppSecurityPermissions;)Landroid/view/View;
    .locals 6

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/GrantActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v4, 0x7f080017

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v3
.end method

.method private getRequestedPermissions()[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/packageinstaller/GrantActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.content.pm.extra.PERMISSION_LIST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/packageinstaller/GrantActivity;->keepNormalDangerousPermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/GrantActivity;->keepRequestingPackagePermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private getUpdatedPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 10

    :try_start_0
    iget-object v7, p0, Lcom/android/packageinstaller/GrantActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/packageinstaller/GrantActivity;->mRequestingPackage:Ljava/lang/String;

    const/16 v9, 0x1000

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const/4 v2, 0x0

    :goto_0
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_2

    iget-object v0, p0, Lcom/android/packageinstaller/GrantActivity;->requested_permissions:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v8, v7, v2

    or-int/lit8 v8, v8, 0x2

    aput v8, v7, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_2
    return-object v5
.end method

.method private keepNormalDangerousPermissions([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    :try_start_0
    iget-object v7, p0, Lcom/android/packageinstaller/GrantActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget v7, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v1, v7, 0xf

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    if-eq v1, v7, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method private keepRequestingPackagePermissions([Ljava/lang/String;)[Ljava/lang/String;
    .locals 13

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v10, p0, Lcom/android/packageinstaller/GrantActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v11, p0, Lcom/android/packageinstaller/GrantActivity;->mRequestingPackage:Ljava/lang/String;

    const/16 v12, 0x1000

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    :goto_0
    return-object v10

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v10, v10

    if-ge v2, v10, :cond_5

    move-object v0, p1

    array-length v6, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_1

    aget-object v7, v0, v3

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v10, v10, v2

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    :goto_3
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v10, v10, v2

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_3

    const/4 v4, 0x1

    :goto_4
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v5, :cond_4

    if-nez v4, :cond_4

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v4, p0, Lcom/android/packageinstaller/GrantActivity;->mOk:Landroid/widget/Button;

    if-ne p1, v4, :cond_1

    iget-object v0, p0, Lcom/android/packageinstaller/GrantActivity;->requested_permissions:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/android/packageinstaller/GrantActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/packageinstaller/GrantActivity;->mRequestingPackage:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->grantPermission(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/GrantActivity;->setResult(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/packageinstaller/GrantActivity;->mCancel:Landroid/widget/Button;

    if-ne p1, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/GrantActivity;->setResult(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/packageinstaller/GrantActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v9, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/GrantActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/packageinstaller/GrantActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/packageinstaller/GrantActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/packageinstaller/GrantActivity;->mRequestingPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/packageinstaller/GrantActivity;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/packageinstaller/GrantActivity;->requested_permissions:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/packageinstaller/GrantActivity;->requested_permissions:[Ljava/lang/String;

    array-length v8, v8

    if-nez v8, :cond_0

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/GrantActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/GrantActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/GrantActivity;->getUpdatedPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    new-instance v4, Landroid/widget/AppSecurityPermissions;

    invoke-direct {v4, p0, v5}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v4, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/GrantActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/GrantActivity;->finish()V

    goto :goto_0

    :cond_1
    const v8, 0x7f030002

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/GrantActivity;->setContentView(I)V

    const v8, 0x7f080005

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/GrantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f060043

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v8, p0, Lcom/android/packageinstaller/GrantActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/packageinstaller/GrantActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/high16 v8, 0x7f080000

    invoke-static {p0, v2, v8}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Lcom/android/packageinstaller/PackageUtil$AppSnippet;I)Landroid/view/View;

    const v8, 0x7f08000c

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/GrantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/packageinstaller/GrantActivity;->mOk:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/packageinstaller/GrantActivity;->mOk:Landroid/widget/Button;

    const v9, 0x7f06001e

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    const v8, 0x7f08000b

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/GrantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/packageinstaller/GrantActivity;->mCancel:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/packageinstaller/GrantActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/packageinstaller/GrantActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x1020012

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/GrantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    const v8, 0x7f080009

    invoke-virtual {p0, v8}, Lcom/android/packageinstaller/GrantActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/android/packageinstaller/TabsAdapter;

    invoke-direct {v0, p0, v6, v7}, Lcom/android/packageinstaller/TabsAdapter;-><init>(Landroid/app/Activity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v4, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/GrantActivity;->getPermissionList(Landroid/widget/AppSecurityPermissions;)Landroid/view/View;

    move-result-object v1

    const-string v8, "new"

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x7f06003e

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/GrantActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v0, v8, v3}, Lcom/android/packageinstaller/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V

    const-string v8, "all"

    invoke-virtual {v6, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x7f06003f

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/GrantActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v0, v8, v1}, Lcom/android/packageinstaller/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V

    goto/16 :goto_0
.end method
