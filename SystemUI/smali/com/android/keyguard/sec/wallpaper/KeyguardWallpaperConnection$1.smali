.class Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection$1;
.super Landroid/os/Handler;
.source "KeyguardWallpaperConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection$1;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection$1;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsConnecting:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection$1;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->connect()Z

    return-void
.end method
