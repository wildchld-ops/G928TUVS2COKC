.class Lcom/sec/android/app/launcher/data/FolderItem$1;
.super Lcom/sec/android/app/launcher/data/HomeItem;
.source "FolderItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/FolderItem;->getAddIcon()Lcom/sec/android/app/launcher/data/HomeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/data/FolderItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/FolderItem$1;->this$0:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/HomeItem;-><init>()V

    return-void
.end method


# virtual methods
.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setLongClickable(Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setRecyclable(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const v2, 0x7f0d0042

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/HomeItemView;->setContentDescription(Ljava/lang/String;)V

    return-object v0
.end method

.method public populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/HomeItem;->populateView(Lcom/sec/daliviews/views/NativeViewBase;)V

    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/utils/Utils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/HomeItemView;->setIconBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
