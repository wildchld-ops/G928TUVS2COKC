.class public Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mChecked:Z

.field private mClassName:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mEnabled:Z

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;

.field private position:I

.field private screen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mChecked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mEnabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mChecked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mChecked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mClassName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private checkForIconDpi()V
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mIconDpi:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->getInstance()Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->getInstance()Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->setIconDpi()I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mChecked:Z

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mEnabled:Z

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->position:I

    return v0
.end method

.method public getScreen()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->screen:I

    return v0
.end method

.method public setAppIcon(Landroid/content/res/Resources;I)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->checkForIconDpi()V

    :try_start_0
    sget v2, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->printStackTrace()V

    const/16 v2, 0xf0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mChecked:Z

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mEnabled:Z

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setListAppIcon(Landroid/content/res/Resources;I)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->checkForIconDpi()V

    :try_start_0
    sget v2, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppController;->mListIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->printStackTrace()V

    const/16 v2, 0xf0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->position:I

    return-void
.end method

.method public setScreen(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->screen:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mAppName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method
