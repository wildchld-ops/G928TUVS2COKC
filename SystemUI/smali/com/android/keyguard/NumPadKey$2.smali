.class Lcom/android/keyguard/NumPadKey$2;
.super Landroid/database/ContentObserver;
.source "NumPadKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/NumPadKey;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/NumPadKey;


# direct methods
.method constructor <init>(Lcom/android/keyguard/NumPadKey;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/NumPadKey$2;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "white_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey$2;->this$0:Lcom/android/keyguard/NumPadKey;

    iget-object v3, p0, Lcom/android/keyguard/NumPadKey$2;->this$0:Lcom/android/keyguard/NumPadKey;

    # getter for: Lcom/android/keyguard/NumPadKey;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/NumPadKey;->access$300(Lcom/android/keyguard/NumPadKey;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_1
    iput-boolean v0, v2, Lcom/android/keyguard/NumPadKey;->mUseBlackTextOnWhiteWallpaper:Z

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$2;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$2;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->updateBlackTextOnWhiteWallpaper()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
