.class Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$2;
.super Ljava/lang/Object;
.source "WallpaperWidgetContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->createWidgetItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$2;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "WallpaperWidgetContainer"

    const-string v1, "nextClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$2;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    # getter for: Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$100(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$2;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setWidgetEnabled(Z)V

    return-void
.end method
