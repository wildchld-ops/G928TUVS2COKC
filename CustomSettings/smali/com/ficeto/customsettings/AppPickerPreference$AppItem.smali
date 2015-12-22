.class Lcom/ficeto/customsettings/AppPickerPreference$AppItem;
.super Ljava/lang/Object;
.source "AppPickerPreference.java"

# interfaces
.implements Lcom/ficeto/adapters/IIconListAdapterItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ficeto/customsettings/AppPickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppItem"
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mAppName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/ficeto/customsettings/AppPickerPreference;


# direct methods
.method public constructor <init>(Lcom/ficeto/customsettings/AppPickerPreference;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mAppName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mClassName:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconLeft()Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v2, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mAppIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->getValue()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->sAppIconCache:Landroid/util/LruCache;
    invoke-static {}, Lcom/ficeto/customsettings/AppPickerPreference;->access$0()Landroid/util/LruCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mAppIcon:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mAppIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/ficeto/customsettings/AppPickerPreference;->access$1(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mAppIconSizePx:I
    invoke-static {v2}, Lcom/ficeto/customsettings/AppPickerPreference;->access$2(Lcom/ficeto/customsettings/AppPickerPreference;)I

    move-result v2

    iget-object v3, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mAppIconSizePx:I
    invoke-static {v3}, Lcom/ficeto/customsettings/AppPickerPreference;->access$2(Lcom/ficeto/customsettings/AppPickerPreference;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/ficeto/customsettings/AppPickerPreference;->access$3(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mAppIcon:Landroid/graphics/drawable/BitmapDrawable;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->sAppIconCache:Landroid/util/LruCache;
    invoke-static {}, Lcom/ficeto/customsettings/AppPickerPreference;->access$0()Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mAppIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mAppIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method public getIconRight()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mClassName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "%1$s%2$s%3$s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "##"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;->mClassName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
