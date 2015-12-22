.class Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;
.super Ljava/lang/Object;
.source "ActivityResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingAddArguments"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

.field pendingWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field requestCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/ActivityResultHandler$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;-><init>()V

    return-void
.end method
